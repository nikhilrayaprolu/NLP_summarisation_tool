Rails.application.routes.draw do
  devise_for :users
  mount PiccoBlog::Engine => "/blog"
  mount Thredded::Engine => '/forum'
  root to: 'home#index'
  get 'home/index'
  get '/question_summary/:post_id', to: 'posts#question_summariser', as: 'question_summariser'
  get '/post/:post_id/answers/:current_answer', to: 'posts#index', as: 'post_answer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :post, controller: :posts
  resources :posts do
    resources :post_summaries
  end
end
