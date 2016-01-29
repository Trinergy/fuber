require_relative 'order_actions'

##################
###PAGE METHODS###
##################

def taglines
  @taglines = ["For those special times when you just don't give a !@\#$.","Serving up a hot slice of random.","Why choose when you could not?","Here, let me get that for you.","Go ahead—bring a stranger some food.","Bringing you what you didn't know you wanted.","Officially endorsed by David Van Dusen."]
  @taglines.sample
end

##############
####GETS######
##############
get '/' do
  @tagline = taglines
  erb :index
end

get '/user' do

  erb :user
end

get '/session/new' do

  erb :'session/new'
end

##############
####POSTS#####
##############

post '/session' do


  erb :'session/new'
end
