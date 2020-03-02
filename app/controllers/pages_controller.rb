class PagesController < ApplicationController
    PER = 5

    def index
        @posts = Post.where(user: current_user).page(params[:page]).per(PER)
    end
end
