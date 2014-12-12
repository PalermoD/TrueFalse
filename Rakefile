require 'bundler'
Bundler.require

require 'sinatra/activerecord/rake'
require './connection'
require 'csv'


require_relative 'connection.rb'
ROOT_PATH = Dir.pwd
Dir[ROOT_PATH+"/models/*.rb"].each{ |file| require file }

namespace :db do 
	desc "Create facts_db database"
   task :create_db do 
   	  conn = PG::Connection.open()
   	  conn.exec('CREATE DATABASE facts_db;')
   	  conn.close
   	end 

end 


