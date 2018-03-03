# Shoe Store

#### Exercise in Ruby, Sinatra, ActiveRecord, and incorporating a database with a many-to-many relationship, 3.2.18

#### Emily Watkins

## Description

This application tracks shoe stores and shoe brands. A user can manage data by adding new stores and brands, updating store information, and assigning brands to stores.

## Setup

Clone this repository.

Install Ruby and postgres if necessary.

From root directory in terminal, run the following:

`$ bundle`  

To set up the database schema:

`$ rake db:create`  

To run the server:

`$ ruby app.rb`


In your browser, navigate to localhost:4567 to view app.

## Functionality

* User can add new shoe stores.

* User can edit and delete stores.

* User can add new shoe brands with their pricing.

* User can add brands to specific stores. Any one shoe brand can belong to many stores.

* User can view any store's brands and their prices from its store page.


## Technologies Used

* Ruby
* Sinatra
* postgres
* ActiveRecord


## License

Licensed under the MIT License.

Copyright (c) 2018 Emily Watkins
