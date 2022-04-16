require "test_helper"

class TransientTest < ActiveSupport::TestCase
  test "Can't create without key and expiration" do
    assert_not Transient.set(nil, 'value', Time.now + 10)
    assert_not Transient.set('key', 'value', nil)
  end

  test "Can create and retrieve" do
    assert Transient.set('test', 'test value', Time.now + 360)
    assert_equal 'test value', Transient.get('test')
  end

  test "Can't retrieve after expiration" do
    assert Transient.set('timed_test', 'test value', Time.now + 1)
    sleep(1)
    assert_not Transient.get('timed_test')
  end
end
