Rails.application.routes.draw do
  get "banner", to: "banners#index"

  get "/program/:id", to: "programs#show", as: :program_year
  resource :program, only: [:show]
  resources :programs, only: [:show]

  resources :photos
  resources :sponsors, only: [:index]
  
  get "/program/:id", to: "teams#show", as: :team_year
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

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
end
