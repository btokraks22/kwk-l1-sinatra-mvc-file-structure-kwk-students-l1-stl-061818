require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base
 configure do
  	set :public_folder, 'public'
  	set :views, 'app/views'
  end

  get "/" do
    return erb :index
  end
  
  post '/' do 
    @the_fortune=get_fortune
    @the_user=params[:user]
    return erb :results
  end 
end


















# # end
# # get "/newpage" do
# #   erb :newpage 
# # end 

# get "/get_name" do 
#   first_dog = Dog.new("rudolph", "Mastiff", 2 )
#   second_dog = Dog.new("Charlotte", "Labrador Retriever", 6)
#   third_dog = Dog.new("Dottie", "Chihuahua Pug Mix" "3 months")
  
  
#   first_dog.get_name
#   second_dog.get_name
#   third_dog.get_name
# end

# get "/get_breed" do
#   first_dog.get_breed
#   second_dog.get_breed
#   third_dog.get_breed
# end

# get "/get_age" do
#   first_dog.get_age
#   second_dog.get_age
#   third_dog.get_age
# end
# end