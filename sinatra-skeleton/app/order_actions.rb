##################
####ORDER GETS####
##################

get '/orders/menu' do 

  erb :'orders/menu'
end

get '/orders/new' do

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