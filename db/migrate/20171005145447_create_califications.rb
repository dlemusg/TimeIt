class CreateCalifications < ActiveRecord::Migration[5.1]
  def change
    create_table :califications do |t|
      t.integer :value, null: false
      t.timestamps
    end
  end
end
