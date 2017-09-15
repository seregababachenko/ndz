class UserEmails < ActionMailer::Base
  default from: 'office@nashdom.zp.ua'
  def contact_us_form(options)
    @name = options[:name]
    @email = options[:email]
    @message = options[:message]
    mail(to: 'office@nashdom.zp.ua',
         subject: options[:subject],
         content_type: "text/html") if !Rails.env.test?
  end
end
