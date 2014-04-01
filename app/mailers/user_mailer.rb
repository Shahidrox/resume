class UserMailer < ActionMailer::Base
  default from: "rox.shahid@gmail.com"

  def welcome_email(data)
  	@data = data
  	@name = @data[:name]
    @email = @data[:email]
    @message = @data[:message]
	  @site_name = "localhost:3000"
	  mail(to: "rox.shahid@gmail.com")
	
  end

  def your_mail(data)
    @data = data
    @name = @data[:name]
    @email = @data[:email]
    @message = @data[:message]
    @site_name = "localhost:3000"
    mail(to: "#{@email}")
  end
    
end
