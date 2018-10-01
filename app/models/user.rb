class User < ApplicationRecord
  has_many :pets
  has_many :sitter_listings, :foreign_key => "sitter_id", :class_name => "Listing"
  has_many :client_listings, :foreign_key => "client_id", :class_name => "Listing"
end