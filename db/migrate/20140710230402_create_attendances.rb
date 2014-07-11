class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.date :fecha
      t.time :hora
      t.references :codigo, index: true

      t.timestamps
    end
  end
end
