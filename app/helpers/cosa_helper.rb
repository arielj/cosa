module CosaHelper
  def current_user
    @current_user
  end

  def logged_in?
    current_user.present?
  end
end
