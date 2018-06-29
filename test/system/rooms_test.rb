require "application_system_test_case"

class RoomsTest < ApplicationSystemTestCase
  setup do
    @room = rooms(:one)
  end

  test "visiting the index" do
    visit rooms_url
    assert_selector "h1", text: "Rooms"
  end

  test "creating a Room" do
    visit rooms_url
    click_on "New Room"

    fill_in "House Adress", with: @room.house_adress
    fill_in "Number People In Room", with: @room.number_people_in_Room
    fill_in "Other House Details", with: @room.other_house_details
    fill_in "Other Room Details", with: @room.other_room_details
    fill_in "Room Availability", with: @room.room_availability
    fill_in "Room Cost", with: @room.room_cost
    click_on "Create Room"

    assert_text "Room was successfully created"
    click_on "Back"
  end

  test "updating a Room" do
    visit rooms_url
    click_on "Edit", match: :first

    fill_in "House Adress", with: @room.house_adress
    fill_in "Number People In Room", with: @room.number_people_in_Room
    fill_in "Other House Details", with: @room.other_house_details
    fill_in "Other Room Details", with: @room.other_room_details
    fill_in "Room Availability", with: @room.room_availability
    fill_in "Room Cost", with: @room.room_cost
    click_on "Update Room"

    assert_text "Room was successfully updated"
    click_on "Back"
  end

  test "destroying a Room" do
    visit rooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Room was successfully destroyed"
  end
end
