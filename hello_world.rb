require 'sinatra'

#Request Process on Web Server 
get '/' do 
	"Hello World"
end

get '/hello/:name' do
"Hello #{params['name']}"
end

get '/hello/Dan' do
	"Hello Dan!"
end

get '/hello/Margaret' do
	"Hello Margaret!"
end 
	
get '/:name/:job' do
	"#{params['name']} is a #{params['job']}"
end

get '/home' do
	@time = Time.now.ctime
	erb :index
end

get '/home' do
	erb :index
end





