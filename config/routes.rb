Ticker::Application.routes.draw do

  root to: "static#home"

  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
      resources :dashboards, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
