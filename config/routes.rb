Rails.application.routes.draw do
  get "banner", to: "banners#index"

  get "/program/:id", to: "programs#show", as: :program_year
  resource :program, only: [:show]
  resources :programs, only: [:show]

  get "/photos/:id", to: "photos#index", as: :photos_year
  resources :photos, only: [:index]

  get "/sponsors/:id", to: "sponsors#index", as: :sponsor_year
  resources :sponsors, only: [:index]
  
  get "/team/:id", to: "teams#show", as: :team_year
  resource :team, only: [:show]
  resources :teams, only: [:show]
  
  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end

    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end

  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "users#new", as: "sign_up"
end
