class CreateItineraries < ActiveRecord::Migration[6.0]
  def change
    create_table :itineraries do |t|
      t.integer :day_of_trip
      t.date :date
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
