class CreateMaintenances < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenances do |t|
      t.date :datedoit
      t.string :emailtech
      t.date :dateman
      t.references :engine, null: false, foreign_key: true
      t.references :typeequipment, null: false, foreign_key: true
      t.references :maintenancetype, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :usedmaterial, null: false, foreign_key: true

      t.timestamps
    end
  end
end
