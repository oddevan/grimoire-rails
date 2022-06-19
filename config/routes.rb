Rails.application.routes.draw do
  defaults format: :json do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
    root "info#index"

    get 'printing/:grimoire_id', to: 'printings#show', grimoire_id: /[a-z]{3}-[a-z0-9]{3}-[0-9a-z\-]+/
  
    scope '/build' do
      scope '/routes' do
        get 'printings', to: 'printings#all_ids'
        get 'sets', to: 'card_sets#all_slugs'
      end
    end
  end
end
