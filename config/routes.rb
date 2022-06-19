Rails.application.routes.draw do
  defaults format: :json do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
    root "info#index"
  
    scope '/build' do
      scope '/routes' do
        get 'printings', to: 'printings#all_ids'
        get 'sets', to: 'card_sets#all_slugs'
      end
    end
  end
end
