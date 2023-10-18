class Engine < ApplicationRecord
  belongs_to :typeequipment

  validates :name, presence: true, uniqueness: true

  has_one_attached :photo
end
