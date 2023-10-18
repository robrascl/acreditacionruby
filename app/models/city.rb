class City < ApplicationRecord
    has_many :maintenances, dependent: :destroy

    validates :name, presence: true
end
