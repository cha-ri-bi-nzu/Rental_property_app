Rails.application.routes.draw do
  get 'properties/index'
  get 'properties/new'
  get 'properties/create'
  get 'properties/show'
  get 'properties/edit'
  get 'properties/update'
  get 'properties/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
