Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants, only: %i[create index new show] do
    resources :reviews, only: %i[create new]
  end
end
