Clearance.configure do |config|
  config.cookie_domain = '.sustainabilitysummit.mit.edu'
  config.routes = false
  config.mailer_sender = "reply@example.com"
  config.user_model = Person
end
Clearance.configuration.redirect_url = "/admin"
Clearance::PasswordsController.layout 'layouts/admin/authentication'
Clearance::SessionsController.layout 'layouts/admin/authentication'
Clearance::UsersController.layout 'layouts/admin/authentication'
