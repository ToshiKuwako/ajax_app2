class PostsController < ApplicationController
  def index #indexアクションの定義
    @posts = Post.all 
  end

  def new
  end

  def create
    Post.create(content: params[:content]) #contentがテーブルのカラム名、params[:content]はparamsとして送られてきたデータ
  end
end
