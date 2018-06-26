require 'test_helper'

class RequestRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_room = request_rooms(:one)
  end

  test "should get index" do
    get request_rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_request_room_url
    assert_response :success
  end

  test "should create request_room" do
    assert_difference('RequestRoom.count') do
      post request_rooms_url, params: { request_room: { house_adress: @request_room.house_adress, house_image: @request_room.house_image, number_people_in_Room: @request_room.number_people_in_Room, other_house_details: @request_room.other_house_details, other_room_details: @request_room.other_room_details, room_availability: @request_room.room_availability, room_cost: @request_room.room_cost, room_image: @request_room.room_image } }
    end

    assert_redirected_to request_room_url(RequestRoom.last)
  end

  test "should show request_room" do
    get request_room_url(@request_room)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_room_url(@request_room)
    assert_response :success
  end

  test "should update request_room" do
    patch request_room_url(@request_room), params: { request_room: { house_adress: @request_room.house_adress, house_image: @request_room.house_image, number_people_in_Room: @request_room.number_people_in_Room, other_house_details: @request_room.other_house_details, other_room_details: @request_room.other_room_details, room_availability: @request_room.room_availability, room_cost: @request_room.room_cost, room_image: @request_room.room_image } }
    assert_redirected_to request_room_url(@request_room)
  end

  test "should destroy request_room" do
    assert_difference('RequestRoom.count', -1) do
      delete request_room_url(@request_room)
    end

    assert_redirected_to request_rooms_url
  end
end
