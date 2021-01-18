Rails.application.routes.draw do

  resources :school_classes, only: [:show, :new, :create, :edit, :update]
  resources :students, only: [:show, :new, :create, :edit, :update]

  patch 'school_class/:id', to: 'school_class#update'
  patch 'student/:id', to: 'student#update'
end