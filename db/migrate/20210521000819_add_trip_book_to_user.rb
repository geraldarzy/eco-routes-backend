class AddTripBookToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :trip_book_id, :integer
  end
end
