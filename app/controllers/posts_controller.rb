class PostsController < ApplicationController
    before_action :require_login

    def new
        @post = Post.new
    end

    def create
        @post = current_user.posts.new(post_params)

        if @post.save
            redirect_to '/', success: '投稿しました'
        else
            flash.now[:danger] = '投稿に失敗しました'
            render :new
        end
    end

    private

    def post_params
        params.require(:post).permit(:image, :title, :description)
    end

    def require_login
        redirect_to '/' if current_user.blank?
    end

end
