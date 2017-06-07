Rails.application.routes.draw do

  resources :home

  resources :rsvps do
    collection do
      post 'find_rsvp'
      get 'find_rsvp'
    end
  end

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
