class Transient < ApplicationRecord
	validates :key, presence: true, uniqueness: true
	validates :expiration, presence: true, comparison: { greater_than: Time.now }

	def self.get(key)
		result = self.find_by_key(key)
		return nil if result.nil?
		return result.expiration < Time.now ? nil : result.value
	end

	def self.set(key, value, expiration)
		return false unless key && expiration

		entry = self.find_by_key(key) || self.new(key: key)
		entry.value = value
		entry.expiration = expiration
		entry.save
	end
end
