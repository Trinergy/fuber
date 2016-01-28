require_relative 'order_actions'


##############
####GETS######
##############
get '/' do
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
