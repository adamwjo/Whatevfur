class Listing < ApplicationRecord
  belongs_to :sitter, :class_name => "User", optional: true
  belongs_to :client, :class_name => "User"

  def self.available_listings
    Listing.all.select do |listing|
      listing.sitter_id == nil
    end
  end

  def self.completed_listings
    Listing.all.select do |listing|
      listing.sitter_id != nil
    end
  end

  def listing_pets
    self.client.pets
  end

  def dog_friendly?
    #find listing client
    #iterate thru client.pets
    self.client.pets.each do |pet|
      #return true if all pets are dog friendly
      if pet.dog_friendly == true
        true
      else
        return false
      end
    end
  end

  def cat_friendly?
    #find listing client
    #iterate thru client.pets
    self.client.pets.each do |pet|
      #return true if all pets are cat friendly
      if pet.cat_friendly == true
        true
      else
        return false
      end
    end
  end

  def child_friendly?
    #find listing client
    #iterate thru client.pets
    self.client.pets.each do |pet|
      #return true if all pets are child friendly
      if pet.child_friendly == true
        true
      else
        return false
      end
    end
  end

end
