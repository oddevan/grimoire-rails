class CardSet < ApplicationRecord
	validates :name, presence: true
	validates :slug, presence: true, format: { with: /\A[0-9a-z\-]+\z/ }
end
