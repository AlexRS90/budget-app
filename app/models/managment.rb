class Managment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_managments
  has_many :groups, through: :group_managments

  validates :name, presence: { message: 'must not be empty' }
  validates :amount, presence: { message: 'must not be empty' }
end
