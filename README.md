# HomeMe FE
![home_me (1)](https://user-images.githubusercontent.com/77861247/173090073-d36a5dd9-64a8-49dd-a921-3f6c5d330a6d.jpg)


## Welcome to the HomeMe Application
+ This API was built in conjunction with the [home_me_be](https://github.com/CLRM1/home_me_fe) Front End application.
+ This application is designed to provide a way for people who need shelter to find homeless shelters and directions to them.
+ At this time, the app utilizes available shelter API in the Washington DC area with the idea that one day it can implement more shelter APIs from across the country as they become available.
+ We consume the external APIs of Google Maps and DC Shelters to gather data about homeless shelters in the Washington DC area as well as directions to those shelters from a given starting point.
+ As the BackEnd team for the app, we are exposing API endpoints to be consumed by the FrontEnd team to be displayed to the user.

## Versions
* Ruby Version - 2.7.4
* Rails - 5.2.7

## Setup
* Clone this repo
* `bundle install`
* `bundle exec figaro install`
* `rails db:{create,migrate,seed}`
* Get Google API key [here](https://developers.google.com/maps/documentation/javascript/get-api-key#creating-api-keys) and place in `config/application.yml` file
* run `bundle exec rspec` to run our RSpec testing suite
* execute the Postman collection below to test the endpoints

## Available Endpoints - Postman Collection
* [Click this link](https://www.getpostman.com/collections/03352a860b564709d906)
* Copy the entire text
* Open Postman, select "Import" from top left of page, then "Raw text" from the top line
* Paste the entire text
* Click "Continue", then "Import"
* Check out the endpoint examples - we have calls to the external APIs consumed by our app, as well as demonstrations of the responses returned from our own API endpoints!

## DB Schema
![Screen Shot 2022-06-10 at 8 37 46 AM](https://user-images.githubusercontent.com/77861247/173089562-fc5c9596-2111-4dd7-abca-636feb2b59db.png)


## Contributors
#### Back End Team
* Andrew Speth [GitHub](https://github.com/aspeth), [LinkedIn](https://www.linkedin.com/in/andrew-speth/)
* Michael Hicks [GitHub](https://github.com/michaeljhicks), [LinkedIn](https://www.linkedin.com/in/michael-hicks-04218511/)
* Scott Sullivan [GitHub](https://github.com/ScottSullivanltd), [LinkedIn](https://www.linkedin.com/in/scott-sullivan-9394204a/)
#### Front End Team
* Ian Ross [GitHub](https://github.com/ross-ian28), [LinkedIn](https://www.linkedin.com/in/ross-ian28/)
* Craig Cardwell [GitHub](https://github.com/Eagerlearn), [LinkedIn](https://www.linkedin.com/in/craiglcardwell/)
* Chris Romero [GitHub](https://github.com/CLRM1), [LinkedIn](https://www.linkedin.com/in/chris-romero-419702122/)
