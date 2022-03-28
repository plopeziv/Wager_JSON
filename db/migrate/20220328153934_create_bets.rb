class CreateBets < ActiveRecord::Migration[7.0]
  def change
    create_table :bets do |t|
      t.belongs_to :user, index: true, foreign_key:  true 
      t.string :betId
      t.string :gameId
      t.string :chosenTeam
      t.float :wager

      t.timestamps
    end
  end
end
