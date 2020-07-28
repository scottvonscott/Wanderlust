class CreateScheduledAttractions < ActiveRecord::Migration[6.0]
  def change
    create_table :scheduled_attractions do |t|
      t.string :time_of_day
      t.references :attraction, null: false, foreign_key: true
      t.references :itinerary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
