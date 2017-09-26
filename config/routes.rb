Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get 'admin', to: 'devise/sessions#new'
  end

  get 'welcome/index'
  get 'bookings/index_month' => 'bookings#index_month'
  get 'confirmation', to: "welcome#thankyou"

  resources :bookings do
    resources :booking_steps
  end

  root to: 'welcome#index'
end
