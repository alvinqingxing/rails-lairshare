class Lair < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search,
  against: [ :name, :description, :address ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  has_many :favourites
  has_many :reviews

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
  
end
