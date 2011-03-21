class AllGamesController < ApplicationController
  def browse
    @games = Game.all
  end

end
