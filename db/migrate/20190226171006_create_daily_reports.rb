class CreateDailyReports < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_reports do |t|
      t.date :report_date
      t.decimal :total_sales, :precision => 8, :scale => 2
      t.decimal :day_sales, :precision => 8, :scale => 2
      t.decimal :day_margin, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
