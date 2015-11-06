require 'data_mapper'
require 'sinatra'

DataMapper.setup(:default, 'sqlite:crm_development.db')

#datamapper will figure this out to mean 'contacts' table
class Contact 
	include DataMapper::Resource

	property :id, Serial
	property :first_name, String
	property :Last_name, String
	property :email, String
	property :notes, Text  
end

DataMapper.auto_upgrade!

get '/contacts' do 
	@contacts = Contact.all
	erb :index 
end 

get '/Contact/new' do
		erb :new
	end'

post '/contacts' do
		contact.create(params)
		contact.new(params)
		contact.save
		redirect to('/contacts')
end 




