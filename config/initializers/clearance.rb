Clearance.configure do |config|
  config.cookie_domain = '.sustainabilitysummit.mit.edu'
  config.routes = false
  config.mailer_sender = "reply@example.com"
  config.user_model = Person
  config.sign_in_guards = [AdminCheckGuard]
end
Clearance.configuration.redirect_url = "/admin"
Clearance::PasswordsController.layout 'layouts/admin/authentication'
Clearance::SessionsController.layout 'layouts/admin/authentication'
Clearance::UsersController.layout 'layouts/admin/authentication'
