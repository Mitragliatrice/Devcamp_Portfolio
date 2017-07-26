module CurrentUserConcern
  extend ActiveSupport::Concern

  ## NULL object pattern to create guest user
  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest.user@example.com"
    guest 
  end
end