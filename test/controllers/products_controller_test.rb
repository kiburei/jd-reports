require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { buying_cost: @product.buying_cost, closing_stock: @product.closing_stock, margin: @product.margin, opening_stock: @product.opening_stock, purchases: @product.purchases, selling_cost: @product.selling_cost, total_buying_cost: @product.total_buying_cost, total_margin: @product.total_margin, total_sales: @product.total_sales, total_sold: @product.total_sold, total_stock: @product.total_stock } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { buying_cost: @product.buying_cost, closing_stock: @product.closing_stock, margin: @product.margin, opening_stock: @product.opening_stock, purchases: @product.purchases, selling_cost: @product.selling_cost, total_buying_cost: @product.total_buying_cost, total_margin: @product.total_margin, total_sales: @product.total_sales, total_sold: @product.total_sold, total_stock: @product.total_stock } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
