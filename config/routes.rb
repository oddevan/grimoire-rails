Rails.application.routes.draw do
  devise_for :users

  defaults format: :json do  
    root "info#index"

    resources :printings, constraints: { id: /[a-z]{3}-[a-z0-9]{3}-[0-9a-z\-]+/ }, only: [:show] do
      member do
        get 'price'
        get 'link'
      end
    end

    get 'sets', to: 'card_sets#index'
    get 'sets/:slug', to: 'card_sets#show', slug: /[0-9a-z\-]+/
    get 'sets/:slug/cards', to: 'printings#by_set', slug: /[0-9a-z\-]+/
  
    scope '/routes' do
      get 'printings', to: 'printings#all_ids'
      get 'sets', to: 'card_sets#all_slugs'
    end
  end
end
