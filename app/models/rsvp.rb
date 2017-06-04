class Rsvp < ApplicationRecord
  validates :names, :attending, :food_choice, presence: true
end
