class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character.new
  end

  # app/controllers/todos_controller.rb
def create
  if params[:todo][:character] == ""
    flash[:alert] = "Character can't be blank!"
    redirect_to @character
  else
    @character = Character.create(character_params)
    redirect_to @character
  end
end
end
