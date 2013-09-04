require_dependency "blorgh/application_controller"

module Blorgh
  class CommentsController < ApplicationController
    
    def create
      @post = Post.find(comment_params[:post_id])
      @comment = @post.comments.create(comment_params[:comment])
      flash[:notice] = "Comment has been created!"
      redirect_to posts_path
    end
    
    private
      # Only allow a trusted parameter "white list" through.
      def comment_params
        params.permit(:post_id, comment: [:text])
      end
  end
end
