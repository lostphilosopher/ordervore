class Group < ApplicationRecord
  belongs_to :user
  has_many :group_orders, dependent: :destroy
  has_many :orders, through: :group_orders
end
