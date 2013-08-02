class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
    @number_of_comments = Comment.count()
    # shterev  = Comment.find_by_commenter('shterev')
    # shterev.commenter = 'Yordan Shterev'
    # shterev.save

	end
end