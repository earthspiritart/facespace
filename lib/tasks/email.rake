desc "sends email to all users"

task email_users: :environment do
  
  User.all.each do|user|
  Usermailer.newsletter.deliver
end
  
end