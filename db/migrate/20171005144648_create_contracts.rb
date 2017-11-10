class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.integer :state
      t.integer :value
      t.float :time
      t.timestamps
    end
  end
end
