class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def edit
    @booking = Booking.find( params[:id])
  end

  def update
    @booking = Booking.find( params[:id])

    if @booking.update_attributes(booking_params)
      redirect_to @booking
    else
      render 'edit'
    end
  end

  def new
    @booking = Booking.new
  end


  def show
    @booking = Booking.find( params[:id])
  end

  def create
    booking = Booking.new( booking_params)

    if booking.save
      redirect_to bookings_path
    else
      render 'new'
    end
  end

  def destroy
    @booking = Booking.find( params[:id])

    user_id = @booking.user_id

    @booking.destroy

    redirect_to users_path( user_id)
  end

  private

  def booking_params
    params.require( :booking).permit( :start_date, :end_date)
  end
end
