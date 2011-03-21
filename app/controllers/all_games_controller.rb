class AllGamesController < ApplicationController
  
  def browse
    @games = Game.all
  end

  def search
    if params[:q]
      @games = Game.like(q)
    end
  end

end
