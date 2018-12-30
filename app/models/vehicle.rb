class Vehicle < ApplicationRecord
  belongs_to :driver
  has_many :riders, through: :driver 
end