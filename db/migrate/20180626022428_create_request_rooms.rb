class CreateRequestRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :request_rooms do |t|
      t.text :house_adress
      t.text :other_house_details
      t.blob :house_image
      t.string :room_availability
      t.integer :number_people_in_Room
      t.decimal :room_cost
      t.text :other_room_details
      t.blob :room_image

      t.timestamps
    end
  end
end
