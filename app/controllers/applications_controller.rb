class ApplicationsController < ApplicationController
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
