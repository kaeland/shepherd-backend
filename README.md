# README

### Where to Begin:

#### Backend
**Steps:**
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
4. Create seed file (example):
  ```ruby
  p_winfield = Animal.create(name: 'Panther-Winfield', species: dog, gender: 'male')
  charlotte = Animal.create(name: 'Charlotte', species: dog, gender: 'female')
  charlie = Animal.create(name: 'Charlie', species: dolphin, gender: 'male')
  eunice = Animal.create(name: 'Eunice', species: ferret, gender: 'female')
  ```
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
6. Run ```rails s``` and check if json is displayed in browser

#### Frontend
1. Create index.html file w/ minimal content
2. Create src/index.js file
3. Open index.html in browser and see if src/index.js works

