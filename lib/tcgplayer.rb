require 'rest-client'
require 'json'

class TCGplayer
	private
	
	def authenticate
		unless ENV['TCGP_PUBLIC_ID'] && ENV['TCGP_PRIVATE_ID']
			raise 'TCGplayer keys are not set'
		end
		
		response = RestClient.post(
			'https://api.tcgplayer.com/token',
			{
				'grant_type' => 'client_credentials',
				'client_id' => ENV['TCGP_PUBLIC_ID'],
				'client_secret' => ENV['TCGP_PRIVATE_ID']
			}
			{
				'User-Agent' => ENV['TCGP_APP_NAME']
			}
		)

		unless [200, 201].include? response.code
			raise "Error from TCGplayer: #{response.body}"
		end

		token_info = JSON.parse response.body
=begin
		set_transient( 'tcgp_access_key', $token->access_token, $token->expires_in );

		return $token->access_token;
=end
	end
end