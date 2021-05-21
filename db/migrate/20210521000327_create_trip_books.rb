class CreateTripBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :trip_books do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
