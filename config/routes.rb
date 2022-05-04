Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      namespace 'auth' do
        resources :users, only: %i[create show update]
      end
    end
  end
end
