class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    if current_user.nil?
      redirect_to new_user_session_path
    else
      @applications = Application.all
    end
  end

  def new
    @application = Application.new
  end

  def reject
    app = Application.find(params[:format])
    app.update_attribute :acceptance, false
    redirect_to root_path
  end

  def create
    application = Application.new(application_params)
    application.user_id = current_user.id
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
