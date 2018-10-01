class Listing < ApplicationRecord
  belongs_to :sitter, :class_name => "User"
  belongs_to :client, :class_name => "User"
end
