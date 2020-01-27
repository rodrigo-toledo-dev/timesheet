require 'test_helper'

class UserHolidaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_holiday = user_holidays(:one)
  end

  test "should get index" do
    get user_holidays_url
    assert_response :success
  end

  test "should get new" do
    get new_user_holiday_url
    assert_response :success
  end

  test "should create user_holiday" do
    assert_difference('UserHoliday.count') do
      post user_holidays_url, params: { user_holiday: { holiday_id: @user_holiday.holiday_id, user_id: @user_holiday.user_id } }
    end

    assert_redirected_to user_holiday_url(UserHoliday.last)
  end

  test "should show user_holiday" do
    get user_holiday_url(@user_holiday)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_holiday_url(@user_holiday)
    assert_response :success
  end

  test "should update user_holiday" do
    patch user_holiday_url(@user_holiday), params: { user_holiday: { holiday_id: @user_holiday.holiday_id, user_id: @user_holiday.user_id } }
    assert_redirected_to user_holiday_url(@user_holiday)
  end

  test "should destroy user_holiday" do
    assert_difference('UserHoliday.count', -1) do
      delete user_holiday_url(@user_holiday)
    end

    assert_redirected_to user_holidays_url
  end
end
