class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :passport_nb
      t.references :parent, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
