class Driver < ApplicationRecord
  has_many :destinations
  has_many :riders, through: :destinations
  has_one :vehicle 
end