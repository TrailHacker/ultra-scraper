UltraScraper::Application.routes.draw do

  resources :runners
  resources :races

  # Sample resource route with sub-resources:
  resources :races do
    resources :runners
  end

end
