class Bike < ApplicationRecord
    has_many :bike_types, dependent: :destroy
end
