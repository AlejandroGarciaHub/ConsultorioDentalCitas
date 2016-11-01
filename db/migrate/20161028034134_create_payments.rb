class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.text :tipo_pago

      t.timestamps null: false
    end
  end
end
