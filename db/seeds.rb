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
	Flavour.create(title: "Equinox", order: 4, active: false, content: '<iframe width="560" height="315" src="https://www.youtube.com/embed/2cXDgFwE13g" frameborder="0" allowfullscreen></iframe>')
	Flavour.create(title: "Steam Powered Giraffe", order: 5, active: false, content: '<iframe width="560" height="315" src="https://www.youtube.com/embed/aAqqpHl436U" frameborder="0" allowfullscreen></iframe>')
	Flavour.create(title: "The Ballad of Mona Lisa", order: 6, active: false, content: '<iframe width="560" height="315" src="https://www.youtube.com/embed/gOgpdp3lP8M" frameborder="0" allowfullscreen></iframe>')
	Flavour.create(title: "Rountable Rival", order: 7, active: false, content: '<iframe width="560" height="315" src="https://www.youtube.com/embed/jvipPYFebWc" frameborder="0" allowfullscreen></iframe>')
	Flavour.create(title: "House of Cards", order: 8, active: false, content: '<iframe width="560" height="315" src="https://www.youtube.com/embed/7jzJqqTNjVw" frameborder="0" allowfullscreen></iframe>')
	
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
	Event.create(name: "Hidden", description: "If you see this and you aren't an admin I made a mistake", active: false)
	
	puts 'SETTING UP M2E Models'
	puts '-- Guild'
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
	
	puts '-- Resurrectionists'
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
	
	puts '-- Arcanists'
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
	
	puts '-- Neverborn'
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
	
	puts '-- Outcasts'
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
	
	puts '-- Gremlins'
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
	
	
	puts '-- Ten Thunders'
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
	puts '-- Guild'
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
	
	puts '-- Resurrectionists'
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
	
	puts '-- Arcanists'
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
	
	puts '-- Neverborn'
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
	
	puts '-- Outcasts'
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
	
	puts '-- Gremlins'
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
	
	puts '-- Ten Thunders'
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
	
	puts 'SETTING UP Crossroads Models'
	puts '-- Guild'
	Model.create(name: "C. Hoffman", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Lucius", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild','Neverborn']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Mechanical Attendant", soulstones: 2, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "The Scribe", soulstones: 2, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild','Neverborn']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Ryle", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Captain Dashel", soulstones: 9, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Guardian", soulstones: 8, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Abuela Ortega", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Guild Hound", soulstones: 3, rare: 4, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Guard Sergeant", soulstones: 6, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Hunter", soulstones: 7, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Guild Lawyer", soulstones: 6, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Watcher", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Exorcist", soulstones: 7, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Pistolero De Latigo", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Pale Rider", soulstones: 12, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Warden", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Witchling Handler", soulstones: 8, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Brutal Effigy", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Guild Rifleman", soulstones: 5, rare: 3, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Clockwork Trap", soulstones: 2, rare: 4, mercenary: false,  
		:factions => Faction.where(:name => ['Guild','Ten Thunders']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Guild Pathfinder", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Guild','Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	
	puts '-- Resurrectionists'
	Model.create(name: "Molly", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Kirai", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Necrotic Machine", soulstones: 2, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Lost Love", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Datsue Ba", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Philip and the Nanny", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "The Valedictorian", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Guild Autopsy", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Rogue Necromancy", soulstones: 10, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Dead Rider", soulstones: 12, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Gaki", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Night Terror", soulstones: 3, rare: 4, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Onryo", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Shikome", soulstones: 8, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Crooligan", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Dead Doxy", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "The Drowned", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Jaakuna Ubume", soulstones: 6, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Rafkin", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Carrion Effigy", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Ashigaru", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Student of Sinew", soulstones: 7, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Student of Steel", soulstones: 7, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Student of Viscera", soulstones: 8, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Minion'))
	
	puts '-- Arcanists'
	Model.create(name: "Ironsides", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Colette Du Bois", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Kaeris", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Mouse", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Mechanical Dove", soulstones: 2, rare: 3, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Eternal Flame", soulstones: 2, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Cassandra", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Snow Storm", soulstones: 11, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "The Captain", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "The Firestarter", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Oxfordian Mage", soulstones: 6, rare: 3, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Coryphee", soulstones: 7, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Performer", soulstones: 5, rare: 0, mercenary: true,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Mannequin", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Gunsmith", soulstones: 7, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Large Arachnid", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Malifaux Raptor", soulstones: 3, rare: 3, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Mechanical Rider", soulstones: 12, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Silent One", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Soulstone Miner", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Angelica", soulstones: 6, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Blessed of December", soulstones: 9, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Fire Gamin", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Slate Ridge Mauler", soulstones: 8, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Union Miner", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Willie", soulstones: 6, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Arcane Effigy", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Mobile Toolkit", soulstones: 3, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Peon'))
	
	puts '-- Neverborn'
	Model.create(name: "The Dreamer", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Collodi", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Daydream", soulstones: 2, rare: 3, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Marionette", soulstones: 3, rare: 4, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Vasilisa", soulstones: 9, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Widow Weaver", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Nekima", soulstones: 13, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Spawn Mother", soulstones: 9, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Gupps", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Alp", soulstones: 3, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Coppelius", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Insidious Madness", soulstones: 5, rare: 3, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Lelu", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Lilitu", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Black Blood Shaman", soulstones: 7, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Stitched Together", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Wicked Doll", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Iggy", soulstones: 5, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Hooded Rider", soulstones: 12, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Tuco", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Mysterious Effigy", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "The Depleted", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	
	puts '-- Outcasts'
	Model.create(name: "Jack Daw", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Hamelin", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Leviticus", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Hollow Waif", soulstones: 0, rare: 3, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Lady Ligeia", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "The Stolen", soulstones: 2, rare: 3, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Nix", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Rusty Alice", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Montresor", soulstones: 9, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "The Guilty", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Obedient Wretch", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Rat Catcher", soulstones: 6, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Malifaux Rat", soulstones: 2, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Rat King", soulstones: 8, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Ashes and Dust", soulstones: 13, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Dust Storm", soulstones: 6, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Freikorps Librarian", soulstones: 7, rare: 0, mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Freikorps Trapper", soulstones: 6, rare: 2, mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Lazarus", soulstones: 10, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Hodgepodge Effigy", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Ama No Zako", soulstones: 9, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts','Ten Thunders']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Strongarm Suit", soulstones: 10, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Vanessa", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Sue", soulstones: 8, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Abomination", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Desolation Engine", soulstones: 13, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	
	puts '-- Gremlins'
	Model.create(name: "Ulix", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Mah Tucket", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Wong", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Penelope", soulstones: 2, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Lovely Assistant", soulstones: 3, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "The Little Lass", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Old Cranky", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Old Major", soulstones: 9, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "McTavish", soulstones: 10, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Trixiebelle", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Mancha Roja", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Sammy LaCroix", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "The Sow", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Rooster Rider", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Stuffed Piglet", soulstones: 2, rare: 6, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Gremlin Taxidermist", soulstones: 7, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Bayou Bushwhacker", soulstones: 6, rare: 3, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Burt Jebsen", soulstones: 7, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Gracie", soulstones: 10, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Merris LaCroix", soulstones: 6, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Wild Boar", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Lucky Effigy", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Lightning Bug", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Bayou Gator", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	
	puts '-- Ten Thunders'
	Model.create(name: "Shenlong", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Yan Lo", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Lucas McCabe", soulstones: 15, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Guild']), 
		:station => Station.find_by_name('Master'))
	Model.create(name: "Luna", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Peasant", soulstones: 2, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Soul Porter", soulstones: 3, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), 
		:station => Station.find_by_name('Peon'))
	Model.create(name: "Kamaitachi", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Toshiro The Daimyo", soulstones: 9, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Sensei Yu", soulstones: 9, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Sidir Alchibal", soulstones: 9, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Guild']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Wastrel", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Izamu The Armour", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Yin The Penangalan", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Ten Thunders Brother", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Mr. Graves", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Neverborn']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Mr. Tannen", soulstones: 6, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Neverborn']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Shadow Effigy", soulstones: 4, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Komainu", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Fermented River Monk", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Monk of High River", soulstones: 6, rare: 3, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Tengu", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Chiaki The Niece", soulstones: 6, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "The Lone Swordsman", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Katanaka Sniper", soulstones: 7, rare: 2, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	
	puts 'SETTING UP Crossroads Upgrades'
	puts '-- Guild'
	Upgrade.create(name: "Surprisingly Loyal", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild','Neverborne']), campaign: false)
	Upgrade.create(name: "Secret Objectives", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild','Neverborne']), campaign: false)
	Upgrade.create(name: "Legalese", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild','Neverborne']), campaign: false)
	Upgrade.create(name: "Secret Assets", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild','Neverborne']), campaign: false)
	Upgrade.create(name: "Watch My Back", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Useless Duplicitations", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild','Neverborne']), campaign: false)
	Upgrade.create(name: "Arcanist Assets", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "On Site Assimilation", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Field Mechanic", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Remote Mines", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Pieces of Myself", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Dampening Field", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Expert Sleuth", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Guild']), campaign: false)
	Upgrade.create(name: "Tessellating Magnet", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)
	
	puts '-- Resurrectionists'
	Upgrade.create(name: "Forgotten Path", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Forgotten Life", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Terrible Knowledge", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Tear of the Gorgon", soulstones: 3, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Take Back The Night", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Absorb Spirit", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Bloody Shears", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Unforgiven", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Swirling Aether", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Spirit Whispers", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Spirit Beacon", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Spare Parts", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Necrotic Preparation", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	Upgrade.create(name: "Pack", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']), campaign: false)
	
	puts '-- Arcanists'
	Upgrade.create(name: "Challenge the Crowd", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Iron Determination", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Frontline Leadership", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Warding Runes", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Message from the Union", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Blood Ward", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Nemesis Ward", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Doom Ward", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Cabaret Choreography", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "A Lady's Secret", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Nothing Up My Sleeve", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Shell Game", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Practiced Production", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Smoke and Mirrors", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Grab and Drop", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Purifying Fire", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Born of Fire", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Blinding Flame", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Powered By Flame", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Seize the Day", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Killswitch", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Patron's Blessing", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	Upgrade.create(name: "Decoy", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']), campaign: false)
	
	puts '-- Neverborn'
	Upgrade.create(name: "Otherworldly", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Restless Dreams", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Tantrum", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Dreams of Pain", soulstones: 5, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "On Dreaming Wings", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Threads of Fate", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Fated", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Breathe Life", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Bag of Props", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "A Friend to Talk To", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Strum the Threads", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "The True Mother", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Protect the Yound", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Retribution's Eye", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "On Wings of Darkness", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "The Mimic's Blessing", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	Upgrade.create(name: "Handbag", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']), campaign: false)
	
	puts '-- Outcasts'
	Upgrade.create(name: "Firing Squad Injustice", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Drowning Injustice", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Guillotine Injustice", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Betrayer", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Writhing Torment", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Twist and Turn", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "The Creeping Terror", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Feaful Whispers", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "The Plague", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "The Piper", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Tools of the Tyrant", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Sewer King", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Hollow", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Infectious Melodies", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Pariah of Stone", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "From Ash", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "To the Earth Return", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Pariah of Iron", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "From the Aether", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Desolate Soul", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "I Pay Better", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Scout the Field", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']), campaign: false)
	Upgrade.create(name: "Void Shield", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']), campaign: false)
	Upgrade.create(name: "The Faces of Oblivion", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']), campaign: false)
	
	puts '-- Gremlins'
	Upgrade.create(name: "Clobberin' Stick", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Huntin' Bow", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Pig Sling", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Husbandry", soulstones: 3, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Corn Husks", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Saddle", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Three Demon Bag", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "A Gremlin's Luck", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Explosive Solutions", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Ooo Glowy", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Out For Blood", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Know the Terrain", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Lead Lined Apron", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Bounty", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "A Gun For A Lady", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Cute Critters", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Mud Toss", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Extra Gremlin", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Hexed Among You", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins','Neverborn']), campaign: false)
	Upgrade.create(name: "On Yer Tip Toes", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	Upgrade.create(name: "Hide in the Mud", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']), campaign: false)
	
	puts '-- Ten Thunders'
	
	Upgrade.create(name: "Badge of Speed", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']), campaign: false)
	Upgrade.create(name: "Glowing Saber", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']), campaign: false)
	Upgrade.create(name: "Elixir of Life", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']), campaign: false)
	Upgrade.create(name: "Strangemetal Shirt", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']), campaign: false)
	Upgrade.create(name: "Promises", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']), campaign: false)
	Upgrade.create(name: "By Your Side", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']), campaign: false)
	Upgrade.create(name: "Barbs", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']), campaign: false)
	Upgrade.create(name: "Fortify the Spirit", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), campaign: false)
	Upgrade.create(name: "Reliquary", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), campaign: false)
	Upgrade.create(name: "Brutal Khakkhara", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), campaign: false)
	Upgrade.create(name: "Ash Ascendant", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), campaign: false)
	Upgrade.create(name: "Spirit Ascendant", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), campaign: false)
	Upgrade.create(name: "Pull of the Grave", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), campaign: false)
	Upgrade.create(name: "Bone Ascendant", soulstones: 3, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), campaign: false)
	Upgrade.create(name: "Command the Graves", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']), campaign: false)
	Upgrade.create(name: "Words on the River", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Low River Style", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Fermented River Style", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "High River Style", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Wandering River Style", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Promising Disciple", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Smoke Grenades", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Hidden Agenda", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "On Wings of Wind", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Blot The Sky", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Favour of Heaven", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Favour of Earth", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	Upgrade.create(name: "Favour of Jigoku", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']), campaign: false)
	
	#puts 'SETTING UP Shifting Loyalties Models'
	#puts '-- Guild'
	#puts '-- Resurrectionists'
	#puts '-- Arcanists'
	#puts '-- Neverborn'
	#puts '-- Outcasts'
	#puts '-- Gremlins'
	#puts '-- Ten Thunders'
	#puts 'SETTING UP Shifting Loyalties Upgrades'
	#puts '-- Guild'
	#puts '-- Resurrectionists'
	#puts '-- Arcanists'
	#puts '-- Neverborn'
	#puts '-- Outcasts'
	#puts '-- Gremlins'
	#puts '-- Ten Thunders'
	#puts 'SETTING UP Shifting Loyalties Campaign Upgrades'
	#puts '-- Guild'
	#puts '-- Resurrectionists'
	#puts '-- Arcanists'
	#puts '-- Neverborn'
	#puts '-- Outcasts'
	#puts '-- Gremlins'
	#puts '-- Ten Thunders'
	
#	Model.create(name: "", soulstones: , rare: , mercenary: false,  
#		:factions => Faction.where(:name => ['']), 
#		:station => Station.find_by_name(''))
	
#	Upgrade.create(name: "", soulstones: , rare: 1, :factions => Faction.where(:name => ['Guild']), campaign: false)