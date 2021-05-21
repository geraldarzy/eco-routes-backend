class TripBooksController < ApplicationController

    def show
        tripbook = TripBook.find_by(id:params['id'])
        #return stuff
        if tripbook.trips.count > 0
            render json: { "tripbook_#{params['id']}_trips": tripbook.trips }
        else
            render json: {message: 'No trips available'}
        end
    end
end
