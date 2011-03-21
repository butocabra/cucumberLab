class AllGamesController < ApplicationController
  
  def browse
    @games = Game.all
  end

  def search
    if params[:q]
      @games = Game.where('title like :query',{:query => "%#{params[:q]}%"})
      if ( @games.count > 0)
        @searchSummary = "found #{@games.count} games matching #{params[:q]}"
      end
    else
      @message = params[:q]
    end
  end

end
