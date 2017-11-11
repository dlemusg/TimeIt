class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.references :user, foreign_key: true
      t.references :offer, foreign_key: true
      t.integer :state
      t.integer :value
      t.string :comments
      t.timestamps
    end
  end
end
