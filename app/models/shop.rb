class Shop < ApplicationRecord
    has_many :opening_hours
    validates_presence_of :name
end
