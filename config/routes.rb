RailsbridgeSite2013::Application.routes.draw do

  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)

  root to: 'static_pages#home'

  get '/about',              to: 'static_pages#about',              as: 'about'
  get '/about/team',         to: 'static_pages#team',               as: 'team'
  get '/about/sponsors',     to: 'static_pages#sponsors',           as: 'sponsors'
  get '/about/chapters',     to: 'static_pages#chapters',           as: 'chapters'
  get '/about/past-events',  to: 'static_pages#past_events',        as: 'past_events'
  get '/about/projects',     to: 'static_pages#projects',           as: 'projects'

  get '/help',               to: 'static_pages#help',               as: 'help'
  get '/help/teach',         to: 'static_pages#teach',              as: 'teach'
  get '/help/teacher-advice',to: 'static_pages#teacher_advice',     as: 'teacher_advice'
  get '/help/organize',      to: 'static_pages#organize',           as: 'organize'
  get '/help/host',          to: 'static_pages#host',               as: 'host'
  get '/help/donor-faq',     to: 'static_pages#donor_faq',          as: 'donor_faq'
  get '/help/interest-form', to: 'static_pages#interest_form',      as: 'interest_form'

  get '/learn',              to: 'static_pages#learn',              as: 'learn'
  get '/learn/resources',    to: 'static_pages#learning_resources', as: 'learning_resources'
  get '/learn/faq',          to: 'static_pages#learning_faq',       as: 'learning_faq'
  get '/learn/events',       to: 'static_pages#events',             as: 'events'

  get '/sitemap',            to: 'logistics#sitemap',               as: 'sitemap'

  match '/404',              to: 'logistics#error_404',             as: 'error_404'
  match '/500',              to: 'logistics#error_500',             as: 'error_500'

end
