class UsersController < ApplicationController
  def index
      @users = User.all
    end
  def new
        @user = User.new
     end
  def show
    @user = User.find( params[:id] )
  def edit
          @user = User.find( params[:id] )
       end

  def update
             @user = User.find( params[:id] )

             if @user.update_attributes( author_params )
                redirect_to @user
             else
                render 'edit'
             end
          end

  def create
          user = User.new( author_params )

           if user.save
              redirect_to users_path
           else
              render 'new'
           end
        end

  def destroy
             @user = User.find( params[:id] )

             @user.destroy

             redirect_to users_path
          end

  def author_params
                params.require( :user ).permit( :name, :country, :bio )
             end

          end


end
