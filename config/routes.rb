Rails.application.routes.draw do
  resources :rentals
  root 'top#top'
end
