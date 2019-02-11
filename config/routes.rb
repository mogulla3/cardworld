Rails.application.routes.draw do
  get 'users' => 'users#index'
  get 'users/:user_id' => 'users#show'

  get 'decks' => 'decks#index'
  get 'decks/:id' => 'decks#show', as: :deck
  get 'decks/:id/edit' => 'decks#edit', as: :edit_deck
  put 'decks/:id' => 'decks#update', as: :update_deck

  get 'decks/:deck_id/cards' => 'cards#index'
  get 'decks/:deck_id/cards/:card_id' => 'cards#show'

  get 'tags' => 'tags#index'
  get 'tags/:tag_id' => 'tags#show'
end
