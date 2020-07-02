class Lair < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search,
  against: [ :name, :description, :address ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
  
  belongs_to :user
  has_many :bookings
  has_many :favourites


end
