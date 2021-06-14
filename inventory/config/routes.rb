Rails.application.routes.draw do
  resources :single_item_types_physical_states
  root "welcome#index"
  get 'welcome/index'
  resources :single_items_physical_states
  resources :collection_items
  resources :physical_states
  resources :sample_compositions
  resources :sample_composition_types
  resources :collection_types
  resources :single_item_types
  resources :single_items
  resources :samples
  resources :sample_types
  resources :collections
  resources :containers
  resources :container_types
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
