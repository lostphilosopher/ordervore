class Restaurant < ApplicationRecord
  validates :name, uniqueness: true

  def creator
    User.find_by(id: creator_user_id)
  end
end
