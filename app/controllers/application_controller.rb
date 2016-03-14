class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @applications = Application.all
  end

  def new
    @application = Application.new
  end

  def create
    application = Application.new(application_params)
    application.user_id = current_user.id
    application.acceptance = false
    if application.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def application_params
    params.require(:application).permit(:name,:amount_of_money,:category_id)
  end
end
