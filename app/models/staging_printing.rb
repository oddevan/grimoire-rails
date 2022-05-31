class StagingPrinting < ApplicationRecord
  before_validation :generate_signature

  private

  def generate_signature
    return unless signature_data

    self.signature = Digest::MD5.hexdigest signature_data
  end
end
