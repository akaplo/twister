class Rsvp < ApplicationRecord
  validates :names, :food_choice, presence: true
  validates_inclusion_of :attending, in: [true, false]
end
