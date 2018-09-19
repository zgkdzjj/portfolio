Rails.application.routes.draw do
  resources :ports, except: [:show]
  get 'port/:id', to: 'ports#show', as: 'port_show'
  

  # customise routes
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'


  resources :blogs do
    member do 
      get 'toggle_status'
    end
  end

  
  root to: 'pages#home'
end
