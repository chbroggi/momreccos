class CreateParents < ActiveRecord::Migration[5.0]
  def change
    create_table :parents do |t|
      t.string :last_name
      t.string :mother_name
      t.string :father_name
      t.string :mother_phone
      t.string :father_phone
      t.string :mother_email
      t.string :father_email
      t.string :street
      t.integer :zip_code
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
