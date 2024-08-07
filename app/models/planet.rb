class Planet < ApplicationRecord
  # when you delete the planet, it will also delete the aliens
  has_many :aliens, dependent: :destroy
  validates :name, presence: true
end
