task :reminding_movie_time => :environment do

	Movie.all.each do |movie|
		created_time = movie.created_at
		if movie.available_date  && movie.available_time != ''
		  puts "hello" 
			available_time = movie.available_time - (30 *60) 
			abort available_time.inspect
		end
	end
end