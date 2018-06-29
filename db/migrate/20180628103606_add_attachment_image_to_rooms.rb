class AddAttachmentImageToRooms < ActiveRecord::Migration[5.2]
  def self.up
    change_table :rooms do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :rooms, :image
  end
end
