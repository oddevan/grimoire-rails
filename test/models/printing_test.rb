require "test_helper"

class PrintingTest < ActiveSupport::TestCase
  test "generate hash" do
    test_card = Printing.new(
      name: 'Test card',
      grimoire_id: 'grm-tst-543',
      card_set: CardSet.first,
      signature_data: '{name:"Test card"}'
    )

    assert test_card.save
    assert_equal 'a9624eb29206c4c0244308b0b4638aaa', test_card.signature
  end

  test "grimoire ID format" do
    test_card = Printing.new(
      name: 'Test card',
      grimoire_id: 'grm-tst-543',
      card_set: CardSet.first,
      signature_data: '{name:"Test card"}'
    )

    assert test_card.valid?

    test_card.grimoire_id = '6rm-tst-543'
    assert_not test_card.valid?, 'First part of Grimoire ID should be exactly three letters'

    test_card.grimoire_id = 'grim-tst-543'
    assert_not test_card.valid?, 'First part of Grimoire ID should be exactly three letters'

    test_card.grimoire_id = 'gm-tst-543'
    assert_not test_card.valid?, 'First part of Grimoire ID should be exactly three letters'

    test_card.grimoire_id = 'grm-ts-543'
    assert_not test_card.valid?, 'Second part of Grimoire ID should be exactly three letters/numbers'

    test_card.grimoire_id = 'grm-t45s-543'
    assert_not test_card.valid?, 'Second part of Grimoire ID should be exactly three letters/numbers'

    test_card.grimoire_id = 'grm-t3s-543'
    assert test_card.valid?, 'Second part of Grimoire ID should be exactly three letters/numbers'
  end
end
