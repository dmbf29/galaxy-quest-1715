class Alliance < ApplicationRecord
  has_many :memberships # alliance.memberships
  has_many :aliens, through: :memberships # alliance.aliens
  has_many :planets, through: :aliens # alliance.planets
  validates :name, presence: true, uniqueness: true

  def to_label
    name.titleize
  end
end
