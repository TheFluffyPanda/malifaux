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
	Faction.create(name: "Resurrectionists")
	Faction.create(name: "Arcanists")
	Faction.create(name: "Neverborn")
	Faction.create(name: "Outcasts")
	Faction.create(name: "Gremlins")
	Faction.create(name: "Ten Thunders")
	
	puts 'SETTING UP Stations'
	Station.create(name: "Peon", max_injuries: 1, max_skills: 0)
	Station.create(name: "Minion", max_injuries: 2, max_skills: 1)
	Station.create(name: "Enforcer", max_injuries: 2, max_skills: 1)
	Station.create(name: "Henchman", max_injuries: 3, max_skills: 2)
	Station.create(name: "Master", max_injuries: 3, max_skills: 3)
	
	puts 'SETTING UP M2E Models'
	Model.create(name: "Lady Justice", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Sonnia Criid", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Perdita Ortega", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Francisco Ortega", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Henchman'))
		Model.create(name: "Samael Hopkins", soulstones: 9, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "The Judge", soulstones: 9, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Scales of Justice", soulstones: 3, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Purifying Flame", soulstones: 3, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Enslaved Nephilim", soulstones: 3, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Governor's Proxy", soulstones: 3, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Death Marshal", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Executioner", soulstones: 9, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Guild Austringer", soulstones: 6, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Guild Guard", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Peacekeeper", soulstones: 11, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "The Lone Marshal", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Witchling Stalker", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Nino Ortega", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Papa Loco", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Santiago Ortega", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Seamus", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "McMourning", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists','Guild']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Nicodem", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Madame Sybelle", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Sebastian", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Moritmer", soulstones: 9, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Copycat Killer", soulstones: 3, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Zombie Chihuahua", soulstones: 2, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Vulture", soulstones: 3, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Graveyard Spirit", soulstones: 3, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Bete Noire", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Canine Remains", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Crooked Man", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Flesh Construct", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Mindless Zombie", soulstones: 2, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Necropunk", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Nurse", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Punk Zombie", soulstones: 7, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Rotten Belle", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "The Hanged", soulstones: 9, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Rasputina", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Marcus", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Ramos", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Myranda", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Joss", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Cojo", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Ice Golem", soulstones: 10, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Wendigo", soulstones: 3, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Jackalope", soulstones: 2, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Brass Arachnid", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Essence of Power", soulstones: 3, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "December Acolyte", soulstones: 7, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Electric Creation", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Hoarcat Pride", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Howard Langston", soulstones: 12, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Ice Gamin", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Metal Gamin", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Moleman", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Rail Golem", soulstones: 11, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Razorspine Rattler", soulstones: 7, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Sabertooth Cerberus", soulstones: 9, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Steam Arachnid", soulstones: 7, rare: 4, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Steam Arachnid Swarm", soulstones: 7, rare: 8, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Lilith", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Pandora", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Zoraida", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn','Gremlins']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Barbaros", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Candy", soulstones: 9, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Bad Juju", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Cherub", soulstones: 3, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Poltergeist", soulstones: 5, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Voodoo Doll", soulstones: 3, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn','Gremlins']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Primordial Magic", soulstones: 2, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Baby Kade", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Teddy", soulstones: 11, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Beckoner", soulstones: 7, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Doppleganger", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Mature Nephilim", soulstones: 11, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Silurid", soulstones: 7, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Sorrow", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Terror Tot", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Waldgeist", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Young Nephilim", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Von Schill", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Tara", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts','Resurrectionists']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Viktoria of Ashes", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Hannah", soulstones: 10 , rare: 1 , mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "The Nothing Beast", soulstones: 10 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Viktoria of Blood", soulstones: 10 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Taelor", soulstones: 10 , rare: 1 , mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Steam Trunk", soulstones: 3 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Karina", soulstones: 5 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts','Resurrectionists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Student of Conflict", soulstones: 4 , rare: 1 , mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Malifaux Child", soulstones: 2 , rare: 1 , mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Bishop", soulstones: 10 , rare: 1 , mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Convict Gunslinger", soulstones: 7 , rare: 2 , mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Desperate Mercenary", soulstones: 4 , rare: 0 , mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Freikorps Specialist", soulstones: 8 , rare: 0 , mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Freikorpsmann", soulstones: 5 , rare: 0 , mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Hans", soulstones: 8 , rare: 1 , mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Johan", soulstones: 6 , rare: 1 , mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Killjoy", soulstones: 12 , rare: 1 , mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Ronin", soulstones: 6 , rare: 0 , mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Void Wretch", soulstones: 4 , rare: 0 , mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Somer Teeth Jones", soulstones: 15 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Ophelia LaCroix", soulstones: 15 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "The Brewmaster", soulstones: 15 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins','Ten Thunders']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Francois LaCroix", soulstones: 7 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Fingers", soulstones: 10 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Lenny", soulstones: 9 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Whiskey Golem", soulstones: 10 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Skeeter", soulstones: 2 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Young LaCroix", soulstones: 2 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Apprentice Wesley", soulstones: 3 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Bayou Gremlin", soulstones: 3 , rare: 0 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Hog Whisperer", soulstones: 5 , rare: 0 , mercenary: true,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Moon Shinobi", soulstones: 6 , rare: 0 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Pigapult", soulstones: 8 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Piglet", soulstones: 4 , rare: 0 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Slop Hauler", soulstones: 5 , rare: 0 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "War Pig", soulstones: 9 , rare: 0 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Pere Ravage", soulstones: 6 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Rami LaCroix", soulstones: 7 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Raphael LaCroix", soulstones: 7 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Misaki", soulstones: 15 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Outcasts']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Mei Feng", soulstones: 15 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Jakob Lynch", soulstones: 15 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Neverborn']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Ototo", soulstones: 10 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Kang", soulstones: 9 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Yamaziko", soulstones: 7 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Shang", soulstones: 3 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Outcasts']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Emberling", soulstones: 3 , rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Hungering Darkness", soulstones: 8, rare: 1 , mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Neverborn']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Dawn Serpent", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Fuhatsu", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Monk of Low River", soulstones: 4, rare: 3, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Oiran", soulstones: 5, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Rail Worker", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders', 'Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "The Illuminated", soulstones: 7, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders', 'Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Thunder Archer", soulstones: 7, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Torakage", soulstones: 6, rare: 0, mercenary: true,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Samurai", soulstones: 8, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Enforcer'))
	
	puts 'SETTING UP Crossroads Models'
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	puts 'SETTING UP Shifting Loyalties Models'
	
	