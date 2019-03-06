class CreateDebtors < ActiveRecord::Migration[5.2]
  def change
    create_table :debtors do |t|
      t.string :f_name
      t.string :l_name
      t.decimal :debt

      t.timestamps
    end
  end
end
