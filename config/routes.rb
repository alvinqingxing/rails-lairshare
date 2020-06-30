Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/show'
  get 'bookings/accept'
  get 'bookings/reject'
  get 'users/index'
  get 'users/new'
  get 'users/create'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'lairs/index'
  get 'lairs/new'
  get 'lairs/create'
  get 'lairs/show'
  get 'lairs/edit'
  get 'lairs/update'
  get 'lairs/destroy'
  get 'dashboards/dashboard'
  devise_for :users
  root to: 'pages#home'
  get    "dashboard",          to: "dashboard#dashboard", as: :dashboard

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get    "lairs/index",          to: "lairs#index"
  get    "lairs/new",      to: "lairs#new",  as: :new_lair
  post   "lairs",          to: "lairs#create"
  # NB: The `show` route needs to be *after* `new` route.
  get    "lairs/:lair_id",      to: "lairs#show", as: :lair
  get    "lairs/:lair_id/edit", to: "lairs#edit", as: :edit_lair
  patch  "lairs/:lair_id",      to: "lairs#update"
  delete "lairs/:lair_id",      to: "lairs#destroy"

# user---------------------------------------------
  get    "users",          to: "users#index" #admin
  get    "users/new",      to: "users#new",  as: :new_user
  post   "users",          to: "users#create"
  # NB: The `show` route needs to be *after* `new` route.
  get    "users/:user_id",      to: "users#show", as: :user
  get    "users/:user_id/edit", to: "users#edit", as: :edit_user
  patch  "users/:user_id",      to: "users#update"
  delete "users/:user_id",      to: "users#destroy"

  # booking------------------------------------------
  get    "bookings",          to: "bookings#index"
  get    "bookings/new",      to: "bookings#new",  as: :new_booking
  post   "bookings",          to: "bookings#create"
  # NB: The `show` route needs to be *after* `new` route.
  get    "bookings/:booking_id",      to: "bookings#show", as: :booking
  patch  "bookings/:booking_id/accept",      to: "bookings#accept", as: :booking_accept
  patch  "bookings/:booking_id/reject",      to: "bookings#reject", as: :booking_reject

  # Favourite
  post   "lairs/:lair_id/favourites/new",  to: "lairs#fave"
  get    "favourite",          to: "favourites#index"

end
