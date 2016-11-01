class AddCategoryIdToProcedures < ActiveRecord::Migration
  def change
    add_reference :procedures, :category, index: true, foreign_key: true
  end
end
