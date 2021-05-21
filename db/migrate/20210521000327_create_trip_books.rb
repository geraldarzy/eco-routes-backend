class CreateTripBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :trip_books do |t|

      t.timestamps
    end
  end
end
