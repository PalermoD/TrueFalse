require 'bundler'
Bundler.require 

require './connection'
ROOT_PATH = Dir.pwd
Dir[ROOT_PATH+"/models/*.rb"].each{ |file| require file }

get '/' do 
  erb :index
end


get '/api/facts' do
  facts = Fact.all
  facts.to_json
end 

