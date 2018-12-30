class Rider < ApplicationRecord
  has_many :destinations
  has_many :drivers, through: :destinations
end