class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :destroy, :update, :edit]

  def index
    @characters = Character.all
  end

  def show
  end

  def new
    @character = Character.new
  end

    def update
      if @character.save
        redirect_to characters_path
      end
    end
    
  # app/controllers/characters_controller.rb
  def create
    @character = Character.create(character_params)
    redirect_to @character
  end

  def destroy
    @character.destroy
    redirect_to characters_path
  end

  def edit
  end

  private

  def character_params
    params.require(:character).permit(:name, :img_url)
  end

  def set_character
    @character = Character.find(params[:id])
  end
end
