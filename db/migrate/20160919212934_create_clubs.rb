class CreateClubs < ActiveRecord::Migration[5.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :short_name
      t.string :street
      t.integer :zip_code
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
