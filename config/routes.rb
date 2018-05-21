Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users
  # ROOT
  authenticated :user do
    root to: "pages#home", as: :authenticated_root
  end
  unauthenticated do
    root 'pages#landing'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
