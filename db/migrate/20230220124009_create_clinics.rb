class CreateClinics < ActiveRecord::Migration[7.0]
  def change
    create_table :clinics do |t|
      t.string :name, null: false
      t.string :building, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :prefecture, null: false
      t.string :phone, null: false
      t.string :url

      t.timestamps
    end
  end
end
