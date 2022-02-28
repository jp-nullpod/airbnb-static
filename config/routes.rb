Rails.application.routes.draw do
  root to: "flats#home"
  get 'flats/:id', to: 'flats#show', as: :flat
end
