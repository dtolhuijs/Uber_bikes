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
          product = Product.new( product_params )

          if product.save
             redirect_to author_path( product.author_id )
          else
             render new_product_path
          end
       end

       def destroy
         @product = Product.find( params[:id] )

         author_id = @product.author_id

         @product.destroy

         redirect_to product_path( product_id )
       end

    private

       def product_params
         params.require( :product ).permit( :users, :name, :location, :email, :phone, product_ids: [] )
       end

    end
