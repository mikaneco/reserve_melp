Rails.application.routes.draw do
  namespace :management do
    get 'clinics/show'
    get 'clinics/edit'
  end
  devise_for :staffs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :service do
    get 'sign_up' => 'sign_up#new'
    post 'sign_up/confirm'
    post 'sign_up/create'
  end
end
