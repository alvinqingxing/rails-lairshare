class User < ApplicationRecord
  has_one_attached :photo
  has_many :messages
  has_many :bookings
  has_many :conversations, through: :bookings
  has_many :messages
  has_many :lairs
  has_many :favourites
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
