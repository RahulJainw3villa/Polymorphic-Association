Rails.application.routes.draw do

  
    root 'articles#index'

     resources :articles do
      resources :comments, module: :articles
     end
     
     resources :brodcasts do
      resources :comments,module: :brodcasts
     end

     resources :events do
      resources :comments, module: :events
    end
    
     resources :comments
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
