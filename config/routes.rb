Rails.application.routes.draw do
  devise_for :users, path: 'users'
  devise_for :doctors, path: 'doctors'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  devise_scope :doctor do
    get '/doctors/sign_out' => 'devise/sessions#destroy'
  end

  root "professions#index"

  resources :professions
  # resources :doctors
  resources :appointments do
    resources :advices
  end

end
