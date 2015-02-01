class CharactersController < ApplicationController

  def new
    @character = Character.new
  end

  # キャラクターの作成
  def create
    @character = Character.new(character_params)
    @character.user = current_user

    if @character.save
      redirect_to :root
    else
      render :new
    end

  end

  private
  def character_params
    params.require(:character).permit(
      :name, :image, :image_cache, :remote_image_urls
    )
  end
end