class User < ApplicationRecord
  has_many :messages, through :conversations
  has_many :conversations, through :bookings
  has_many :bookings
  has_many :lairs
  has_many :favourites
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
