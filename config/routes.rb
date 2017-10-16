Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'
  post 'contact_us' => 'home#contact_us'
  get 'home/private_office' => 'home#private_office'

end
