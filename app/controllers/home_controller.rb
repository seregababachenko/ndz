class HomeController < ApplicationController
  def index
  end

  def private_office
    render 'home/private_office'
  end

  def contact_us
    UserEmails.contact_us_form({:name => params[:name], :email => params[:email], :subject => params[:subject], :message => params[:message]}).deliver
    render :nothing => true
  end
end
