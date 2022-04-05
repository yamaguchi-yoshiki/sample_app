Rails.application.routes.draw do
  # top
  get 'top' => 'homes#top'

  # 新規投稿
  get 'lists/new'
  post 'lists' => 'lists#create'

  # 一覧
  get 'lists' => 'lists#index'

  # 詳細
  get 'lists/:id' => 'lists#show', as: 'list'

  # 編集
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  patch 'lists/:id' => 'lists#update', as: 'update_list'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
