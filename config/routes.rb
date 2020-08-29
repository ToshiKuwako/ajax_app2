Rails.application.routes.draw do
  root to: 'posts#index'#  [HTTPメソッド] '[URIパターン]', to: '[コントローラー名]#[アクション名]' #postsというパスに、GETメソッドでリクエストが送られてきたとき、postsコントローラーのindexアクションを呼び出すという意味  
  post 'posts', to: 'posts#create'
  get 'posts/:id', to: 'posts#checked'
end
