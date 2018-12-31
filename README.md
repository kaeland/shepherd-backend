# README

### **Steps (Backend):**
1. Create routes for models (example):
  ```ruby
    get '/animals/count', to: 'animals#count'
    resources :animals, only: [:show, :index, :create]
  ```
2. Create models (example):
  ```ruby
  class Animal < ApplicationRecord
    belongs_to :species
    enum gender: [:male, :female, :unknown]

    def show_for_api
      {
        name: name
      }
    end
  end
  ```
3. Create database migration files (example):
  ```ruby
  class CreateAnimals < ActiveRecord::Migration[5.1]
    def change
      create_table :animals do |t|
        t.string :name
        t.integer :gender
        t.belongs_to :species, foreign_key: true

        t.timestamps
      end
    end
  end
  ```
  * Can use a generator:
  ```bash
  rails g migration add_description_to_products description:string
  ```
  * User columns:
    * first_name, last_name,  driver_id, destination_id, vehicle_id
  * Destination columns:
    *  name
  * Vehicle
    * color, make, model

4. Create seed file (example):
  ```ruby
  p_winfield = Animal.create(name: 'Panther-Winfield', species: dog, gender: 'male')
  charlotte = Animal.create(name: 'Charlotte', species: dog, gender: 'female')
  charlie = Animal.create(name: 'Charlie', species: dolphin, gender: 'male')
  eunice = Animal.create(name: 'Eunice', species: ferret, gender: 'female')
  ```
  ---
5. Create controller files for models (example):
  ```ruby
  class AnimalsController < ApplicationController
    def index
      @animals = Animal.all
      render json: @animals
    end

    def show
      @animal = Animal.find(params[:id])
      render json: @animal
    end

    # how many animals are there?
    def count
      @count = Animal.count
      render json: { count: @count }
    end

    def create
      @species = Species.find_or_create_by(name: params[:species])
      @animal = Animal.create(name: params[:name], gender: params[:gender].to_i, species: @species)

      render json: @animal
    end
  end
  ```
  **Controllers:**

  * DestinationsController:
     * File: destinations_controller.rb
     * Actions: index, show, create  
  * DriversController:
     * File: drivers_controller.rb
     * Actions: index, show, create, update, destroy
  * RidersController:
     * File: riders_controller.rb
     * Actions: index, show, create, update, destroy
  * VehiclesController
     * File: vehicles_controller.rb
     * Actions: index, show, create, update
        * **Note:** vehicles are deleted only when a driver is deleted. In this app drivers have only one vehicle. 
---
6. Run ```rails s``` and check if json is displayed in browser
7. Open [Postman](https://www.getpostman.com/) to mock/test POST requests to create actions in controllers
8. Refactor routes.rb file to match controller actions being used (example):
```ruby
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/animals/count', to: 'animals#count'
  resources :animals, only: [:show, :index, :create]

end
```
___
### **Steps (Frontend):**
1. Create index.html file w/ minimal content
2. Create src/index.js file
3. Open index.html in browser and see if src/index.js works

---
Helpful Links:
* [Disable CSRF protection](https://stackoverflow.com/questions/34251400/invalid-authenticity-token-on-post)
  * This allowed me to use Postman to mock POST requests
  * Without this, request to my API resulted in a status error similar to this:
    * > ActionController::InvalidAuthenticityToken in  User::ProfileController#create_profile

    