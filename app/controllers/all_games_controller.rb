class AllGamesController < ApplicationController
  
  def index
    @games = Game.all
  end

  def search
    if params[:q]
      @games = Game.search(:q)
      if ( @games.count > 0)
        @searchSummary = "found #{@games.count} games matching #{params[:q]}"
      end
    end
  end

end
