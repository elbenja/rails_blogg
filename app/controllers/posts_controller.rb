class PostsController < ApplicationController
 before_action :set_post, only: [:show, :edit, :update, :destroy]

	def index
		@posts = Post.all.order('created_at DESC')
	end

	def new
	end

	def show
	end
	def create
		@post = Post.new(post_params)
		@post.save

		redirect_to @post
	end

private
 def set_post
      @post = Post.find(params[:id])
    end
def post_params
	params.require(:post).permit(:title, :body)
end

end
