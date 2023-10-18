class Maintenancetype < ApplicationRecord
    has_many :maintenances, dependent: :destroy
end
