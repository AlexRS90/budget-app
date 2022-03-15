class Managment < ApplicationRecord
  belongs_to :user
  has_many :groups, through: :group_managments
end
