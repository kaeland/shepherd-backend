class Destination < ApplicationRecord
  has_many :drivers
  has_many :riders, through: :drivers
end