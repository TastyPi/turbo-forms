Rails.application.routes.draw do
  resource :replace_form, only: [:new, :create]
  resource :internal_redirect, only: [:new, :create, :show]
  resource :external_redirect, only: [:new, :create]
end
