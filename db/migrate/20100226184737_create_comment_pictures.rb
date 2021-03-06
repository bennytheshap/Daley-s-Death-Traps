class CreateCommentPictures < ActiveRecord::Migration
  def self.up
    create_table :comment_pictures do |t|
      t.column :filename,     :string
      t.column :content_type, :string
      t.column :size,         :integer
      t.column :width,        :integer
      t.column :height,       :integer
      t.column :parent_id,    :integer
      t.column :thumbnail,    :string
      t.column :created_at,   :datetime
    end    
  end

  def self.down
    drop_table :comment_pictures
  end

end
