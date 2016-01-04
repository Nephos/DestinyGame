Rails.application.routes.draw do
  resources :games
  get 'games/:id/play', to: 'games#play', as: 'play_game'
  get 'games/:id/play/:dice', to: 'games#play_dice', as: 'play_dice_game'
  resources :squares
end
