Crud::Application.routes.draw do
  
  root :to => 'welcome#index'

  resources :schools
  resources :teachers
  resources :students

end

#         root        /                            welcome#index
#      schools GET    /schools(.:format)           schools#index
#              POST   /schools(.:format)           schools#create
#   new_school GET    /schools/new(.:format)       schools#new
#  edit_school GET    /schools/:id/edit(.:format)  schools#edit
#       school GET    /schools/:id(.:format)       schools#show
#              PUT    /schools/:id(.:format)       schools#update
#              DELETE /schools/:id(.:format)       schools#destroy
#     teachers GET    /teachers(.:format)          teachers#index
#              POST   /teachers(.:format)          teachers#create
#  new_teacher GET    /teachers/new(.:format)      teachers#new
# edit_teacher GET    /teachers/:id/edit(.:format) teachers#edit
#      teacher GET    /teachers/:id(.:format)      teachers#show
#              PUT    /teachers/:id(.:format)      teachers#update
#              DELETE /teachers/:id(.:format)      teachers#destroy
#     students GET    /students(.:format)          students#index
#              POST   /students(.:format)          students#create
#  new_student GET    /students/new(.:format)      students#new
# edit_student GET    /students/:id/edit(.:format) students#edit
#      student GET    /students/:id(.:format)      students#show
#              PUT    /students/:id(.:format)      students#update
#              DELETE /students/:id(.:format)      students#destroy