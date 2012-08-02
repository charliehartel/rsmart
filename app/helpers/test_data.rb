def test_schedule
	athlete = Athlete.find_by_email("charliehartel@yahoo.com")
	schedule = 
	[ { athlete_id: athlete.id, summary: "Easy Run", description: "", miles: 9, date: (Date.today - Date.today.wday + 1) },
	  { athlete_id: athlete.id, summary: "Easy Run", description: "Finish w/ 4x 15s strides", miles: 6, date: (Date.today - Date.today.wday + 2 ) },
	  { athlete_id: athlete.id, summary: "Hill Repeats", description: "2 mile warm-up, followed by a few light strides.\n4 x 45 second uphill at 95% of max effort.\n4 x 90 second uphill at 90% of max effort.\n4 x 45 second uphill at 95% of max effort.\n2 mile cool-down.", miles: 10, date: (Date.today - Date.today.wday + 3) },
	  { athlete_id: athlete.id, summary: "Easy Run", description: "Finish w/ 4x 15s strides", miles: 6, date: (Date.today - Date.today.wday + 4) },
	  { athlete_id: athlete.id, summary: "Recovery Day", description: "Off", miles: 0, date: (Date.today - Date.today.wday + 5) },
	  { athlete_id: athlete.id, summary: "Tempo Run", description: "2 mile warm-up. 7 miles at a moderately hard effort (think slightly dialed back from threshold). 2 mile cool-down.", miles: 11, date: (Date.today - Date.today.wday + 6 )},
	  { athlete_id: athlete.id, summary: "Easy Run", description: "", miles: 6, date: (Date.today - Date.today.wday + 7) },
	]

	workouts = []
	schedule.each do |s|
		w = Workout.new(s)
		w.save
	end

end