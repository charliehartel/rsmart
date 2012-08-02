module WorkoutsHelper
	def test_schedule
	athlete = Athlete.find_by_email("gladysmurphy@gmail.com")
	schedule = 
	[ { athlete_id: athlete.id, summary: "Easy Run", description: "6 mi at 11:25 - 12:06 pace", miles: 6, date: (Date.today - Date.today.wday + 1) },
	  { athlete_id: athlete.id, summary: "Off Day", description: "Off Day, no running", miles: 0, date: (Date.today - Date.today.wday + 2 ) },
	  { athlete_id: athlete.id, summary: "Easy Day", description: "5 mi at 11:25 - 12:06", miles: 5, date: (Date.today - Date.today.wday + 3) },
	  { athlete_id: athlete.id, summary: "Threshold Session", description: "2 mi at 11:25 - 12:06 pace 4 x 1 mi in 9:35 with 1 min rests 1 mi in 11:25 - 12:06 ", miles: 7, date: (Date.today - Date.today.wday + 4) },
	  { athlete_id: athlete.id, summary: "Off Day", description: "Off", miles: 0, date: (Date.today - Date.today.wday + 5) },
	  { athlete_id: athlete.id, summary: "Easy Day", description: "7 mi at 11:25 - 12:06", miles: 7, date: (Date.today - Date.today.wday + 6 )},
	  { athlete_id: athlete.id, summary: "Easy Day", description: "9 mi at 11:25 - 12:06pace", miles: 9, date: (Date.today - Date.today.wday + 7) },
	]

	workouts = []
	schedule.each do |s|
		w = Workout.new(s)
		w.save
	end
end
end
