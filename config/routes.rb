Rails.application.routes.draw do

  namespace :public do
    get 'relationships/followings'
    get 'relationships/followers'
  end
    # 会員用
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  #guest用
  devise_scope :customer do
    post 'customers/guest_sign_in', to: 'guest/sessions#guest_sign_in'
  end

  # 管理者用
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    resources :customers, only: [:index, :edit, :show, :update]
  end

  scope module: :public do
    root to: "homes#top"
    resources :ramens, only: [:new, :index, :edit, :create] do
      resource :favorites, only: [:create, :destroy]
    end
    resources :customers, only: [:index, :edit, :show, :update] do
      resource :relationships, only: [:create, :destroy]
      get 'followings' => 'relationships#followings', as: 'followings'
      get 'followers' => 'relationships#followers', as: 'followers'
    end
    get 'customers/:id/unsubscribe' => 'customers#unsubscribe', as: 'unsubscribe'
    patch 'customers/:id/withdraw' => 'customers#withdraw', as: 'withdraw'
    get "search" => "searches#search"
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
