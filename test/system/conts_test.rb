require "application_system_test_case"

class ContsTest < ApplicationSystemTestCase
  setup do
    @cont = conts(:one)
  end

  test "visiting the index" do
    visit conts_url
    assert_selector "h1", text: "Conts"
  end

  test "should create cont" do
    visit conts_url
    click_on "New cont"

    fill_in "Email", with: @cont.email
    fill_in "Frist name", with: @cont.frist_name
    fill_in "Last name", with: @cont.last_name
    fill_in "Number", with: @cont.number
    click_on "Create Cont"

    assert_text "Cont was successfully created"
    click_on "Back"
  end

  test "should update Cont" do
    visit cont_url(@cont)
    click_on "Edit this cont", match: :first

    fill_in "Email", with: @cont.email
    fill_in "Frist name", with: @cont.frist_name
    fill_in "Last name", with: @cont.last_name
    fill_in "Number", with: @cont.number
    click_on "Update Cont"

    assert_text "Cont was successfully updated"
    click_on "Back"
  end

  test "should destroy Cont" do
    visit cont_url(@cont)
    click_on "Destroy this cont", match: :first

    assert_text "Cont was successfully destroyed"
  end
end
