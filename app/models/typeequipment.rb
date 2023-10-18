class Typeequipment < ApplicationRecord
    has_many :maintenances, dependent: :destroy
    has_many :engines, dependent: :destroy

    validates :name, presence: true
end
