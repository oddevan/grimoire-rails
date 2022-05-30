require "test_helper"
require "json"

class CardParserTest < ActiveSupport::TestCase
	def venusaur_snivey_gx
		@venusaur_snivey_gx ||= JSON.parse '{"productId":200350,"name":"Venusaur & Snivy GX","cleanName":"Venusaur and Snivy GX","imageUrl":"https://tcgplayer-cdn.tcgplayer.com/product/200350_200w.jpg","categoryId":3,"groupId":2534,"url":"https://www.tcgplayer.com/product/200350/pokemon-sm-cosmic-eclipse-venusaur-and-snivy-gx","modifiedOn":"2022-01-09T16:28:01.713","skus":[{"skuId":4230084,"productId":200350,"languageId":1,"printingId":11,"conditionId":1},{"skuId":4230085,"productId":200350,"languageId":1,"printingId":11,"conditionId":2},{"skuId":4230086,"productId":200350,"languageId":1,"printingId":11,"conditionId":3},{"skuId":4230087,"productId":200350,"languageId":1,"printingId":11,"conditionId":4},{"skuId":4230088,"productId":200350,"languageId":1,"printingId":11,"conditionId":5}],"imageCount":1,"presaleInfo":{"isPresale":false,"releasedOn":null,"note":null},"extendedData":[{"name":"Number","displayName":"Card Number","value":"1/236"},{"name":"Rarity","displayName":"Rarity","value":"Ultra Rare"},{"name":"Card Type","displayName":"Card Type","value":"Grass"},{"name":"HP","displayName":"HP","value":"270"},{"name":"Stage","displayName":"Stage","value":"Basic"},{"name":"CardText","displayName":"Card Text","value":"<strong>Ability — Shining Vine</strong>\r\n<br>Once during your turn, if this Pokemon is your Active Pokemon, when you attach a Grass Energy card from your hand to it, you may switch 1 of your opponent\'s Benched Pokemon with their Active Pokemon."},{"name":"Attack 1","displayName":"Attack 1","value":"[3G] Forest Dump (160)"},{"name":"Attack 2","displayName":"Attack 2","value":"<span style=\"color:Teal\"><strong>[3+] Solar Planet GX</strong>\r\n<br>This attack does 50 damage to each of your opponent\'s Pokemon. IF this Pokemon has at least 2 extra Energy attached to it in addition to this attack\'s cost, heal all damage from all of your Pokemon. <em>(Don\'t apply Weakness and Resistance for Benched Pokemon) (You can\'t use more than 1 GX attack in a game.)</em></span>"},{"name":"Weakness","displayName":"Weakness","value":"Rx2"},{"name":"Resistance","displayName":"Resistance","value":"None"},{"name":"RetreatCost","displayName":"Retreat Cost","value":"3"}]}'
	end

	def venusaur_snivey_gx_full_art
		@venusaur_snivey_gx_full_art ||= JSON.parse '{"productId":201330,"name":"Venusaur & Snivy GX (Full Art)","cleanName":"Venusaur and Snivy GX Full Art","imageUrl":"https://tcgplayer-cdn.tcgplayer.com/product/201330_200w.jpg","categoryId":3,"groupId":2534,"url":"https://www.tcgplayer.com/product/201330/pokemon-sm-cosmic-eclipse-venusaur-and-snivy-gx-full-art","modifiedOn":"2021-12-01T15:02:22.163","skus":[{"skuId":4257385,"productId":201330,"languageId":1,"printingId":11,"conditionId":1},{"skuId":4257386,"productId":201330,"languageId":1,"printingId":11,"conditionId":2},{"skuId":4257387,"productId":201330,"languageId":1,"printingId":11,"conditionId":3},{"skuId":4257388,"productId":201330,"languageId":1,"printingId":11,"conditionId":4},{"skuId":4257389,"productId":201330,"languageId":1,"printingId":11,"conditionId":5}],"imageCount":1,"presaleInfo":{"isPresale":false,"releasedOn":null,"note":null},"extendedData":[{"name":"Number","displayName":"Card Number","value":"210/236"},{"name":"Rarity","displayName":"Rarity","value":"Ultra Rare"},{"name":"Card Type","displayName":"Card Type","value":"Grass"},{"name":"HP","displayName":"HP","value":"270"},{"name":"Stage","displayName":"Stage","value":"Basic"},{"name":"CardText","displayName":"Card Text","value":"<strong>Ability — Shining Vine</strong>\r\n<br>Once during your turn, if this Pokemon is your Active Pokemon, when you attach a Grass Energy card from your hand to it, you may switch 1 of your opponent\'s Benched Pokemon with their Active Pokemon."},{"name":"Attack 1","displayName":"Attack 1","value":"[3G] Forest Dump (160)"},{"name":"Attack 2","displayName":"Attack 2","value":"<span style=\"color:Teal\"><strong>[3+] Solar Planet GX</strong>\r\n<br>This attack does 50 damage to each of your opponent\'s Pokemon. IF this Pokemon has at least 2 extra Energy attached to it in addition to this attack\'s cost, heal all damage from all of your Pokemon. <em>(Don\'t apply Weakness and Resistance for Benched Pokemon) (You can\'t use more than 1 GX attack in a game.)</em></span>"},{"name":"Weakness","displayName":"Weakness","value":"Rx2"},{"name":"Resistance","displayName":"Resistance","value":"None"},{"name":"RetreatCost","displayName":"Retreat Cost","value":"3"}]}'
	end

	def trainer_will
		@will ||= JSON.parse '{"productId":201328,"name":"Will","cleanName":"Will","imageUrl":"https://tcgplayer-cdn.tcgplayer.com/product/201328_200w.jpg","categoryId":3,"groupId":2534,"url":"https://www.tcgplayer.com/product/201328/pokemon-sm-cosmic-eclipse-will","modifiedOn":"2019-10-30T16:25:22.14","skus":[{"skuId":4257365,"productId":201328,"languageId":1,"printingId":10,"conditionId":1},{"skuId":4257366,"productId":201328,"languageId":1,"printingId":10,"conditionId":2},{"skuId":4257367,"productId":201328,"languageId":1,"printingId":10,"conditionId":3},{"skuId":4257368,"productId":201328,"languageId":1,"printingId":10,"conditionId":4},{"skuId":4257369,"productId":201328,"languageId":1,"printingId":10,"conditionId":5},{"skuId":4257370,"productId":201328,"languageId":1,"printingId":77,"conditionId":1},{"skuId":4257371,"productId":201328,"languageId":1,"printingId":77,"conditionId":2},{"skuId":4257372,"productId":201328,"languageId":1,"printingId":77,"conditionId":3},{"skuId":4257373,"productId":201328,"languageId":1,"printingId":77,"conditionId":4},{"skuId":4257374,"productId":201328,"languageId":1,"printingId":77,"conditionId":5}],"imageCount":1,"presaleInfo":{"isPresale":false,"releasedOn":"2019-11-01T00:00:00","note":null},"extendedData":[{"name":"Number","displayName":"Card Number","value":"208/236"},{"name":"Rarity","displayName":"Rarity","value":"Uncommon"},{"name":"Card Type","displayName":"Card Type","value":"Supporter"},{"name":"CardText","displayName":"Card Text","value":"After playing this card, the next time you flip any coins for an attack, Ability, or Trainer card during this turn, you may choose to make the result heads or tails."}]}'
	end

	def piplup
		@piplup ||= JSON.parse '{"productId":201230,"name":"Piplup","cleanName":"Piplup","imageUrl":"https://tcgplayer-cdn.tcgplayer.com/product/201230_200w.jpg","categoryId":3,"groupId":2534,"url":"https://www.tcgplayer.com/product/201230/pokemon-sm-cosmic-eclipse-piplup","modifiedOn":"2019-10-30T15:37:52.547","skus":[{"skuId":4256435,"productId":201230,"languageId":1,"printingId":10,"conditionId":1},{"skuId":4256436,"productId":201230,"languageId":1,"printingId":10,"conditionId":2},{"skuId":4256437,"productId":201230,"languageId":1,"printingId":10,"conditionId":3},{"skuId":4256438,"productId":201230,"languageId":1,"printingId":10,"conditionId":4},{"skuId":4256439,"productId":201230,"languageId":1,"printingId":10,"conditionId":5},{"skuId":4256440,"productId":201230,"languageId":1,"printingId":77,"conditionId":1},{"skuId":4256441,"productId":201230,"languageId":1,"printingId":77,"conditionId":2},{"skuId":4256442,"productId":201230,"languageId":1,"printingId":77,"conditionId":3},{"skuId":4256443,"productId":201230,"languageId":1,"printingId":77,"conditionId":4},{"skuId":4256444,"productId":201230,"languageId":1,"printingId":77,"conditionId":5}],"imageCount":1,"presaleInfo":{"isPresale":false,"releasedOn":"2019-11-01T00:00:00","note":null},"extendedData":[{"name":"Number","displayName":"Card Number","value":"54/236"},{"name":"Rarity","displayName":"Rarity","value":"Common"},{"name":"Card Type","displayName":"Card Type","value":"Water"},{"name":"HP","displayName":"HP","value":"60"},{"name":"Stage","displayName":"Stage","value":"Basic"},{"name":"Attack 1","displayName":"Attack 1","value":"[WWW] Bubble Hold (80)\r\n<br>If the Defending Pokémon is a Basic Pokémon, it can\'t attack during your opponent\'s next turn."},{"name":"Weakness","displayName":"Weakness","value":"Lx2"},{"name":"Resistance","displayName":"Resistance","value":"None"},{"name":"RetreatCost","displayName":"Retreat Cost","value":"1"}]}'
	end

	def prinplup
		@prinplup ||= JSON.parse '{"productId":201231,"name":"Prinplup","cleanName":"Prinplup","imageUrl":"https://tcgplayer-cdn.tcgplayer.com/product/201231_200w.jpg","categoryId":3,"groupId":2534,"url":"https://www.tcgplayer.com/product/201231/pokemon-sm-cosmic-eclipse-prinplup","modifiedOn":"2019-10-30T15:41:01.667","skus":[{"skuId":4256445,"productId":201231,"languageId":1,"printingId":10,"conditionId":1},{"skuId":4256446,"productId":201231,"languageId":1,"printingId":10,"conditionId":2},{"skuId":4256447,"productId":201231,"languageId":1,"printingId":10,"conditionId":3},{"skuId":4256448,"productId":201231,"languageId":1,"printingId":10,"conditionId":4},{"skuId":4256449,"productId":201231,"languageId":1,"printingId":10,"conditionId":5},{"skuId":4256450,"productId":201231,"languageId":1,"printingId":77,"conditionId":1},{"skuId":4256451,"productId":201231,"languageId":1,"printingId":77,"conditionId":2},{"skuId":4256452,"productId":201231,"languageId":1,"printingId":77,"conditionId":3},{"skuId":4256453,"productId":201231,"languageId":1,"printingId":77,"conditionId":4},{"skuId":4256454,"productId":201231,"languageId":1,"printingId":77,"conditionId":5}],"imageCount":1,"presaleInfo":{"isPresale":false,"releasedOn":"2019-11-01T00:00:00","note":null},"extendedData":[{"name":"Number","displayName":"Card Number","value":"55/236"},{"name":"Rarity","displayName":"Rarity","value":"Uncommon"},{"name":"Card Type","displayName":"Card Type","value":"Water"},{"name":"HP","displayName":"HP","value":"80"},{"name":"Stage","displayName":"Stage","value":"Stage 1"},{"name":"Attack 1","displayName":"Attack 1","value":"[W] Water Drip (20)"},{"name":"Attack 2","displayName":"Attack 2","value":"[WWW] Direct Dive\r\n<br>Discard all Energy from this Pokémon. This attack does 100 damage to 1 of your opponent\'s Benched Pokémon. <em>(Don\'t apply Weakness and Resistance for Benched Pokémon.)</em>"},{"name":"Weakness","displayName":"Weakness","value":"Lx2"},{"name":"Resistance","displayName":"Resistance","value":"None"},{"name":"RetreatCost","displayName":"Retreat Cost","value":"2"}]}'
	end

	def prerelease_charizard
		@prerelease_charizard ||= JSON.parse '{"productId":183966,"name":"Charizard - SM158","cleanName":"Charizard SM158","imageUrl":"https://tcgplayer-cdn.tcgplayer.com/product/183966_200w.jpg","categoryId":3,"groupId":1861,"url":"https://www.tcgplayer.com/product/183966/pokemon-sm-promos-charizard-sm158","modifiedOn":"2019-01-22T18:11:01.03","skus":[{"skuId":3964034,"productId":183966,"languageId":1,"printingId":11,"conditionId":1},{"skuId":3964035,"productId":183966,"languageId":1,"printingId":11,"conditionId":2},{"skuId":3964036,"productId":183966,"languageId":1,"printingId":11,"conditionId":3},{"skuId":3964037,"productId":183966,"languageId":1,"printingId":11,"conditionId":4},{"skuId":3964038,"productId":183966,"languageId":1,"printingId":11,"conditionId":5}],"imageCount":1,"presaleInfo":{"isPresale":false,"releasedOn":"2019-02-01T00:00:00","note":null},"extendedData":[{"name":"Number","displayName":"Card Number","value":"SM158"},{"name":"Rarity","displayName":"Rarity","value":"Promo"},{"name":"Card Type","displayName":"Card Type","value":"Fire"},{"name":"HP","displayName":"HP","value":"150"},{"name":"Stage","displayName":"Stage","value":"Stage 2"},{"name":"CardText","displayName":"Card Text","value":"<strong>Ability — Roaring Resolve</strong>\r\n<br>Once during your turn <em>(before your attack)</em>, you may put 2 damage counters on this Pokemon. If you do, search your deck for up to 2 Fire Energy cards and attach them to this Pokemon. Then, shuffle your deck."},{"name":"Attack 1","displayName":"Attack 1","value":"[RR] Continuous Blaze Ball (30+)\r\n<br>Discard all Fire Energy from this Pokemon. This attack does 50 more damage for each card you discarded in this way."},{"name":"Weakness","displayName":"Weakness","value":"Wx2"},{"name":"Resistance","displayName":"Resistance","value":"None"},{"name":"RetreatCost","displayName":"Retreat Cost","value":"2"}]}'
	end

	def staff_charizard
		@staff_charizard ||= JSON.parse '{"productId":183967,"name":"Charizard - SM158 [Staff]","cleanName":"Charizard SM158 Staff","imageUrl":"https://tcgplayer-cdn.tcgplayer.com/product/183967_200w.jpg","categoryId":3,"groupId":1861,"url":"https://www.tcgplayer.com/product/183967/pokemon-sm-promos-charizard-sm158-staff","modifiedOn":"2019-01-29T19:27:21.863","skus":[{"skuId":3964039,"productId":183967,"languageId":1,"printingId":11,"conditionId":1},{"skuId":3964040,"productId":183967,"languageId":1,"printingId":11,"conditionId":2},{"skuId":3964041,"productId":183967,"languageId":1,"printingId":11,"conditionId":3},{"skuId":3964042,"productId":183967,"languageId":1,"printingId":11,"conditionId":4},{"skuId":3964043,"productId":183967,"languageId":1,"printingId":11,"conditionId":5}],"imageCount":1,"presaleInfo":{"isPresale":false,"releasedOn":"2019-02-01T00:00:00","note":null},"extendedData":[{"name":"Number","displayName":"Card Number","value":"SM158"},{"name":"Rarity","displayName":"Rarity","value":"Promo"},{"name":"Card Type","displayName":"Card Type","value":"Fire"},{"name":"HP","displayName":"HP","value":"150"},{"name":"Stage","displayName":"Stage","value":"Stage 2"},{"name":"CardText","displayName":"Card Text","value":"<strong>Ability — Roaring Resolve</strong>\r\n<br>Once during your turn <em>(before your attack)</em>, you may put 2 damage counters on this Pokemon. If you do, search your deck for up to 2 Fire Energy cards and attach them to this Pokemon. Then, shuffle your deck."},{"name":"Attack 1","displayName":"Attack 1","value":"[RR] Continuous Blaze Ball (30+)\r\n<br>Discard all Fire Energy from this Pokemon. This attack does 50 more damage for each card you discarded in this way."},{"name":"Weakness","displayName":"Weakness","value":"Wx2"},{"name":"Resistance","displayName":"Resistance","value":"None"},{"name":"RetreatCost","displayName":"Retreat Cost","value":"2"}]}'
	end

	def promo_scorbunny
		@promo_scorbunny ||= JSON.parse '{"productId":200301,"name":"Scorbunny - SWSH002","cleanName":"Scorbunny SWSH002","imageUrl":"https://tcgplayer-cdn.tcgplayer.com/product/200301_200w.jpg","categoryId":3,"groupId":2545,"url":"https://www.tcgplayer.com/product/200301/pokemon-swsh-sword-and-shield-promo-cards-scorbunny-swsh002","modifiedOn":"2021-10-05T13:11:59.5","skus":[{"skuId":4229619,"productId":200301,"languageId":1,"printingId":11,"conditionId":1},{"skuId":4229620,"productId":200301,"languageId":1,"printingId":11,"conditionId":2},{"skuId":4229621,"productId":200301,"languageId":1,"printingId":11,"conditionId":3},{"skuId":4229622,"productId":200301,"languageId":1,"printingId":11,"conditionId":4},{"skuId":4229623,"productId":200301,"languageId":1,"printingId":11,"conditionId":5}],"imageCount":1,"presaleInfo":{"isPresale":false,"releasedOn":null,"note":null},"extendedData":[{"name":"Number","displayName":"Card Number","value":"SWSH002"},{"name":"Rarity","displayName":"Rarity","value":"Promo"},{"name":"Card Type","displayName":"Card Type","value":"Fire"},{"name":"HP","displayName":"HP","value":"60"},{"name":"Stage","displayName":"Stage","value":"Basic"},{"name":"Attack 1","displayName":"Attack 1","value":"[R] Super Singe (10)\r\n<br>Flip a coin. If heads, your opponent\'s Active Pokemon is now Burned."},{"name":"Weakness","displayName":"Weakness","value":"Wx2"},{"name":"Resistance","displayName":"Resistance","value":"None"},{"name":"RetreatCost","displayName":"Retreat Cost","value":"1"}]}'
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
		parser = Tcgplayer::CardParser.new(trainer_will)
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

	test "Uncommon evolution pokemon with alt sku parses successfully" do
		parser = Tcgplayer::CardParser.new(prinplup)
		parsed = parser.hash_for_model(set_key: "cme")

		assert_equal "pkm-cme-55", parsed[:grimoire_id]
		assert_equal "Prinplup", parsed[:name]
    assert_equal 4256445, parsed[:tcgplayer_sku]
    assert_equal '{"name":"Prinplup","type":"Water","data":[{"cost":"W","name":"Water Drip ","base_damage":"20"},{"cost":"WWW","name":"Direct Dive\r","base_damage":0}]}', parsed[:signature_data]
    assert_equal '055', parsed[:sequence]
    assert_equal 'https://tcgplayer-cdn.tcgplayer.com/product/201231_200w.jpg', parsed[:image_url]
    assert_equal 201231, parsed[:tcgplayer_product]

		assert parser.has_alt?

		alt_parsed = parser.alt_hash_for_model(set_key: "cme")

		assert_equal "pkm-cme-55-r", alt_parsed[:grimoire_id]
		assert_equal "Prinplup (Reverse Holo)", alt_parsed[:name]
    assert_equal 4256450, alt_parsed[:tcgplayer_sku]
    assert_equal '{"name":"Prinplup","type":"Water","data":[{"cost":"W","name":"Water Drip ","base_damage":"20"},{"cost":"WWW","name":"Direct Dive\r","base_damage":0}]}', alt_parsed[:signature_data]
    assert_equal '055r', alt_parsed[:sequence]
    assert_equal 'https://tcgplayer-cdn.tcgplayer.com/product/201231_200w.jpg', alt_parsed[:image_url]
    assert_equal 201231, alt_parsed[:tcgplayer_product]
	end

	test "Common pokemon with alt sku parses successfully" do
		parser = Tcgplayer::CardParser.new(piplup)
		parsed = parser.hash_for_model(set_key: "cme")

		assert_equal "pkm-cme-54", parsed[:grimoire_id]
		assert_equal "Piplup", parsed[:name]
    assert_equal 4256435, parsed[:tcgplayer_sku]
    assert_equal '{"name":"Piplup","type":"Water","data":[{"cost":"WWW","name":"Bubble Hold ","base_damage":"80"}]}', parsed[:signature_data]
    assert_equal '054', parsed[:sequence]
    assert_equal 'https://tcgplayer-cdn.tcgplayer.com/product/201230_200w.jpg', parsed[:image_url]
    assert_equal 201230, parsed[:tcgplayer_product]

		assert parser.has_alt?

		alt_parsed = parser.alt_hash_for_model(set_key: "cme")

		assert_equal "pkm-cme-54-r", alt_parsed[:grimoire_id]
		assert_equal "Piplup (Reverse Holo)", alt_parsed[:name]
    assert_equal 4256440, alt_parsed[:tcgplayer_sku]
    assert_equal '{"name":"Piplup","type":"Water","data":[{"cost":"WWW","name":"Bubble Hold ","base_damage":"80"}]}', alt_parsed[:signature_data]
    assert_equal '054r', alt_parsed[:sequence]
    assert_equal 'https://tcgplayer-cdn.tcgplayer.com/product/201230_200w.jpg', alt_parsed[:image_url]
    assert_equal 201230, alt_parsed[:tcgplayer_product]
	end

	test "Prerelease promo parses successfully" do
		parser = Tcgplayer::CardParser.new(prerelease_charizard)
		parsed = parser.hash_for_model(set_key: "pro")

		assert_equal "pkm-pro-sm158", parsed[:grimoire_id]
		assert_equal "Charizard - SM158", parsed[:name]
    assert_equal 3964034, parsed[:tcgplayer_sku]
    assert_equal '{"name":"Charizard","type":"Fire","data":[{"cost":"RR","name":"Continuous Blaze Ball ","base_damage":"30"}]}', parsed[:signature_data]
    assert_equal 'sm158', parsed[:sequence]
    assert_equal 'https://tcgplayer-cdn.tcgplayer.com/product/183966_200w.jpg', parsed[:image_url]
    assert_equal 183966, parsed[:tcgplayer_product]

		assert_not parser.has_alt?
	end

	test "Prerelease staff promo parses successfully" do
		parser = Tcgplayer::CardParser.new(staff_charizard)
		parsed = parser.hash_for_model(set_key: "pro")

		assert_equal "pkm-pro-sm158-s", parsed[:grimoire_id]
		assert_equal "Charizard - SM158 [Staff]", parsed[:name]
    assert_equal 3964039, parsed[:tcgplayer_sku]
    assert_equal '{"name":"Charizard","type":"Fire","data":[{"cost":"RR","name":"Continuous Blaze Ball ","base_damage":"30"}]}', parsed[:signature_data]
    assert_equal 'sm158s', parsed[:sequence]
    assert_equal 'https://tcgplayer-cdn.tcgplayer.com/product/183967_200w.jpg', parsed[:image_url]
    assert_equal 183967, parsed[:tcgplayer_product]

		assert_not parser.has_alt?
	end

	test "Normal Sword&Shield promo parses successfully" do
		parser = Tcgplayer::CardParser.new(promo_scorbunny)
		parsed = parser.hash_for_model(set_key: "pro")

		assert_equal "pkm-pro-swsh2", parsed[:grimoire_id]
		assert_equal "Scorbunny - SWSH002", parsed[:name]
    assert_equal 4229619, parsed[:tcgplayer_sku]
    assert_equal '{"name":"Scorbunny","type":"Fire","data":[{"cost":"R","name":"Super Singe ","base_damage":"10"}]}', parsed[:signature_data]
    assert_equal 'swsh002', parsed[:sequence]
    assert_equal 'https://tcgplayer-cdn.tcgplayer.com/product/200301_200w.jpg', parsed[:image_url]
    assert_equal 200301, parsed[:tcgplayer_product]

		assert_not parser.has_alt?
	end
end
