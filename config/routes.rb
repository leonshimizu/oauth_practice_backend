Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "news" => "pages#index"

  get "/auth/github/callback" => "github#authorize"
  get "/github_profile" => "github#profile"
end
