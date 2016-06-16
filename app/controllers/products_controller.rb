class ProductsController < ApplicationController

  def index
      @products = Product.all
   end

   def edit
        @product = Product.find( params[:id] )
      end

  def update
        @product = Product.find( params[:id] )

        if @product.update_attributes( product_params )
       redirect_to @product
     else
       render 'edit'
     end
   end

   def new
     @product = Product.new
  end

   def show
         @product = Product.find( params[:id] )
  end

  def create
    product = Product.new( product_params)

    if product.save

      redirect_to products_path
    else
      render 'new'
    end
  end

  def destroy
    @product = Product.find( params[:find])

    @product.destroy

    redirect_to products_path
  end

    private

       def product_params
         params.require( :product ).permit( :users, :title, :description, :location, product_ids: [] )
       end

    end
