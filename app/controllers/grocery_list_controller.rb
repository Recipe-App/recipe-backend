class GroceryListController < ApplicationController
  before_action :authenticate_user

  def text
    message = text_message_params[:message]
    TwilioTextMessenger.new(message).call
    render json: { message: "SUCCESS!" }, status: 201
  end


  private
  def text_message_params
   params.require(:text).permit(:message)
  end

end
