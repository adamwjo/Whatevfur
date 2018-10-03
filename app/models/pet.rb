class Pet < ApplicationRecord
  belongs_to :user
  ###
  # validate name uniqueness? name present?
end
