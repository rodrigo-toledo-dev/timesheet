require "application_system_test_case"

class UserHolidaysTest < ApplicationSystemTestCase
  setup do
    @user_holiday = user_holidays(:one)
  end

  test "visiting the index" do
    visit user_holidays_url
    assert_selector "h1", text: "User Holidays"
  end

  test "creating a User holiday" do
    visit user_holidays_url
    click_on "New User Holiday"

    fill_in "Holiday", with: @user_holiday.holiday_id
    fill_in "User", with: @user_holiday.user_id
    click_on "Create User holiday"

    assert_text "User holiday was successfully created"
    click_on "Back"
  end

  test "updating a User holiday" do
    visit user_holidays_url
    click_on "Edit", match: :first

    fill_in "Holiday", with: @user_holiday.holiday_id
    fill_in "User", with: @user_holiday.user_id
    click_on "Update User holiday"

    assert_text "User holiday was successfully updated"
    click_on "Back"
  end

  test "destroying a User holiday" do
    visit user_holidays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User holiday was successfully destroyed"
  end
end
