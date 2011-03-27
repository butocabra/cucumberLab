class MyGamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params[:game])

    if @game.save
      redirect_to(all_games_path, :notice => '%{@game.title} was successfully created.') 
    else
      render :action => "new" 
    end
  end


end
