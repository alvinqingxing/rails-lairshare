Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get    "dashboard",          to: "pages#dashboard", as: :dashboard

  resources :lairs do
    resources :bookings, only: [:new, :create]
    resources :favourites, only: [:create]
  end

  resources :bookings, only: [:show] do
    member do 
      patch :accept
      patch :reject
    end
  end

  resources :users, only: [:index, :show]

  resources :favourites, only: [:destroy]

end

  # get    "lairs/index",          to: "lairs#index"
  # get    "lairs/new",      to: "lairs#new",  as: :new_lair
  # post   "lairs",          to: "lairs#create"
  # # NB: The `show` route needs to be *after* `new` route.
  # get    "lairs/:lair_id",      to: "lairs#show", as: :lair
  # get    "lairs/:lair_id/edit", to: "lairs#edit", as: :edit_lair
  # patch  "lairs/:lair_id",      to: "lairs#update"
  # delete "lairs/:lair_id",      to: "lairs#destroy"

# # user---------------------------------------------
#   get    "users",          to: "users#index" #admin
#   get    "users/:user_id",      to: "users#show", as: :user
  # get    "users/new",      to: "users#new",  as: :new_user #devise
  # post   "users",          to: "users#create" #devise
  # get    "users/:user_id/edit", to: "users#edit", as: :edit_user #devise
  # patch  "users/:user_id",      to: "users#update" #devise
  # delete "users/:user_id",      to: "users#destroy" #devise

  # booking------------------------------------------
  # get    "bookings",          to: "bookings#index" #see all in dashboard
  # get    "lairs/:lair_id/bookings/new",      to: "bookings#new",  as: :new_booking
  # post   "lairs/:lair_id/bookings",          to: "bookings#create"
  # # NB: The `show` route needs to be *after* `new` route.
  # get    "bookings/:booking_id",      to: "bookings#show", as: :booking
  # patch  "bookings/:booking_id/accept",      to: "bookings#accept", as: :booking_accept
  # patch  "bookings/:booking_id/reject",      to: "bookings#reject", as: :booking_reject

  # # Favourite
  # post   "lairs/:lair_id/favourites",  to: "favourites#create"
  # get    "favourite",          to: "favourites#index"
  # delete "favourites/:id",      to: "favourites#destroy"
