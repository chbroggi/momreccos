class CreateCoaches < ActiveRecord::Migration[5.0]
  def change
    create_table :coaches do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :street
      t.integer :zip_code
      t.string :city
      t.string :county
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
