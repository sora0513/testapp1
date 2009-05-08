class CommentsController < ApplicationController
  def create
    @post = Post.get(params[:post_id])
    @comment = Comment.create(:post_id => @post.key, :body => params[:body], :created_at => Time.now) 
    redirect_to :controller => 'posts', :action => 'show', :id => @post.key
  end
end
