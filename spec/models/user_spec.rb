require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) do
    u = User.create(
      email: 'foo@example.com',
      password: 'password'
    )
    r = Restaurant.create(
      name: 'Example'
    )
    o = Order.create(
      user_id: u.id,
      restaurant_id: r.id
    )
    u.reload
  end
  describe 'TABLE' do
    it 'has associations' do
      expect(user.orders.first).to be_instance_of Order
      expect(user.orders.first.restaurant).to be_instance_of Restaurant
      expect(user.restaurants.first).to be_instance_of Restaurant
    end
  end
end
