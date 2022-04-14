class Printing < ApplicationRecord
  belongs_to :card_set

  validates :name, presence: true
  validates :grimoire_id, presence: true, format: { with: /\A[a-z]{3}-[a-z0-9]{3}-[0-9a-z\-]+\z/ }, uniqueness: true
  validates :tcgplayer_sku, numericality: { only_integer: true }, allow_blank: true
  validates :card_set, presence: true
  validates :signature_data, presence: true
  validates :signature, presence: true

  before_validation :generate_signature

  private

  def generate_signature
    return unless signature_data

    self.signature = Digest::MD5.hexdigest signature_data
  end
end
