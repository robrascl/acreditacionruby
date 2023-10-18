class CreateEngines < ActiveRecord::Migration[7.0]
  def change
    create_table :engines do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.references :typeequipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
