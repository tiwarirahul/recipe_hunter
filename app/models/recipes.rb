class Recipes
	 include HTTParty

	 default_params key: '73e2ba517a8ba38f5e18fd91fbf4ad28'
	 hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	 base_uri "http://#{hostport}/api"
	 format :json

	 def self.for term
'byebug'
	 	get("/search", query:{q: term})["recipes"]

	 end
end
