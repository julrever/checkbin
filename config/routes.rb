Rails.application.routes.draw do
  resources :index_page, :path => "" do
    collection do
      get 'countries'
      get 'brands'
    end
  end

  get 'index_page/index'


  root 'index_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
