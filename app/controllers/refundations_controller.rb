class RefundationsController < ApplicationController
  def accept
    app = Application.find(params[:format])
    app.update_attribute :acceptance, true
    refundation = Refundation.new()
    refundation.name = app.name
    refundation.amount_of_money = (app.amount_of_money*Category.find(app.category_id).percent)/100
    refundation.user_id = app.user_id
    refundation.category_id = app.category_id
    refundation.save
    redirect_to root_path
  end

  def refundation_params
    params.require(:refundation).permit()
  end
end
