class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :nombre
      t.text :descripcion
      t.decimal :costo

      t.timestamps null: false
    end
  end
end
