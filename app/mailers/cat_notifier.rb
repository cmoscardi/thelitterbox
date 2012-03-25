class CatNotifier < ActionMailer::Base
  default :from => "noreply@meowspace.heroku.com"
  
  def new_message(cat)
    @cat = cat
    mail(:subject => "Meowspace: You have a message!" :to => cat.email)
  end

  
    
end
