Rails.application.routes.draw do
  resource :replace_form, only: [:new, :create]
end
