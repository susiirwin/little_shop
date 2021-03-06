class Admin::BaseController < ApplicationController
  before_action :require_admin

  def require_admin
    if current_default_user? || !logged_in?
      render :file => "public/404.html", status: :not_found
    end
  end

end
