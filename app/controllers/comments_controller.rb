class CommentsController < ApplicationController
  def post_and_upload
    @car = Car.find(params[:id])
   
    @comment = Comment.new(params[:comment])
    @comment.created_at = Time.now
    @car.comments << @comment
    
    @comment_picture = CommentPicture.new(params[:picture])
    @comment_picture.comment = @comment
    @comment_picture.save
    
    responds_to_parent do
      render :update do |page|
        page.insert_html :bottom, 'comments', :partial => 'comments/comment', :locals => {:comment => @comment}
        page.visual_effect :highlight, :comments, :duration => 3
      end
    end
  end
end
