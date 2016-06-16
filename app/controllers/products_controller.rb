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
     @novel.product_id = params[:product_id]
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

      def create
          product = Product.new( product_params )

          if product.save
             redirect_to product_path( product.product_id )
          else
             render new_product_path
          end
       end

       def destroy
         @product = Product.find( params[:id] )

         product_id = @product.product_id

         @product.destroy

         redirect_to product_path( product_id )
       end

    private

       def product_params
         params.require( :product ).permit( :users, :title, :description, :location, product_ids: [] )
       end

    end
