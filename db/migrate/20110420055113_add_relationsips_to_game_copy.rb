class AddRelationsipsToGameCopy < ActiveRecord::Migration
  def self.up
    change_table  :game_copies do |gc|
      gc.references :games
      gc.references :users
    end
  end

  def self.down
    change_table  :game_copies do |gc|
      gc.remove_references :games
      gc.remove_references :users
    end
  end
end
