class CreateAirports < ActiveRecord::Migration[8.1]
  def change
    create_table :airports do |t|
      t.string :IATA, limit: 3, null: false
      t.string :name, null: false
      t.string :city, null: false
      t.string :country, null: false

      t.timestamps
    end
    add_index :airports, :IATA, unique: true
  end
end
