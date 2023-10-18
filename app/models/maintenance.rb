class Maintenance < ApplicationRecord
  belongs_to :engine
  belongs_to :typeequipment
  belongs_to :maintenancetype
  belongs_to :city
  belongs_to :usedmaterial

  validates :datedoit, presence: true
  validates :emailtech, presence: true
  validates :dateman, presence: true
  
  
end
