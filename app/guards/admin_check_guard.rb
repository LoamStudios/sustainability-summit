class AdminCheckGuard < Clearance::SignInGuard
  def call
    if admin?
      next_guard
    else
      failure("You must be given admin access before you can see the dashboard.")
    end
  end

  def admin?
    user_signed_in? && current_user.admin?
  end
end
