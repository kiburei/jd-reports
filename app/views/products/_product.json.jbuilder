json.extract! product, :id, :opening_stock, :purchases, :total_stock, :total_sold, :buying_cost, :total_buying_cost, :selling_cost, :margin, :total_margin, :total_sales, :closing_stock, :created_at, :updated_at
json.url product_url(product, format: :json)
