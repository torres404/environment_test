class ChangePriceToDecimal < ActiveRecord::Migration[6.1]
  def change
    change_column :books, :price, :decimal
  end
end
