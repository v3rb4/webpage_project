class ContactRequestsController < ApplicationController
  def new
    @contact_request = ContactRequest.new
  end

  def create
    @contact_request = ContactRequest.new(contact_request_params)
    if @contact_request.save
      redirect_to contact_path, notice: 'Thank you for your message!'
    else
      render :new
    end
  end

  private

  def contact_request_params
    params.require(:contact_request).permit(:name, :email, :message)
  end
end