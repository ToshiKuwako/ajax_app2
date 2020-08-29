class PostsController < ApplicationController
  def index #indexアクションの定義
    @posts = Post.all.order(id: "DESC")
  end
  
  def create
    Post.create(content: params[:content]) #contentがテーブルのカラム名、params[:content]はparamsとして送られてきたデータ
    redirect_to action: :index
  end
  
  def checked
    post = Post.find(params[:id])
    if post.checked 
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end

end
