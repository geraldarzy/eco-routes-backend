class MapController < ApplicationController
    before_action :generate_url
    def trial
        response = Excon.get(@url)
        render json: response.JSON()
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
        @url = 'https://api.mapbox.com/directions/v5/mapbox/driving/' + start_long + ',' + start_lat + ';' + end_long + ',' + end_lat + '?steps=true&geometries=geojson&access_token=' + access_token
    end
end
# http://localhost:3000/origin-destination/:start_long/:start_lat/:end_long/:end_lat
# http://localhost:3000/origin-destination/-73;8891016/40;7410592/-73;9896416/40;7410592
# http://localhost:3000/origin-destination/73.11/startlat/1/2
# in mapbox, long first, lat second
# var end = [-73.9896416, 40.7410592];
# var start = [-73.8891016, 40.7410592];
# var url = 'https://api.mapbox.com/directions/v5/mapbox/cycling/' + start[0] + ',' + start[1] + ';' + end[0] + ',' + end[1] + '?steps=true&geometries=geojson&access_token=' + mapboxgl.accessToken;

