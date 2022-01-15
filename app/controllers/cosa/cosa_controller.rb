class Cosa::CosaController < ApplicationController
  before_action :require_user

  layout "cosa"

  private

  def require_user
    current_user_id = session[:cosa_current_user_id]
    unless current_user_id
      redirect_to cosa_login_path and return
    end

    @current_user = User.find_by(id: current_user_id)
    unless @current_user
      redirect_to cosa_login_path and return
    end
  end
end
