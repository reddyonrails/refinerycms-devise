::Refinery::Application.routes.draw do

  devise_for :users

  match '/users/reset/:reset_code', :to => 'users#reset', :as => 'reset_users'
#  resources :users, :only => [:new, :create] do
#    collection do
#      get :forgot
#      post :forgot
#    end
#  end

  devise_scope :users do

    get "log_in", :to => "devise/sessions#new"
    post "log_in", :to => "devise/sessions#create"
    get "logout", :to => "devise/sessions#destroy"

  end

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :users, :except => :show
  end
end
