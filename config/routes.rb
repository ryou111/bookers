Rails.application.routes.draw do
  resources :books, :except => :edit
  get '/top' => 'homes#top'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:book' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
