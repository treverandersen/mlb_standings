
class MlbStandings::CLI
	
	def call
		show_standings
		user_command
		goodbye
	end

	def show_standings
		# http://mlb.mlb.com/mlb/standings/index.jsp
		puts "                                         "
		puts "========================================="
		puts "                                         "
		puts "   * Major League Baseball Standings *   "
		puts "                                         "
		puts "========================================="
		puts "                                         "
		@full_standings = MlbStandings::League.standings
	end

	def user_command
		input = nil
		while input != "exit"
			puts "Enter the <team-name> of the team you'd like more info on."
			input = gets.strip.downcase
			case input
			when "Boston".downcase
				puts "Here is more info for Boston..."
			else
				puts "Not sure what you want, type a <team-name> or exit."
			end
		end
	end

	def goodbye
		puts "                                        "
		puts "========================================"
		puts "                                        "
		puts "                  Bye!                  "
		puts "           Check back anytime           "
		puts "             for up to date             "
		puts "         standings information!         "
		puts "                                        "
		puts "========================================"
		puts "                                        "
	end

end