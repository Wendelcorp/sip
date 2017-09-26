class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  helper_method :sort_column, :sort_direction
  # before_action :authenticate_user!, :except => [:new, :create, :update]
  # GET /bookings
  # GET /bookings.json

  def index
    @bookings = Booking.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
    @booking_months = @bookings.this_month
    @booking_today = @bookings.today
    @booking_week = @bookings.this_week
  end

  def index_month
    @bookings = Booking.all
    @booking_months = @bookings.this_month
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = current_user.bookings.build
  end

  # GET /bookings/1/edit
  def edit


  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = current_user.bookings.build(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update

    respond_to do |format|

      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def check_user
    existing-coupon = params[:fieldValue]
    existing-coupon = Coupon.where("name = ?", coupon.upcase).first
    if user.present?
      render :json =>  ["existing-coupon", true , "Coupon Applied"]
    else
      render :json =>  ["existing-coupon", false , "Coupon Not Active"]
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:details, :name, :email, :phone, :company, :event_type, :date, :bar_type, :add_ons, :address, :guests, :start_time, :permit, :additional, :subtotal, :hours, :coupon_code, :beer, :wine, :spirit, :cocktail, :glassware, :bar_rental, :virgin, :passed_drinks, :other, :delivery_details )
    end

    def sort_column
      Booking.column_names.include?(params[:sort]) ? params[:sort] : 'name'
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
    end

end
