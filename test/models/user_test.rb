require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'eager_load' do
    user = User.create!(foo: "user-1")
    2.times do
      Item.create!(bar: user.foo)
    end

    assert_equal([['user-1', 'user-1']], User.preload(:items).map { |user| user.items.map(&:bar) })
    assert_equal([['user-1', 'user-1']], User.eager_load(:items).map { |user| user.items.map(&:bar) })
  end
end
