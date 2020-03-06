class PostsController < ApplicationController
  before_action :authenticate_user!
  def show
    @post = Post.find(params[:id])
    @post_answers = Post.where(ParentId: @post.Id)
  end
  def index
    p params[:current_answer]
    @post_answers_length = Post.where(ParentId: params[:post_id]).count()
    @post_answers = Post.where(ParentId: params[:post_id]).offset(params[:current_answer].to_i).first
    @post_summaries = PostSummary.find_by(post: @post_answers) || PostSummary.new(post: @post_answers)
  end
  def question_summariser
    @post = Post.find(params[:post_id])
    @post_summaries = PostSummary.joins(:post).where(posts: { ParentId: params[:post_id]})
    @new_post_summary = PostSummary.find_by(post: @post) || PostSummary.new(post: @post)
  end
end
