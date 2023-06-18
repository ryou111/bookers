Rails.application.routes.draw do
  resources :books
  get '/top' => 'homes#top'
  get 'books/:id/edit' => 'books#edit' , as: 'edit_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
