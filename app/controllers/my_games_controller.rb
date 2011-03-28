class MyGamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params[:game])

    if @game.save
      redirect_to all_games_path, :notice => 'successfully created.' 
    else
      render :new
    end
  end


end
