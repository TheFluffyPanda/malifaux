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
	
	puts 'SETTING UP Events'
	Event.create(name: "The Calm Before the Storm", description: "A crow caws.  A bullet is chambered.  A piano falls silent.  Nothing seems to have changed to the casual observer, but the residents of Malifaux are sensing the tension.  Something's about to happen, and in Malifaux, that means something bad.<br /><br /><b>No special rules in play.</b>", active: true)
	
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
	
	puts 'SETTING UP M2E Rulebook Upgrades'
	Upgrade.create(name: "Plant Evidence", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Vengeance Bullet", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "The Thalarian Stone", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Badge of Office", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Lead Lined Coat", soulstones: 2, rare: 3, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Implacable", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Justice Unleashed", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Last Stand", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Vendetta", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Unrelenting Leader", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Flames of the Pit", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Cherufe's Imprint", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Reincarnation", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "The Mask", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Counterspell Aura", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Witch Hunt", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Disrupt Magic", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Os Veo", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Trick Shooting", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Aura Ancestral", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Wade In", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Tormenta De Plomo", rare: 1, soulstones: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Diestro", soulstones: 3, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Hermanis De Armas", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	
	Upgrade.create(name: "Unnerving Aura", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Decaying Aura", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Corpse Bloat", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Asylum Stone", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Transfusion", soulstones: 1, rare: 2, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Maniacal Laugh", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Sinister Reputation", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Red Chapel Killer", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Bag O'Tools", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Mad Haberdasher", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Not Too Banged Up", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Bleeding Tongue", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Plastic Surgery", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists','Guild']), campaign: false)
	Upgrade.create(name: "Evidence Tampering", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists','Guild']), campaign: false)
	Upgrade.create(name: "Moonlighting", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "On The Clock", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Those Are Not Ours!", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Unkowable Pain", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists','Guild']), campaign: false)
	Upgrade.create(name: "Undertaker", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Reaper Grin", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Shadow Embrace", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Necrotic King", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "My Favourite Shovel", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Love Thy Master", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	
	Upgrade.create(name: "Imbued Protection", soulstones: 2, rare: 3, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Imbued Energies", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "The Philosopher's Stone", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Arcane Reservoir", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Recharge Soul Stone", soulstones: 1, rare: 2, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "December's Pawn", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Cold Nights", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Child of December", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Shattered Heart", soulstones: 3, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Armour of December", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Sub Zero", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Feral Instincts", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "The Hunger Cry", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "The Trail of the Gods", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "The God's Domain", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Skinwalker", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Pack Leader", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Field Generator", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Combat Mechanic", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Electric Summoning", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Under Pressure", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Open Current", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Bleeding Edge Tech", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	
	Upgrade.create(name: "Pact", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Fears Given Form", soulstones: 1, rare: 2, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Stone of Tyrant Echoes", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Aether Connection", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Nexus of Power", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Beckon Malifaux", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Living Blade", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Wicked Mistress", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Summon The Blood", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Nephilim Gladiators", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Obsidian Talons", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Rapid Growth", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Fuge State", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Cry For Me", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "The Box Opens", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Voices", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Depression", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Best Behavior", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Animal Shape", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn','Gremlins']), campaign: false)
	Upgrade.create(name: "Crystal Ball", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn','Gremlins']), campaign: false)
	Upgrade.create(name: "Tarot Reading", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn','Gremlins']), campaign: false)
	Upgrade.create(name: "Hex Bag", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn','Gremlins']), campaign: false)
	Upgrade.create(name: "Eternal Fiend", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Hexed Among You", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn','Gremlins']), campaign: false)
	
	Upgrade.create(name: "Scramble", soulstones: 2, rare: 3, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Tally Sheet", soulstones: 1, rare: 2, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "The Traveler's Stone", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Survivalist", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Oath Keeper", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Paid in Blood", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Hard & Relentless", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Engage At Will", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "The Shirt Comes Off", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Ancient Tomes", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Spoils of War", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Eternal Journey", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']), campaign: false)
	Upgrade.create(name: "Knowledge of Eternity", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']), campaign: false)
	Upgrade.create(name: "Obliteration Symbiote", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']), campaign: false)
	Upgrade.create(name: "Dead of Winter", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']), campaign: false)
	Upgrade.create(name: "Voiceless Worlds", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']), campaign: false)
	Upgrade.create(name: "Long Forgotten Magics", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']), campaign: false)
	Upgrade.create(name: "Sisters in Spirit", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Sisters in Fury", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Mark of Shez'uul", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Synchronized Slaying", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Howling Wolf Tattoo", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	
	Upgrade.create(name: "Liquid Bravery", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Quality Marsh Liquor", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "The Guardian Stone", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Show Off", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Dirty Cheater", soulstones: 1, rare: 2, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Stilts", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Pig Feed", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Family Tree", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Can O' Beans", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Encouragement", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "I'll Love It and Pet It...", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Binge", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins','Ten Thunders']), campaign: false)
	Upgrade.create(name: "Hold Their Hair Back", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins','Ten Thunders']), campaign: false)
	Upgrade.create(name: "Running Tab", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins','Ten Thunders']), campaign: false)
	Upgrade.create(name: "The Good Stuff", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins','Ten Thunders']), campaign: false)
	Upgrade.create(name: "Drinking 'Problem'", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins','Ten Thunders']), campaign: false)
	Upgrade.create(name: "Angry Drunk", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins','Ten Thunders']), campaign: false)
	Upgrade.create(name: "Hooch Igniter", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Jug Rocket", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "My Threatenin' Gun", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Gremlin See", soulstones: 1, rare: 2, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Team Work", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	
	Upgrade.create(name: "Servant of 5 Dragons", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Broken Promises", soulstones: 2, rare: 2, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Dragon Stone", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Misdirection", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Recalled Training", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Disguise", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Outcasts']), campaign: false)
	Upgrade.create(name: "Cutpurse", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Outcasts']), campaign: false)
	Upgrade.create(name: "Untouchable", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Outcasts']), campaign: false)
	Upgrade.create(name: "Stalking Bisento", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Outcasts']), campaign: false)
	Upgrade.create(name: "Smoke & Shadows", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Outcasts']), campaign: false)
	Upgrade.create(name: "Call The Thunder", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Thunderous Smash", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Arcanists']), campaign: false)
	Upgrade.create(name: "Seismic Claws", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Arcanists']), campaign: false)
	Upgrade.create(name: "Price of Progress", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Arcanists']), campaign: false)
	Upgrade.create(name: "Vapormancy", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Arcanists']), campaign: false)
	Upgrade.create(name: "People's Challenge", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Arcanists']), campaign: false)
	Upgrade.create(name: "Hard Worker", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Arcanists']), campaign: false)
	Upgrade.create(name: "The Rising Sun", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Neverborn']), campaign: false)
	Upgrade.create(name: "Expert Cheater", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Neverborn']), campaign: false)
	Upgrade.create(name: "Wanna See a Trick", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Neverborn']), campaign: false)
	Upgrade.create(name: "Woke Up With a Hand", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Neverborn']), campaign: false)
	Upgrade.create(name: "Endless Hunger", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Neverborn']), campaign: false)
	Upgrade.create(name: "Addict", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Neverborn']), campaign: false)
	
	
	
	
	
	
	#puts 'SETTING UP Crossroads Models'
	#puts 'SETTING UP Shifting Loyalties Models'
	
	