Rails.application.routes.draw do
  namespace :public do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end
  namespace :public do
    resources :ramens, only: [:new, :index, :edit, :create]
    resources :customers, only: [:index, :edit, :show, :update]
    get 'customers/:id/unsubscribe' => 'customers#unsubscribe'
    patch 'customers/:id/withdraw' => 'customers#withdraw'
  end

  namespace :public do
    root to: "homes#top"
  end
  # 会員用
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # 管理者用
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
