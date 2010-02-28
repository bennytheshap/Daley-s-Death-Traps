class AddCommentIdToCommentPicture < ActiveRecord::Migration
  def self.up
    add_column :comment_pictures, :comment_id, :integer
  end

  def self.down
    remove_column :comment_pictures, :comment_id
  end
end
