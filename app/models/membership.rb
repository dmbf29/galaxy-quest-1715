class Membership < ApplicationRecord
  belongs_to :alien
  belongs_to :alliance
  validates :alien, uniqueness: { scope: :alliance }
end
