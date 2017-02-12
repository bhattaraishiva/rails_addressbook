class AddAttachmentPictureUserToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :picture_user
    end
  end

  def self.down
    remove_attachment :users, :picture_user
  end
end
