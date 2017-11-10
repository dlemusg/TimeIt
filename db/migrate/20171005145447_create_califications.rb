class CreateCalifications < ActiveRecord::Migration[5.1]
  def change
    create_table :califications do |t|
      t.float :value, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
