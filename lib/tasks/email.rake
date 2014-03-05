desc "sends email to all users"
task email_users: :environment do
  
    User.all.each do|user|
      UserMailer.newsletter(user).deliver
    end
  
end