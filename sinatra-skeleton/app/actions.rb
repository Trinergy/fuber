require_relative 'order_actions'


helpers do
  
  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

end

##############
####GETS######
##############
get '/' do
  erb :index
end

get '/user' do
  @order_history = Order.orderer_history(current_user.id)
  @deliver_history = Order.deliverer_history(current_user.id)
  @pending_orders = Order.pending_orders(current_user.id)
  @being_delivered = Order.being_delivered_orders(current_user.id)
  @pending_deliveries = Order.pending_deliveries(current_user.id)
  erb :user
end

get '/session/new' do
  erb :'session/new'
end

get '/session/signout' do
  session.clear
  redirect '/'
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