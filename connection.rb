ActiveRecord::Base.establish_connection({
	adapter: 'postgresql',
	database: ENV['DATABASE_URL'] || 'facts_db'
	})