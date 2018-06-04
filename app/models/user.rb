class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders
  has_many :restaurants, through: :orders
  has_many :groups

  validates :handle, uniqueness: true

  def admin?
    'wandersen02@gmail.com' == email
  end
end
