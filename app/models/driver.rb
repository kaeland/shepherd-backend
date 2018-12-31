class Driver < ApplicationRecord
  belongs_to :destination 
  has_many :riders, dependent: :destroy
  has_one :vehicle, dependent: :destroy 
end