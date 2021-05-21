class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :origin
      t.string :destination
      t.string :distance
      t.string :trip_co2
      t.integer :trip_book_id

      t.timestamps
    end
  end
end
