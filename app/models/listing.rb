class Listing < ApplicationRecord
  belongs_to :sitter, :class_name => "User", optional: true
  belongs_to :client, :class_name => "User"

  def self.available_listings
    Listing.all.select do |listing|
      listing.sitter_id == nil
    end
  end
end
