class TripBooksController < ApplicationController

    def show
        tripbook = TripBook.find_by(id:params['id'])
        #return stuff
    end
end
