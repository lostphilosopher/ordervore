class Group < ApplicationRecord
  belongs_to :user
  has_many :group_orders, dependent: :destroy
  has_many :orders, through: :group_orders
  
  validates :name, uniqueness: true
end
