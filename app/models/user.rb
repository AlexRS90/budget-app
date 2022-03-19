class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: { message: 'must not be empty' }
  validates :name, length: { minimum: 5, message: 'must be your full name' }
  has_many :groups
  has_many :managements
end
