class MapController < ApplicationController
    before_action :generate_url
    def callAPI
        # use Excon gem to call API
        response = Excon.get(@url)

        #substitute inorder to make response a proper json obj
        render json: response.body.gsub('=>', ':')
    end

    private
    def generate_url
        # params.keys.each do |key|
        #     self.send("#{key}=", params[key])
        # end
        access_token = 'pk.eyJ1IjoiYXJ6eSIsImEiOiJja284d25iODAyNm1oMnJtYjVnZmllaG1zIn0.P8siHAbm84-8l4B0b723qg'
        start_long = params['start_long'].gsub(";", ".")
        start_lat = params['start_lat'].gsub(";", ".")
        end_long = params['end_long'].gsub(";", ".")
        end_lat = params['end_lat'].gsub(";", ".")
        @url = 'https://api.mapbox.com/directions/v5/mapbox/driving/' + start_long + ',' + start_lat + ';' + end_long + ',' + end_lat + '?geometries=geojson&access_token=' + access_token
    end
end

