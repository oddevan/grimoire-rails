Rails.application.routes.draw do
  defaults format: :json do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
    root "info#index"
  
    get 'build/routes/printings', to: 'printings#all_ids'
  end
end
