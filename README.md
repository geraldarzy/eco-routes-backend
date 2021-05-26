# README Eco-Routes
Frontend <a href='https://github.com/geraldarzy/eco-routes-frontend'>repository</a>
<br>
Backend <a href='https://github.com/geraldarzy/eco-routes-backend'>repository</a>

<strong>About the Project</strong>
 <br>
Eco-Routes is a web-app that is designed to inform users of their carbon-footprint and make them conscious of their effect onto the environment in comparison to other  things. To do that, we first show them the most eco-friendly route (via Car) to their destination. Then we calculate that trips carbon footprint and with that information, we compare your carbon footprint with that of the average person and average pet. The math behind that is that people globally have a carbon-footprint of 21.92 lbs of CO2 per day. We then take your trips carbon footprint and tell you what percent of 21.92 lbs that is. So for example, if your trip emits 10 lbs of CO2 into the environment, that is (10lbs/21.92lbs = 0.456) 46% of the average persons daily carbon footprint. That same math is applied to that of the Average Americans daily carbon-footprint and also to a dogs and cats carbon-footprint (food for pets are manufactured and therefore emit CO2 which allows us to estimate an average pets daily carbon-footprint). Eco-Routes also allows for a user account where you can save your trips and each trips respective information. This is great for keeping track of your carbon footprint as you take more and more trips.
<br/> <br/>
Daily Carbon Footprint:
- Average Person: 21.92 lbs of CO2
- Average American Person: 32.88 lbs of CO2
- Average Dog: 4.65 lbs of CO2
- Average Cat: 1.87 lbs of CO2
- America as a whole: 39.7 million lbs of CO2
<br><br>

<strong>Built with:</strong> <br>

<strong>Backend: </strong>
- Ruby on Rails Framework (Backend API)
- PostGreSQL Database
- BCrypt for password salting and hashing

Backend API's:
- <a href='https://docs.mapbox.com/help/getting-started/directions/'>MapBox Directions API</a> (given two sets of coordinates and returns directions )
<br/>

<strong>Frontend:</strong>
- React
- HTML/CSS
- Bootstrap

Frontend API's:
- <a href='https://docs.mapbox.com/api/search/geocoding/'>MapBox Geocoding API</a> (for autocomplete and turning addresses into coordinates)
- <a href='https://docs.mapbox.com/help/tutorials/use-mapbox-gl-js-with-react/'>MapBox GL-JS</a> (renders the map and route lines when given a GeoJSON object of coordinates)
<br/>
## Backend README

To start the backend to work in conjuction with the frontend:
- create a file named `.env`
- store your MapBox API key in there as `MAPBOX_ACCESS_TOKEN = < API KEY GOES HERE >`
- run `bundle install` to download and install all the dependencies
- run `rails s` to start and host the server locally
- if `rails s` does not run, you will need to create the database with the command `rails db:create` and follow that with `rails db:migrate` 
- once the server is running, your frontend should now have access to this backend server


<hr>

### <strong>Contributing</strong>
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
Please make sure to update tests as appropriate.

<hr>
MIT License

Copyright (c) 2021 Gerald Arzola

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
