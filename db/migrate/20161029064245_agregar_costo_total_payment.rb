class AgregarCostoTotalPayment < ActiveRecord::Migration
  def change
  	add_column :payments, :costo_total, :decimal
  end
end
