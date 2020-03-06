class PostSummariesController < ApplicationController
  def new
  end

  def create
    @post = Post.find(params[:post_id])
    @post_summary = @post.build_post_summary(summary_params)
    @post_summary.save
    redirect_back fallback_location: @post
  end
  def summary_params
    params.require(:post_summary).permit(:abstractive, :extractive)
  end
  def update
    @post = Post.find(params[:post_id])
    @post_summary = @post.post_summary.update_attributes(summary_params)
    redirect_back fallback_location: @post
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end
end
