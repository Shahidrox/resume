class WilcomeController < ApplicationController
  layout "home"

  def index
  end

  def send_mail()
	  @data = {
      :name => params[:name], 
      :email => params[:email],  
      :message => params[:message]
    }
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.welcome_email(@data).deliver
    UserMailer.your_mail(@data).deliver
    redirect_to :action => :index
  end

end
