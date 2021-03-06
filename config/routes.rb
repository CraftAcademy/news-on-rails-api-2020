Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/v1/auth'
  
  namespace :api do
    namespace :v1 do
      resources :articles, only: [:index, :show ],  constraints: { format: 'json' }
      resources :subscriptions, only: [:create], constraints: { format: 'json' }
      namespace :admin do
        resources :articles, only: [:index, :create, :update],  constraints: { format: 'json' }
      end
    end
  end
end