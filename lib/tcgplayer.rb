require 'rest-client'
require 'json'

class TCGplayer
	def initialize
		@access_key = get_access_key
	end

	def sets
		tcgp_request 'catalog/categories/3/groups?limit=200'
	end

	def set_info(set_id)
		info = tcgp_request "catalog/groups/#{set_id}"
		return info[0]
	end

	def cards_from_set( set_id, quantity: 200, offset: 0 ) {
		tcgp_request 'catalog/products?categoryId=3&productTypes=Cards&' +
			"groupId=#{set_id}&getExtendedFields=true&includeSkus=true&" +
			"offset=#{offset}&limit=#{quantity}"
	}

	def prices_for_skus( skus )
		tcgp_request 'pricing/sku/' + skus.join(',')
	end

	private

	def get_access_key
		Transient.get :tcgp_access_key || authenticate
	end
	
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
		Transient.set :tcgp_access_key, token_info.access_token, Time.now + token_info.expires_in

		return token_info.access_token
	end

	def tcgp_request(endpoint)
		response = RestClient.get(
			'http://api.tcgplayer.com/v1.39.0/',
			{
				'User-Agent' => ENV['TCGP_APP_NAME'],
				'Authorization' => "Bearer #{@access_key}",
				'Accept'        => 'application/json',
				'Content-Type'  => 'application/json',
			}
		)

		unless [200, 201].include? response.code
			raise "Error from TCGplayer: #{response.body}"
		end

		response_body = JSON.parse response.body
		return response_body.results
	end
end