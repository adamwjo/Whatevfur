class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    @pet= Pet.new(pet_params)
    @pet.user_id = current_user.id
    if pet_name_uniq
      @pet.save
      redirect_to user_path(@pet.user)
    else
      redirect_to new_pet_path
    end
  end

  def pet_name_uniq
    if current_user.pet_names.include?(@pet.name)
      false
    else
      true
    end
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :species, :description, :dog_friendly, :cat_friendly, :child_friendly, :user_id)
  end
end
