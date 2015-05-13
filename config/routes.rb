RmdTemplate::Application.routes.draw do
  root :to => 'home#index'

  devise_for :users,
    :skip       => [:registrations],
    :path       => '/user',
    :path_names => {
      sign_in:  '/login',
      sign_out: '/logout'
    } do
  end
end
