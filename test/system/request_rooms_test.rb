require "application_system_test_case"

class RequestRoomsTest < ApplicationSystemTestCase
  setup do
    @request_room = request_rooms(:one)
  end

  test "visiting the index" do
    visit request_rooms_url
    assert_selector "h1", text: "Request Rooms"
  end

  test "creating a Request room" do
    visit request_rooms_url
    click_on "New Request Room"

    fill_in "House Adress", with: @request_room.house_adress
    fill_in "House Image", with: @request_room.house_image
    fill_in "Number People In Room", with: @request_room.number_people_in_Room
    fill_in "Other House Details", with: @request_room.other_house_details
    fill_in "Other Room Details", with: @request_room.other_room_details
    fill_in "Room Availability", with: @request_room.room_availability
    fill_in "Room Cost", with: @request_room.room_cost
    fill_in "Room Image", with: @request_room.room_image
    click_on "Create Request room"

    assert_text "Request room was successfully created"
    click_on "Back"
  end

  test "updating a Request room" do
    visit request_rooms_url
    click_on "Edit", match: :first

    fill_in "House Adress", with: @request_room.house_adress
    fill_in "House Image", with: @request_room.house_image
    fill_in "Number People In Room", with: @request_room.number_people_in_Room
    fill_in "Other House Details", with: @request_room.other_house_details
    fill_in "Other Room Details", with: @request_room.other_room_details
    fill_in "Room Availability", with: @request_room.room_availability
    fill_in "Room Cost", with: @request_room.room_cost
    fill_in "Room Image", with: @request_room.room_image
    click_on "Update Request room"

    assert_text "Request room was successfully updated"
    click_on "Back"
  end

  test "destroying a Request room" do
    visit request_rooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request room was successfully destroyed"
  end
end
