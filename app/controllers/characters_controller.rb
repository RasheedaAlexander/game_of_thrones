class CharactersController < ApplicationController

  def index
    @houses = House.all
    @characters = Character.all
  end

  def all_characters
    @characters = Character.all
  end

  def new
    @house = House.find(params[:house_id])
    @character = @house.characters.build
  end

  def create
    if params[:character][:house] == ""
      flash[:alert] = "House can't be blank!"
      redirect_to characters_path
    else
      @character = Character.create(character_params)
      redirect_to characters_path
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to characters_path
  end

  private

  def character_params
    params.require(:character).permit(:name, :img_url)
  end
end
