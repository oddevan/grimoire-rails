Rails.application.routes.draw do
  defaults format: :json do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
    # Defines the root path route ("/")
    # root "articles#index"
  
    get 'build/routes/printings', to: 'printings#all_ids'
  end
end
