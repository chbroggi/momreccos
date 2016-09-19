class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :type
      t.string :name
      t.string :description
      t.datetime :when
      t.string :street
      t.string :zip_code
      t.string :city
      t.string :country
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
