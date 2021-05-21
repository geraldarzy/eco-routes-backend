class TripSerializer < ActiveModel::Serializer
  attributes :id, :origin, :destination, :distance, :trip_co2, :trip_book_id
end
