class Pet < ApplicationRecord
  belongs_to :user
  ###
  # validate name uniqueness? name present?
  validates :name, length: {minimum: 2}
  validates :description, length: {minimum: 2}


  def duplicate

    #retruns true if there are more than one pet of the same name by a user
    #check a users pets
  end


end
