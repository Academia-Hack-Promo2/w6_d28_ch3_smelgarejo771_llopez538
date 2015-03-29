class CreateFiesta < ActiveRecord::Migration
  def change
    create_table :fiesta do |t|
      t.string :nombre
      t.date :fecha
      t.string :lugar
      t.string :reservacion

      t.timestamps null: false
    end
  end
end
