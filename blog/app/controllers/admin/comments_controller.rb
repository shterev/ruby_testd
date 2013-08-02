class Admin::CommentsController < Admin::BaseController
  

  def create
    @post     = Post.find(params[:post_id])
    @comment  = @post.comments.build(params[:comment].permit(:commenter, :body))

    if @comment.save
      redirect_to post_path(@post)
    else
      render 'posts/show'
    end
  end

  def destroy
   @post = Post.find(params[:post_id])
   @comment = @post.comments.find(params[:id]).destroy
   @comment.destroy
   redirect_to post_path(@post)
  end

end
