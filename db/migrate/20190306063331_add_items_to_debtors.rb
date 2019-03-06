class AddItemsToDebtors < ActiveRecord::Migration[5.2]
  def change
    add_column :debtors, :items, :string
  end
end
