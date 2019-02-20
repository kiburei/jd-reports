require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Buying cost", with: @product.buying_cost
    fill_in "Closing stock", with: @product.closing_stock
    fill_in "Margin", with: @product.margin
    fill_in "Opening stock", with: @product.opening_stock
    fill_in "Purchases", with: @product.purchases
    fill_in "Selling cost", with: @product.selling_cost
    fill_in "Total buying cost", with: @product.total_buying_cost
    fill_in "Total margin", with: @product.total_margin
    fill_in "Total sales", with: @product.total_sales
    fill_in "Total sold", with: @product.total_sold
    fill_in "Total stock", with: @product.total_stock
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Buying cost", with: @product.buying_cost
    fill_in "Closing stock", with: @product.closing_stock
    fill_in "Margin", with: @product.margin
    fill_in "Opening stock", with: @product.opening_stock
    fill_in "Purchases", with: @product.purchases
    fill_in "Selling cost", with: @product.selling_cost
    fill_in "Total buying cost", with: @product.total_buying_cost
    fill_in "Total margin", with: @product.total_margin
    fill_in "Total sales", with: @product.total_sales
    fill_in "Total sold", with: @product.total_sold
    fill_in "Total stock", with: @product.total_stock
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
