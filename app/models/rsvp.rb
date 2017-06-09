class Rsvp < ApplicationRecord
  validates :names, :food_choice, presence: true
  validates_inclusion_of :attending, in: [true, false]
  validates_uniqueness_of :invite_code
end
