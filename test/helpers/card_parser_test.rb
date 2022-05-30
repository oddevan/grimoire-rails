require "test_helper"
require "json"

class CardParserTest < ActiveSupport::TestCase
	def venusaur_snivey_gx
		@venusaur_snivey_gx ||= JSON.parse '{"productId":200350,"name":"Venusaur & Snivy GX","cleanName":"Venusaur and Snivy GX","imageUrl":"https://tcgplayer-cdn.tcgplayer.com/product/200350_200w.jpg","categoryId":3,"groupId":2534,"url":"https://www.tcgplayer.com/product/200350/pokemon-sm-cosmic-eclipse-venusaur-and-snivy-gx","modifiedOn":"2022-01-09T16:28:01.713","skus":[{"skuId":4230084,"productId":200350,"languageId":1,"printingId":11,"conditionId":1},{"skuId":4230085,"productId":200350,"languageId":1,"printingId":11,"conditionId":2},{"skuId":4230086,"productId":200350,"languageId":1,"printingId":11,"conditionId":3},{"skuId":4230087,"productId":200350,"languageId":1,"printingId":11,"conditionId":4},{"skuId":4230088,"productId":200350,"languageId":1,"printingId":11,"conditionId":5}],"imageCount":1,"presaleInfo":{"isPresale":false,"releasedOn":null,"note":null},"extendedData":[{"name":"Number","displayName":"Card Number","value":"1/236"},{"name":"Rarity","displayName":"Rarity","value":"Ultra Rare"},{"name":"Card Type","displayName":"Card Type","value":"Grass"},{"name":"HP","displayName":"HP","value":"270"},{"name":"Stage","displayName":"Stage","value":"Basic"},{"name":"CardText","displayName":"Card Text","value":"<strong>Ability — Shining Vine</strong>\r\n<br>Once during your turn, if this Pokemon is your Active Pokemon, when you attach a Grass Energy card from your hand to it, you may switch 1 of your opponent\'s Benched Pokemon with their Active Pokemon."},{"name":"Attack 1","displayName":"Attack 1","value":"[3G] Forest Dump (160)"},{"name":"Attack 2","displayName":"Attack 2","value":"<span style=\"color:Teal\"><strong>[3+] Solar Planet GX</strong>\r\n<br>This attack does 50 damage to each of your opponent\'s Pokemon. IF this Pokemon has at least 2 extra Energy attached to it in addition to this attack\'s cost, heal all damage from all of your Pokemon. <em>(Don\'t apply Weakness and Resistance for Benched Pokemon) (You can\'t use more than 1 GX attack in a game.)</em></span>"},{"name":"Weakness","displayName":"Weakness","value":"Rx2"},{"name":"Resistance","displayName":"Resistance","value":"None"},{"name":"RetreatCost","displayName":"Retreat Cost","value":"3"}]}'
	end

	def venusaur_snivey_gx_full_art
		@venusaur_snivey_gx_full_art ||= JSON.parse '{"productId":201330,"name":"Venusaur & Snivy GX (Full Art)","cleanName":"Venusaur and Snivy GX Full Art","imageUrl":"https://tcgplayer-cdn.tcgplayer.com/product/201330_200w.jpg","categoryId":3,"groupId":2534,"url":"https://www.tcgplayer.com/product/201330/pokemon-sm-cosmic-eclipse-venusaur-and-snivy-gx-full-art","modifiedOn":"2021-12-01T15:02:22.163","skus":[{"skuId":4257385,"productId":201330,"languageId":1,"printingId":11,"conditionId":1},{"skuId":4257386,"productId":201330,"languageId":1,"printingId":11,"conditionId":2},{"skuId":4257387,"productId":201330,"languageId":1,"printingId":11,"conditionId":3},{"skuId":4257388,"productId":201330,"languageId":1,"printingId":11,"conditionId":4},{"skuId":4257389,"productId":201330,"languageId":1,"printingId":11,"conditionId":5}],"imageCount":1,"presaleInfo":{"isPresale":false,"releasedOn":null,"note":null},"extendedData":[{"name":"Number","displayName":"Card Number","value":"210/236"},{"name":"Rarity","displayName":"Rarity","value":"Ultra Rare"},{"name":"Card Type","displayName":"Card Type","value":"Grass"},{"name":"HP","displayName":"HP","value":"270"},{"name":"Stage","displayName":"Stage","value":"Basic"},{"name":"CardText","displayName":"Card Text","value":"<strong>Ability — Shining Vine</strong>\r\n<br>Once during your turn, if this Pokemon is your Active Pokemon, when you attach a Grass Energy card from your hand to it, you may switch 1 of your opponent\'s Benched Pokemon with their Active Pokemon."},{"name":"Attack 1","displayName":"Attack 1","value":"[3G] Forest Dump (160)"},{"name":"Attack 2","displayName":"Attack 2","value":"<span style=\"color:Teal\"><strong>[3+] Solar Planet GX</strong>\r\n<br>This attack does 50 damage to each of your opponent\'s Pokemon. IF this Pokemon has at least 2 extra Energy attached to it in addition to this attack\'s cost, heal all damage from all of your Pokemon. <em>(Don\'t apply Weakness and Resistance for Benched Pokemon) (You can\'t use more than 1 GX attack in a game.)</em></span>"},{"name":"Weakness","displayName":"Weakness","value":"Rx2"},{"name":"Resistance","displayName":"Resistance","value":"None"},{"name":"RetreatCost","displayName":"Retreat Cost","value":"3"}]}'
	end

	def will
		@will ||= JSON.parse '{"productId":201328,"name":"Will","cleanName":"Will","imageUrl":"https://tcgplayer-cdn.tcgplayer.com/product/201328_200w.jpg","categoryId":3,"groupId":2534,"url":"https://www.tcgplayer.com/product/201328/pokemon-sm-cosmic-eclipse-will","modifiedOn":"2019-10-30T16:25:22.14","skus":[{"skuId":4257365,"productId":201328,"languageId":1,"printingId":10,"conditionId":1},{"skuId":4257366,"productId":201328,"languageId":1,"printingId":10,"conditionId":2},{"skuId":4257367,"productId":201328,"languageId":1,"printingId":10,"conditionId":3},{"skuId":4257368,"productId":201328,"languageId":1,"printingId":10,"conditionId":4},{"skuId":4257369,"productId":201328,"languageId":1,"printingId":10,"conditionId":5},{"skuId":4257370,"productId":201328,"languageId":1,"printingId":77,"conditionId":1},{"skuId":4257371,"productId":201328,"languageId":1,"printingId":77,"conditionId":2},{"skuId":4257372,"productId":201328,"languageId":1,"printingId":77,"conditionId":3},{"skuId":4257373,"productId":201328,"languageId":1,"printingId":77,"conditionId":4},{"skuId":4257374,"productId":201328,"languageId":1,"printingId":77,"conditionId":5}],"imageCount":1,"presaleInfo":{"isPresale":false,"releasedOn":"2019-11-01T00:00:00","note":null},"extendedData":[{"name":"Number","displayName":"Card Number","value":"208/236"},{"name":"Rarity","displayName":"Rarity","value":"Uncommon"},{"name":"Card Type","displayName":"Card Type","value":"Supporter"},{"name":"CardText","displayName":"Card Text","value":"After playing this card, the next time you flip any coins for an attack, Ability, or Trainer card during this turn, you may choose to make the result heads or tails."}]}'
	end

	test "GX card parses successfully" do
		parser = Tcgplayer::CardParser.new(venusaur_snivey_gx)
		parsed = parser.hash_for_model(set_key: "cme")

		assert_equal "pkm-cme-1", parsed[:grimoire_id]
		assert_equal "Venusaur & Snivy GX", parsed[:name]
    assert_equal 4230084, parsed[:tcgplayer_sku]
    assert_equal '{"name":"Venusaur & Snivy GX","type":"Grass","data":[{"cost":"3G","name":"Forest Dump ","base_damage":"160"},{"cost":"3","name":"Solar Planet GX\r","base_damage":0}]}', parsed[:signature_data]
    assert_equal '001', parsed[:sequence]
    assert_equal 'https://tcgplayer-cdn.tcgplayer.com/product/200350_200w.jpg', parsed[:image_url]
    assert_equal 200350, parsed[:tcgplayer_product]

		assert_not parser.has_alt?
	end

	test "Full art card parses successfully" do
		parser = Tcgplayer::CardParser.new(venusaur_snivey_gx_full_art)
		parsed = parser.hash_for_model(set_key: "cme")

		assert_equal "pkm-cme-210", parsed[:grimoire_id]
		assert_equal "Venusaur & Snivy GX (Full Art)", parsed[:name]
    assert_equal 4257385, parsed[:tcgplayer_sku]
    assert_equal '{"name":"Venusaur & Snivy GX","type":"Grass","data":[{"cost":"3G","name":"Forest Dump ","base_damage":"160"},{"cost":"3","name":"Solar Planet GX\r","base_damage":0}]}', parsed[:signature_data]
    assert_equal '210', parsed[:sequence]
    assert_equal 'https://tcgplayer-cdn.tcgplayer.com/product/201330_200w.jpg', parsed[:image_url]
    assert_equal 201330, parsed[:tcgplayer_product]

		assert_not parser.has_alt?
	end

	test "Uncommon trainer with alt sku parses successfully" do
		parser = Tcgplayer::CardParser.new(will)
		parsed = parser.hash_for_model(set_key: "cme")

		assert_equal "pkm-cme-208", parsed[:grimoire_id]
		assert_equal "Will", parsed[:name]
    assert_equal 4257365, parsed[:tcgplayer_sku]
    assert_equal '{"name":"Will","type":"Supporter","data":"After playing this card, the next time you flip any coins for an attack, Ability, or Trainer card during this turn, you may choose to make the result heads or tails."}', parsed[:signature_data]
    assert_equal '208', parsed[:sequence]
    assert_equal 'https://tcgplayer-cdn.tcgplayer.com/product/201328_200w.jpg', parsed[:image_url]
    assert_equal 201328, parsed[:tcgplayer_product]

		assert parser.has_alt?

		alt_parsed = parser.alt_hash_for_model(set_key: "cme")

		assert_equal "pkm-cme-208-r", alt_parsed[:grimoire_id]
		assert_equal "Will (Reverse Holo)", alt_parsed[:name]
    assert_equal 4257370, alt_parsed[:tcgplayer_sku]
    assert_equal '{"name":"Will","type":"Supporter","data":"After playing this card, the next time you flip any coins for an attack, Ability, or Trainer card during this turn, you may choose to make the result heads or tails."}', alt_parsed[:signature_data]
    assert_equal '208r', alt_parsed[:sequence]
    assert_equal 'https://tcgplayer-cdn.tcgplayer.com/product/201328_200w.jpg', alt_parsed[:image_url]
    assert_equal 201328, alt_parsed[:tcgplayer_product]
	end
end
