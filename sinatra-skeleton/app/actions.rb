require_relative 'order_actions'


helpers do
  
  def current_user
    @current_user ||= User.find(session[:user_id])
  end

end

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
  user = User.find_by(username: params[:username], password: params[:password])
  if user
    session[:user_id] = user.id
    redirect "/"
  else
    erb :'session/new'
  end
end