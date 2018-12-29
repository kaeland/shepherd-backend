class User < ApplicationRecord
  has_many :riders, class_name: "User", foreign_key: "driver_id"
  belongs_to :driver, class_name: "User"
  belongs_to :destination
  belongs_to :vehicle 
end