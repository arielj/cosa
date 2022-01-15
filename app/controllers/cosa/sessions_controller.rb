class Cosa::SessionsController < Cosa::CosaController
  skip_before_action :require_user
  skip_before_action :verify_authenticity_token, only: :create

  def new
  end

  def create
    user = User.find_or_create_from_auth_hash(auth_hash)
    session[:cosa_current_user_id] = user.id
    redirect_to cosa_root_path
  end

  def destroy
    @current_user = nil
    session[:cosa_current_user_id] = nil
    redirect_to cosa_login_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end