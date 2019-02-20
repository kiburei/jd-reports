class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :opening_stock, :default => 0
      t.integer :purchases, :default => 0
      t.integer :total_stock, :default => 0
      t.integer :total_sold, :default => 0
      t.decimal :buying_cost, :default => 0
      t.decimal :total_buying_cost, :default => 0
      t.decimal :selling_cost, :default => 0
      t.decimal :margin, :default => 0
      t.decimal :total_margin, :default => 0
      t.decimal :total_sales, :default => 0
      t.integer :closing_stock, :default => 0

      t.timestamps
    end
  end
end
