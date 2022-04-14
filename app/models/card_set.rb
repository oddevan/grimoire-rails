class CardSet < ApplicationRecord
	has_many :printings
	
	validates :name, presence: true
	validates :slug, presence: true, format: { with: /\A[0-9a-z\-]+\z/ }, uniqueness: true

	before_validation :generate_defaults

	private
		
	def generate_defaults
		self.release_date ||= Time.now

		return unless name && !slug

		self.slug = name.downcase.gsub(/[^0-9a-z\-]+/, '-')
	end
end
