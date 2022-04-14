require "test_helper"

class CardSetTest < ActiveSupport::TestCase
  test "invalid slug fails" do
    test_space = CardSet.new(name: 'Slug with space', slug: 'slug-with space')
    test_char = CardSet.new(name: 'Slug with special character', slug: 'slug-with-special&character')
    test_case = CardSet.new(name: 'Slug with uppercase', slug: 'slug-with-Uppercase')
    assert !(test_space.save && test_char.save && test_case.save)
  end

  test "valid set saves" do
    test_set = CardSet.new(name: 'Test set', slug: 'test-set')
    assert test_set.save
  end
end
