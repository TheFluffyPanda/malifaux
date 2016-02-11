# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	
	puts 'SETTING UP DEFAULT USER LOGIN'
	User.create()
	user = User.create! :email => 'shop@watchtowergames.co.uk', :password => 'Boltgun13', :password_confirmation => 'Boltgun13'
	user.toggle!(:admin)
	puts 'New user created: ' << user.email
	user = User.create! :email => 'paulhowie@gmail.com', :password => 'snuggles', :password_confirmation => 'snuggles'
	puts 'New user created: ' << user.email
	
	puts 'SETTING UP Flavour'
	Flavour.create(title: "Red Right Hand", order: 1, active: true, content: '<iframe width="560" height="315" src="https://www.youtube.com/embed/KGD2N5hJ2e0" frameborder="0" allowfullscreen></iframe>')
	Flavour.create(title: "Kali 47", order: 2, active: true, content: '<iframe width="560" height="315" src="https://www.youtube.com/embed/3Jjq-PbcsbU" frameborder="0" allowfullscreen></iframe>')
	Flavour.create(title: "Steampunk Revolution", order: 3, active: false, content: '<iframe width="560" height="315" src="https://www.youtube.com/embed/yeEI-hh3MG0" frameborder="0" allowfullscreen></iframe>')
	Flavour.create(title: "Steam Powered Giraffe", order: 4, active: false, content: '<iframe width="560" height="315" src="https://www.youtube.com/embed/ojYK6CW8gdw" frameborder="0" allowfullscreen></iframe>')
	Flavour.create(title: "The Ballad of Mona Lisa", order: 5, active: false, content: '<iframe width="560" height="315" src="https://www.youtube.com/embed/gOgpdp3lP8M" frameborder="0" allowfullscreen></iframe>')
	Flavour.create(title: "Rountable Rival", order: 6, active: false, content: '<iframe width="560" height="315" src="https://www.youtube.com/embed/jvipPYFebWc" frameborder="0" allowfullscreen></iframe>')
	Flavour.create(title: "House of Cards", order: 7, active: false, content: '<iframe width="560" height="315" src="https://www.youtube.com/embed/7jzJqqTNjVw" frameborder="0" allowfullscreen></iframe>')
	
	puts 'SETTING UP Factions'
	Faction.create(name: "Guild")
	Faction.create(name: "Resurrectionist")
	Faction.create(name: "Arcanist")
	Faction.create(name: "Neverborn")
	Faction.create(name: "Outcast")
	Faction.create(name: "Gremlin")
	Faction.create(name: "Ten Thunders")
	
	puts 'SETTING UP Stations'
	Station.create(name: "Peon", max_injuries: 1, max_skills: 0)
	Station.create(name: "Minion", max_injuries: 2, max_skills: 1)
	Station.create(name: "Enforcer", max_injuries: 2, max_skills: 1)
	Station.create(name: "Henchman", max_injuries: 3, max_skills: 2)
	Station.create(name: "Master", max_injuries: 3, max_skills: 3)
	
	puts 'SETTING UP Models'
	Model.create(name: "Jakob Lynch", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders', 'Neverborn']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Hungering Darkness", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders', 'Neverborn']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "The Illuminated", soulstones: 7, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders', 'Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Perdita Ortega", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Killjoy", soulstones: 12, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	