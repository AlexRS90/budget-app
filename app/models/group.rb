class Group < ApplicationRecord
  belongs_to :user
  has_many :group_managments
  has_many :managments, through: :group_managments

  validates :name, presence: { message: 'can\'t be empty' }
end
