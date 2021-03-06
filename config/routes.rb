Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :new, :edit, :update, :show] do
      resources :photos, only: [:new, :edit, :destroy, :update]
    end
    resource :session, only: [:new, :create, :destroy]
    resources :photos, only: [:show,  :index, :create]
  end
end
