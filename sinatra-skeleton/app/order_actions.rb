##################
####ORDER GETS####
##################

get '/orders/menu' do 

  erb :'orders/menu'
end

get '/orders/new' do
  @selected_cuisine = params[:cuisine]
  @cuisine_options = cuisine_options_filter(@selected_cuisine)
  erb :'orders/new'
end

get '/orders' do 

  erb :'orders/index'
end

get '/orders/:order_id' do 

  erb :'orders/show'
end


####################
####ORDER POSTS#####
####################

post '/orders' do

end