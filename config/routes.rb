Rails.application.routes.draw do
  get 'users' => 'users#index'
  get 'users/:user_id' => 'users#show'

  get 'decks' => 'decks#index'
  get 'decks/:deck_id' => 'decks#show'

  get 'decks/:deck_id/cards' => 'cards#index'
  get 'decks/:deck_id/cards/:card_id' => 'cards#show'

  get 'tag' => 'tags#index'
  get 'tag/:tag_id' => 'tags#show'
end
