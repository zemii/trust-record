Rails.application.routes.draw do
  resources :rentals
  get 'top/rentaled'
  root 'top#top'
end
