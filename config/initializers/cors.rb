#Jacked from the rack-cors Github documentation

Rails.application.config.middleware.insert_before 0, Rack::Cors do
 allow do
   # make everyone allowed to make calls
   origins '*'
   # restrict resources, but allow all
   resource '*',
     :headers => :any,
     :methods => %i( get post put patch delete options head ) # array of symbols
 end
end
