class RefundationsController < ApplicationController
  def accept
    refundation = Refundation.new()
    refundation.name = "nazwa"
    refundation.amount_of_money = params[:format]
    refundation.save
    redirect_to root_path
  end

  def refundation_params
    params.require(:refundation).permit()
  end
end
