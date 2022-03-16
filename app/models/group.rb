class Group < ApplicationRecord
  belongs_to :user
  has_many :managements, through: :group_managments

  validates :name, presence: { message: 'can\'t be empty'}
end
