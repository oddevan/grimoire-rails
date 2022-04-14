require "test_helper"

class CardSetTest < ActiveSupport::TestCase
  test "invalid slug fails" do
    test_space = CardSet.new(name: 'Slug with space', slug: 'slug-with space')
    assert_not test_space.save

    test_char = CardSet.new(name: 'Slug with special character', slug: 'slug-with-special&character')
    assert_not test_char.save

    test_case = CardSet.new(name: 'Slug with uppercase', slug: 'slug-with-Uppercase')
    assert_not test_case.save
  end

  test "valid set saves" do
    test_set = CardSet.new(name: 'Test set', slug: 'test-set')
    assert test_set.save
  end

  test "autogenerate slug" do
    test_set = CardSet.new(name: 'Everything & nothing')
    assert test_set.save
    assert test_set.slug == 'everything-nothing'
  end

  test "autogenerate date" do
    test_set = CardSet.new(name: 'No date.', slug: 'no-date')
    assert test_set.save
    assert test_set.release_date == Date.today
  end

  test "duplicate slug fails" do
    existing_set = CardSet.first
    dupe_set = CardSet.new(name: 'Duplicate', slug: existing_set.slug)
    assert_not dupe_set.save
  end
end
