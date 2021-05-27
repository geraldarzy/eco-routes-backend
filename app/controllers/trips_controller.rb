class TripsController < ApplicationController

    def index
        render json: Trip.all
    end

    def create
        # t.string "origin"
        # t.string "destination"
        # t.string "distance"
        # t.string "trip_co2"
        # t.integer "trip_book_id"

        @trip = Trip.create(trip_params)
        if @trip.valid?
            render json: { trip: TripSerializer.new(@trip) }
        else
            # otherwise, send back an error
            render json: { errors:@trip.errors.full_messages }, status: :unauthorized
        end
    end

    private
    def trip_params
        params.permit(:origin,:destination,:distance,:trip_co2,:trip_book_id)
    end
end
