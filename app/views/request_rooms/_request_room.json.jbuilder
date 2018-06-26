json.extract! request_room, :id, :house_adress, :other_house_details, :house_image, :room_availability, :number_people_in_Room, :room_cost, :other_room_details, :room_image, :created_at, :updated_at
json.url request_room_url(request_room, format: :json)
