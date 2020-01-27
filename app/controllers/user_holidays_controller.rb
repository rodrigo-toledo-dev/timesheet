class UserHolidaysController < ApplicationController
  before_action :set_user_holiday, only: [:show, :edit, :update, :destroy]

  # GET /user_holidays
  # GET /user_holidays.json
  def index
    @user_holidays = UserHoliday.all
  end

  # GET /user_holidays/1
  # GET /user_holidays/1.json
  def show
  end

  # GET /user_holidays/new
  def new
    @user_holiday = UserHoliday.new
  end

  # GET /user_holidays/1/edit
  def edit
  end

  # POST /user_holidays
  # POST /user_holidays.json
  def create
    @user_holiday = UserHoliday.new(user_holiday_params)

    respond_to do |format|
      if @user_holiday.save
        format.html { redirect_to @user_holiday, notice: 'User holiday was successfully created.' }
        format.json { render :show, status: :created, location: @user_holiday }
      else
        format.html { render :new }
        format.json { render json: @user_holiday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_holidays/1
  # PATCH/PUT /user_holidays/1.json
  def update
    respond_to do |format|
      if @user_holiday.update(user_holiday_params)
        format.html { redirect_to @user_holiday, notice: 'User holiday was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_holiday }
      else
        format.html { render :edit }
        format.json { render json: @user_holiday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_holidays/1
  # DELETE /user_holidays/1.json
  def destroy
    @user_holiday.destroy
    respond_to do |format|
      format.html { redirect_to user_holidays_url, notice: 'User holiday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_holiday
      @user_holiday = UserHoliday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_holiday_params
      params.require(:user_holiday).permit(:user_id, :holiday_id)
    end
end
