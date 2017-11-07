class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    pet = Pet.new(pets_params)
    pet.save
    redirect_to pet_path(pet)
  end

  def edit
  end

  def update
    @pet.update(pets_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end


  private

  def pets_params
    params.require(:pet).permit(:description, :category, :address, :found_at)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end

end
