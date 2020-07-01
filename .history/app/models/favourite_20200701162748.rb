class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :lair

  validates_uniqueness_of :user, :scope => [:lair]
end
