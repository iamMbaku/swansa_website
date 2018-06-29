class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.text :house_adress
      t.text :other_house_details
      t.string :room_availability
      t.integer :number_people_in_Room
      t.integer :room_cost
      t.text :other_room_details

      t.timestamps
    end
  end
end
