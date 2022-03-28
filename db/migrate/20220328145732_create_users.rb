class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :userId
      t.string :name
      t.float :accoountBalance

      t.timestamps
    end
  end
end
