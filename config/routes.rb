Rails.application.routes.draw do
  namespace :management do
    get 'clinics/show'
    get 'clinics/edit'
  end

  devise_for :staffs, skip: :all

  devise_scope :staff do
    get "login", to: 'staffs/sessions#new', as: :new_staff_session
    post "login", to: 'staffs/sessions#create', as: :staff_session
    get 'sign_up', to: 'staffs/registrations#new'
    post 'sign_up', to: 'staffs/registrations#create', as: :staff_registration
    get 'sign_up/complete', to: 'staffs/registrations#complete'
    get 'password', to: 'staffs/passwords#new', as: :new_staff_password
    post 'password', to: 'staffs/passwords#create', as: :staff_password
  end
end
