class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :puesto
      t.integer :codigo

      t.timestamps
    end
  end
end
