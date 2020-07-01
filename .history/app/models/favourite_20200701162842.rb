class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :lair

  validates :user, uniqueness: { scope: :lair }
end
