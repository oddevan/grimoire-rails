Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users

  defaults format: :json do  
    root "info#index"

    resources :printings, constraints: { id: /[a-z]{3}-[a-z0-9]{3}-[0-9a-z\-]+/ }, only: [:show] do
      member do
        get 'price'
        get 'link'
      end
    end

    get 'users/me', to: 'info#me'

    resources :sets, constraints: { id: /[0-9a-z\-]+/ }, only: [:index, :show] do
      member do
        get 'cards', to: 'printings#by_set'
      end
    end
  
    scope '/routes' do
      get 'printings', to: 'printings#all_ids'
      get 'sets', to: 'card_sets#all_slugs'
    end
  end
end
