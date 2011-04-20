class CreateGameCopies < ActiveRecord::Migration
  def self.up
    create_table :game_copies do |t|
      t.date :bought
      t.boolean :onloan
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :game_copies
  end
end
