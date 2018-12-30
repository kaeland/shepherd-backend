class Driver < ApplicationRecord
  belongs_to :destination 
  has_many :riders
  has_one :vehicle 
end