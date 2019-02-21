class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :reload]
  autocomplete :product, :name,  :full => true


  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @item = Product.new
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    # respond_to do |format|
      if @product.update(product_params)
        reload
        # format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        # format.json { render :show, status: :ok, location: @product }
      # else
      #   format.html { render :edit }
      #   format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    # end
  end

  def reload
    total_stock = @product.opening_stock + @product.purchases
    total_buying_cost = @product.buying_cost * @product.purchases
    margin = @product.selling_cost - @product.buying_cost
    total_margin = @product.total_sold * margin
    total_sales = @product.selling_cost * @product.total_sold
    closing_stock = @product.total_stock - @product.total_sold

    @product.update(total_stock: total_stock, total_buying_cost: total_buying_cost, margin: margin, total_margin: total_margin, total_sales: total_sales, closing_stock: closing_stock)
    redirect_to root_url
  end

  def close_day
    # Save items with closong stock, total sales ets and export to pdf or excel

  end

  def open_day
    # assign closing stock to opening stock and reset purchases etc
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :opening_stock, :purchases, :total_stock, :total_sold, :buying_cost, :total_buying_cost, :selling_cost, :margin, :total_margin, :total_sales, :closing_stock)
    end
end
