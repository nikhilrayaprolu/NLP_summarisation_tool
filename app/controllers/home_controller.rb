class HomeController < ApplicationController
  def index
    @posts = Post.where(PostTypeId: 1).paginate(page: params[:page], per_page: 30)
  end
end
