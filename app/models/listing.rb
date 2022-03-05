class Listing < ApplicationRecord
   #as a host 
    belongs_to :host, :class_name => "User"
    belongs_to :neighborhood


    #as a guest
    has_many :reservations
    has_many :reviews, through: :reservations
    has_many :guests, through: :reservations
end
