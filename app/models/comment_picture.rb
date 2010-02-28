class CommentPicture < ActiveRecord::Base
  has_attachment  :storage => :file_system, 
                  :content_type => :image,
                  :max_size => 1.megabytes,
                  :thumbnails => { :thumb => '80x80>', :tiny => '40x40>' }#,
                                    #:processor => :MiniMagick # attachment_fu looks in this order: ImageScience, Rmagick, MiniMagick

  validates_as_attachment # ok two lines if you want to do validation, and why wouldn't you?
  
  belongs_to :comment
end
