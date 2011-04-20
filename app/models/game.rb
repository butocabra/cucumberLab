class Game < ActiveRecord::Base

  has_many :gamecopies
  has_many :users, :through => :gamecopies

  def self.search terms
      Game.where('title like :query',{:query => "%#{terms}%"})
  end
end
