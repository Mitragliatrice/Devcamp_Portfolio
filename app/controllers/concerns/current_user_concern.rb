module CurrentUserConcern
  extend ActiveSupport::Concern

  ## NULL object pattern to create guest user
  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest User", 
                            first_name: "Guest", 
                            last_name: "User", 
                            email: "guest.user@example.com"
                            )
  end
end