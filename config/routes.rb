Rails.application.routes.draw do

  resources :home do
    collection do
      post 'find_rsvp'
    end
  end

  resources :rsvps

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
