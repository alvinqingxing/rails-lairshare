class Review < ApplicationRecord
  belongs_to :lair
  belongs_to :user
end
