class CreateAdministrators < ActiveRecord::Migration[5.1]
  def change
    create_table :administrators do |t|
      t.string :first_name, null: false
      t.string :second_name
      t.string :first_last_name, null:false
      t.string :second_last_name, null:false
      t.string :picture
      t.string :password, null:false
      t.string :email, null:false
      t.string :age, null:false
      t.timestamps
    end
  end
end
