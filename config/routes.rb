Rails.application.routes.draw do
  resource :set_temp

  root to: "dashboard#index"
end
