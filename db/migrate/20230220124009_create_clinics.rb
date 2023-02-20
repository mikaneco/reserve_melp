class CreateClinics < ActiveRecord::Migration[7.0]
  def change
    create_table :clinics do |t|
      t.string :name, null: false, default: ""
      t.string :building, null: false, default: ""
      t.string :address, null: false, default: ""
      t.string :city, null: false, default: ""
      t.string :prefecture, null: false, default: ""
      t.string :phone, null: false, default: ""
      t.string :url, null: false, default: ""

      t.timestamps
    end
  end
end
