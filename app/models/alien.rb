class Alien < ApplicationRecord
  belongs_to :planet
  has_many :memberships, dependent: :destroy
  has_many :alliances, through: :memberships
  validates :name, presence: true
  has_one_attached :photo
end
