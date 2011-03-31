class Game < ActiveRecord::Base

  def self.search terms
      Game.where('title like :query',{:query => "%#{terms}%"})
  end
end
