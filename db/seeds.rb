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
	Upgrade.create(name: "Plant Evidence", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Vengeance Bullet", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "The Thalarian Stone", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Badge of Office", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Lead Lined Coat", soulstones: 2, rare: 3, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Implacable", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Justice Unleashed", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Last Stand", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Vendetta", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Unrelenting Leader", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Flames of the Pit", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Cherufe's Imprint", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Reincarnation", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "The Mask", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Counterspell Aura", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Witch Hunt", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Disrupt Magic", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Os Veo", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Trick Shooting", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Aura Ancestral", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Wade In", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Tormenta De Plomo", rare: 1, soulstones: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Diestro", soulstones: 3, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Hermanis De Armas", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	
	puts '-- Resurrectionists'
	Upgrade.create(name: "Unnerving Aura", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Decaying Aura", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Corpse Bloat", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Asylum Stone", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Transfusion", soulstones: 1, rare: 2, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Maniacal Laugh", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Sinister Reputation", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Red Chapel Killer", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Bag O'Tools", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Mad Haberdasher", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Not Too Banged Up", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Bleeding Tongue", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Plastic Surgery", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists','Guild']))
	Upgrade.create(name: "Evidence Tampering", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists','Guild']))
	Upgrade.create(name: "Moonlighting", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "On The Clock", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Those Are Not Ours!", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Unkowable Pain", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists','Guild']))
	Upgrade.create(name: "Undertaker", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Reaper Grin", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Shadow Embrace", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Necrotic King", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "My Favourite Shovel", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Love Thy Master", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	
	puts '-- Arcanists'
	Upgrade.create(name: "Imbued Protection", soulstones: 2, rare: 3, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Imbued Energies", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "The Philosopher's Stone", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Arcane Reservoir", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Recharge Soul Stone", soulstones: 1, rare: 2, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "December's Pawn", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Cold Nights", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Child of December", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Shattered Heart", soulstones: 3, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Armour of December", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Sub Zero", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Feral Instincts", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "The Hunger Cry", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "The Trail of the Gods", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "The God's Domain", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Skinwalker", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Pack Leader", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Field Generator", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Combat Mechanic", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Electric Summoning", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Under Pressure", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Open Current", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Bleeding Edge Tech", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	
	puts '-- Neverborn'
	Upgrade.create(name: "Pact", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Fears Given Form", soulstones: 1, rare: 2, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Stone of Tyrant Echoes", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Aether Connection", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Nexus of Power", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Beckon Malifaux", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Living Blade", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Wicked Mistress", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Summon The Blood", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Nephilim Gladiators", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Obsidian Talons", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Rapid Growth", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Fuge State", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Cry For Me", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "The Box Opens", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Voices", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Depression", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Best Behavior", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Animal Shape", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn','Gremlins']))
	Upgrade.create(name: "Crystal Ball", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn','Gremlins']))
	Upgrade.create(name: "Tarot Reading", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn','Gremlins']))
	Upgrade.create(name: "Hex Bag", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn','Gremlins']))
	Upgrade.create(name: "Eternal Fiend", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Hexed Among You", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn','Gremlins']))
	
	puts '-- Outcasts'
	Upgrade.create(name: "Scramble", soulstones: 2, rare: 3, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Tally Sheet", soulstones: 1, rare: 2, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "The Traveler's Stone", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Survivalist", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Oath Keeper", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Paid in Blood", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Hard & Relentless", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Engage At Will", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "The Shirt Comes Off", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Ancient Tomes", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Spoils of War", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Eternal Journey", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']))
	Upgrade.create(name: "Knowledge of Eternity", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']))
	Upgrade.create(name: "Obliteration Symbiote", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']))
	Upgrade.create(name: "Dead of Winter", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']))
	Upgrade.create(name: "Voiceless Worlds", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']))
	Upgrade.create(name: "Long Forgotten Magics", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']))
	Upgrade.create(name: "Sisters in Spirit", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Sisters in Fury", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Mark of Shez'uul", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Synchronized Slaying", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Howling Wolf Tattoo", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	
	puts '-- Gremlins'
	Upgrade.create(name: "Liquid Bravery", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Quality Marsh Liquor", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "The Guardian Stone", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Show Off", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Dirty Cheater", soulstones: 1, rare: 2, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Stilts", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Pig Feed", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Family Tree", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Can O' Beans", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Encouragement", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "I'll Love It and Pet It...", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Binge", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins','Ten Thunders']))
	Upgrade.create(name: "Hold Their Hair Back", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins','Ten Thunders']))
	Upgrade.create(name: "Running Tab", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins','Ten Thunders']))
	Upgrade.create(name: "The Good Stuff", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins','Ten Thunders']))
	Upgrade.create(name: "Drinking 'Problem'", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins','Ten Thunders']))
	Upgrade.create(name: "Angry Drunk", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins','Ten Thunders']))
	Upgrade.create(name: "Hooch Igniter", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Jug Rocket", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "My Threatenin' Gun", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Gremlin See", soulstones: 1, rare: 2, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Team Work", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Gremlins']))
	
	puts '-- Ten Thunders'
	Upgrade.create(name: "Servant of 5 Dragons", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Broken Promises", soulstones: 2, rare: 2, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Dragon Stone", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Misdirection", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Recalled Training", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Disguise", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Outcasts']))
	Upgrade.create(name: "Cutpurse", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Outcasts']))
	Upgrade.create(name: "Untouchable", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Outcasts']))
	Upgrade.create(name: "Stalking Bisento", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Outcasts']))
	Upgrade.create(name: "Smoke & Shadows", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Outcasts']))
	Upgrade.create(name: "Call The Thunder", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Thunderous Smash", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Arcanists']))
	Upgrade.create(name: "Seismic Claws", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Arcanists']))
	Upgrade.create(name: "Price of Progress", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Arcanists']))
	Upgrade.create(name: "Vapormancy", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Arcanists']))
	Upgrade.create(name: "People's Challenge", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Arcanists']))
	Upgrade.create(name: "Hard Worker", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Arcanists']))
	Upgrade.create(name: "The Rising Sun", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Neverborn']))
	Upgrade.create(name: "Expert Cheater", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Neverborn']))
	Upgrade.create(name: "Wanna See a Trick", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Neverborn']))
	Upgrade.create(name: "Woke Up With a Hand", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Neverborn']))
	Upgrade.create(name: "Endless Hunger", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Neverborn']))
	Upgrade.create(name: "Addict", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Neverborn']))
	
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
	Upgrade.create(name: "Surprisingly Loyal", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild','Neverborne']))
	Upgrade.create(name: "Secret Objectives", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild','Neverborne']))
	Upgrade.create(name: "Legalese", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild','Neverborne']))
	Upgrade.create(name: "Secret Assets", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild','Neverborne']))
	Upgrade.create(name: "Watch My Back", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Useless Duplicitations", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild','Neverborne']))
	Upgrade.create(name: "Arcanist Assets", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "On Site Assimilation", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Field Mechanic", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Remote Mines", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Pieces of Myself", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Dampening Field", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Expert Sleuth", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Tessellating Magnet", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	
	puts '-- Resurrectionists'
	Upgrade.create(name: "Forgotten Path", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Forgotten Life", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Terrible Knowledge", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Tear of the Gorgon", soulstones: 3, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Take Back The Night", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Absorb Spirit", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Bloody Shears", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Unforgiven", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Swirling Aether", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Spirit Whispers", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Spirit Beacon", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Spare Parts", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Necrotic Preparation", soulstones: 1, rare: 3, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Pack", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	
	puts '-- Arcanists'
	Upgrade.create(name: "Challenge the Crowd", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Iron Determination", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Frontline Leadership", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Warding Runes", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Message from the Union", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Blood Ward", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Nemesis Ward", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Doom Ward", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Cabaret Choreography", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "A Lady's Secret", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Nothing Up My Sleeve", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Shell Game", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Practiced Production", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Smoke and Mirrors", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Grab and Drop", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Purifying Fire", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Born of Fire", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Blinding Flame", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Powered By Flame", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Seize the Day", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Killswitch", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Patron's Blessing", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Decoy", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	
	puts '-- Neverborn'
	Upgrade.create(name: "Otherworldly", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Restless Dreams", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Tantrum", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Dreams of Pain", soulstones: 5, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "On Dreaming Wings", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Threads of Fate", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Fated", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Breathe Life", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Bag of Props", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "A Friend to Talk To", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Strum the Threads", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "The True Mother", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Protect the Yound", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Retribution's Eye", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "On Wings of Darkness", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "The Mimic's Blessing", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Handbag", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	
	puts '-- Outcasts'
	Upgrade.create(name: "Firing Squad Injustice", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Drowning Injustice", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Guillotine Injustice", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Betrayer", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Writhing Torment", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Twist and Turn", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "The Creeping Terror", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Feaful Whispers", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "The Plague", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "The Piper", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Tools of the Tyrant", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Sewer King", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Hollow", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Infectious Melodies", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Pariah of Stone", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "From Ash", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "To the Earth Return", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Pariah of Iron", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "From the Aether", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Desolate Soul", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "I Pay Better", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Scout the Field", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Void Shield", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']))
	Upgrade.create(name: "The Faces of Oblivion", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']))
	
	puts '-- Gremlins'
	Upgrade.create(name: "Clobberin' Stick", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Huntin' Bow", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Pig Sling", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Husbandry", soulstones: 3, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Corn Husks", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Saddle", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Three Demon Bag", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "A Gremlin's Luck", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Explosive Solutions", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Ooo Glowy", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Out For Blood", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Know the Terrain", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Lead Lined Apron", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Bounty", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "A Gun For A Lady", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Cute Critters", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Mud Toss", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Extra Gremlin", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Hexed Among You", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins','Neverborn']))
	Upgrade.create(name: "On Yer Tip Toes", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Hide in the Mud", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	
	puts '-- Ten Thunders'
	
	Upgrade.create(name: "Badge of Speed", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']))
	Upgrade.create(name: "Glowing Saber", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']))
	Upgrade.create(name: "Elixir of Life", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']))
	Upgrade.create(name: "Strangemetal Shirt", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']))
	Upgrade.create(name: "Promises", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']))
	Upgrade.create(name: "By Your Side", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']))
	Upgrade.create(name: "Barbs", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']))
	Upgrade.create(name: "Fortify the Spirit", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']))
	Upgrade.create(name: "Reliquary", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']))
	Upgrade.create(name: "Brutal Khakkhara", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']))
	Upgrade.create(name: "Ash Ascendant", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']))
	Upgrade.create(name: "Spirit Ascendant", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']))
	Upgrade.create(name: "Pull of the Grave", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']))
	Upgrade.create(name: "Bone Ascendant", soulstones: 3, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']))
	Upgrade.create(name: "Command the Graves", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']))
	Upgrade.create(name: "Words on the River", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Low River Style", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Fermented River Style", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "High River Style", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Wandering River Style", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Promising Disciple", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Smoke Grenades", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Hidden Agenda", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "On Wings of Wind", soulstones: 2, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Blot The Sky", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Favour of Heaven", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Favour of Earth", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Favour of Jigoku", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	
	puts 'SETTING UP Shifting Loyalties Models'
	puts '-- Guild'
	Model.create(name: "Brutal Emissary", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Master Queeg", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Dr. Grimwell", soulstones: 9, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Nurse Heartsbane", soulstones: 8, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Greed", soulstones: 8, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Sanctioned Spellcaster", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Orderlyy", soulstones: 5, rare: 2, mercenary: true,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Mounted Guard", soulstones: 7, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Guild']), 
		:station => Station.find_by_name('Minion'))
	
	
	puts '-- Resurrectionists'
	Model.create(name: "Carrion Emissary", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Anna Lovelace", soulstones: 9, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Sloth", soulstones: 8, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "The Forgotten Marshal", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Hayreddin", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Resurrectionists']), 
		:station => Station.find_by_name('Enforcer'))
	
	puts '-- Arcanists'
	Model.create(name: "Arcane Emissary", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Wind Gamin", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "The Scorpius", soulstones: 6, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Ice Dancer", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Envy", soulstones: 8, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Arcanists']), 
		:station => Station.find_by_name('Enforcer'))
	
	puts '-- Neverborn'
	Model.create(name: "Mysterious Emissary", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Wrath", soulstones: 8, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Angel Eyes", soulstones: 9, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Scion of Black Blood", soulstones: 8, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Corrupted Hound", soulstones: 3, rare: 4, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Changeling", soulstones: 4, rare: 3, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Bloodwretch", soulstones: 5, rare: 2, mercenary: true,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Bunraku", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Neverborn']), 
		:station => Station.find_by_name('Minion'))
	
	puts '-- Outcasts'
	Model.create(name: "Hodgepodge Emissary", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Scion of the Void", soulstones: 8, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Pride", soulstones: 8, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Big Jake", soulstones: 5, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "The Winged Plague", soulstones: 4, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Outcasts']), 
		:station => Station.find_by_name('Minion'))
		
	puts '-- Gremlins'
	Model.create(name: "Lucky Emissary", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Sparks", soulstones: 7, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Henchman'))
	Model.create(name: "Gluttony", soulstones: 8, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Survivor", soulstones: 5, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Mechanized Pig Porkchop", soulstones: 7, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Gremlins']), 
		:station => Station.find_by_name('Minion'))
		
	puts '-- Ten Thunders'
	Model.create(name: "Shadow Emissary", soulstones: 10, rare: 1, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Lust", soulstones: 8, rare: 1, mercenary: true,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Enforcer'))
	Model.create(name: "Wandering River Monk", soulstones: 7, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Obsidian Oni", soulstones: 6, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
	Model.create(name: "Jorogumo", soulstones: 9, rare: 0, mercenary: false,  
		:factions => Faction.where(:name => ['Ten Thunders']), 
		:station => Station.find_by_name('Minion'))
		
	puts 'SETTING UP Shifting Loyalties Upgrades'
	puts '-- Guild'
	Upgrade.create(name: "Research Grant", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Conflux of Judgement", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Conflux of Incineration", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Conflux of the Hunt", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Brutal Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Conflux of Amalgamation", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Guild']))
	Upgrade.create(name: "Conflux of Tyranny", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Guild','Neverborn']))
	
	puts '-- Resurrectionists'
	Upgrade.create(name: "Conflux of Infamy", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Conflux of Death", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Conflux of Forbidden Knowledge", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Resurrectionists','Guild']))
	Upgrade.create(name: "Conflux of Spirit", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Conflux of Horror", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	Upgrade.create(name: "Carrion Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Resurrectionists']))
	
	puts '-- Arcanists'
	Upgrade.create(name: "Elemental Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Raging Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Illusive Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Ironclad Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Mechanical Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Flaming Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	Upgrade.create(name: "Arcane Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Arcanists']))
	
	puts '-- Neverborn'
	Upgrade.create(name: "Strange Alliances", soulstones: 1, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Deal ath the Crossroads", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Conflux of Sorrow", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Conflux of Blood", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Conflux of Fate", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Neverborn','Gremlins']))
	Upgrade.create(name: "Conflux of Music", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Conflux of Nightmare", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	Upgrade.create(name: "Mysterious Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Neverborn']))
	
	puts '-- Outcasts'
	Upgrade.create(name: "Conflux of Avarice", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Conflux of Nothingness", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts','Resurrectionists']))
	Upgrade.create(name: "Conflux of Plague", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Conflux of Conflict", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Aethereal Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	Upgrade.create(name: "Hodgepodge Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Outcasts']))
	
	puts '-- Gremlins'
	Upgrade.create(name: "Conflux of Misfortune", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Conflux of Inebriation", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Gremlins','Ten Thunders']))
	Upgrade.create(name: "Conflux of Blood Ties", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Conflux of Bacon", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Conflux of Explosive Force", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Conflux of Bushwhacking", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	Upgrade.create(name: "Lucky Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Gremlins']))
	
	puts '-- Ten Thunders'
	Upgrade.create(name: "Conflux of Combat", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Arcanists']))
	Upgrade.create(name: "Conflux of Hunger", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Neverborn']))
	Upgrade.create(name: "Conflux of Exploration", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Guild']))
	Upgrade.create(name: "Conflux of the Dawn", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	Upgrade.create(name: "Conflux of Thunder", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Outcasts']))
	Upgrade.create(name: "Ancestral Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders','Resurrectionists']))
	Upgrade.create(name: "Shadow Conflux", soulstones: 0, rare: 1, :factions => Faction.where(:name => ['Ten Thunders']))
	
	puts 'SETTING UP Shifting Loyalties Campaign Equipment'
	puts '-- General'
	Equipment.create(name: "Can O' Beans", soulstones: 1, barter: 1, campaign_cost: 1, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Coffee", soulstones: 0, barter: 1, campaign_cost: 1, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Whiskey", soulstones: 0, barter: 2, campaign_cost: 2, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Helmet", soulstones: 1, barter: 2, campaign_cost: 3, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Clockwork Seeker", soulstones: 1, barter: 2, campaign_cost: 5, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Tool Kit", soulstones: 1, barter: 3, campaign_cost: 3, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Flammenwerfer", soulstones: 1, barter: 3, campaign_cost: 4, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Collier Pistol", soulstones: 1, barter: 4, campaign_cost: 5, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Soulstone Ale", soulstones: 0, barter: 5, campaign_cost: 3, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Katanas", soulstones: 1, barter: 5, campaign_cost: 2, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Machete", soulstones: 0, barter: 6, campaign_cost: 3, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Ancient Scrolls", soulstones: 1, barter: 6, campaign_cost: 4, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Freikorps Suit", soulstones: 0, barter: 7, campaign_cost: 2, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Metal Plate", soulstones: 1, barter: 8, campaign_cost: 3, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Greatsword", soulstones: 2, barter: 8, campaign_cost: 6, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Scope", soulstones: 0, barter: 9, campaign_cost: 3, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Extended Blade", soulstones: 1, barter: 9, campaign_cost: 5, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Aetheric Disruptor", soulstones: 1, barter: 10, campaign_cost: 3, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Snares", soulstones: 1, barter: 10, campaign_cost: 2, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Dynamite", soulstones: 0, barter: 11, campaign_cost: 2, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Flak Jacket", soulstones: 0, barter: 11, campaign_cost: 5, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Hydraulics", soulstones: 1, barter: 12, campaign_cost: 2, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Grotesque Trophy", soulstones: 1, barter: 12, campaign_cost: 3, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Jetpack", soulstones: 0, barter: 13, campaign_cost: 5, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Healing Salve", soulstones: 0, barter: 13, campaign_cost: 3, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Relic Hammer", soulstones: 1, barter: 13, campaign_cost: 5, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Gatling Gun", soulstones: 2, barter: 13, campaign_cost: 7, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Those Who Thirst - Edict", soulstones: 2, barter: 14, campaign_cost: 7, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Those Who Thirst - Insight", soulstones: 2, barter: 14, campaign_cost: 7, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Those Who Thirst - Blight", soulstones: 2, barter: 14, campaign_cost: 7, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Those Who Thirst - Covenant", soulstones: 2, barter: 14, campaign_cost: 7, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
		
	puts 'SETTING UP Shifting Loyalties Campaign Skills'
	puts '-- General'
	Skill.create(name: "Arcane Background", soulstones: 0, barter: 1, campaign_cost: 4, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "The Hag's Kiss", soulstones: 0, barter: 2, campaign_cost: 3, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Expanded Palate", soulstones: 0, barter: 3, campaign_cost: 2, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Fortitude of Mind", soulstones: 0, barter: 3, campaign_cost: 2, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Off-hand Fighting", soulstones: 0, barter: 4, campaign_cost: 4, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Off-hand Shot", soulstones: 0, barter: 4, campaign_cost: 4, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Field Experience", soulstones: 0, barter: 4, campaign_cost: 2, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Steady Aim", soulstones: 0, barter: 5, campaign_cost: 3, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Steady Hands", soulstones: 0, barter: 5, campaign_cost: 3, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Agility", soulstones: 0, barter: 6, campaign_cost: 5, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Berserk", soulstones: 0, barter: 6, campaign_cost: 4, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Duelist", soulstones: 0, barter: 7, campaign_cost: 4, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Fan the Hammer", soulstones: 0, barter: 7, campaign_cost: 4, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Tough As Nails", soulstones: 0, barter: 7, campaign_cost: 2, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Quick Study", soulstones: 0, barter: 8, campaign_cost: 4, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Sharpshooter", soulstones: 0, barter: 8, campaign_cost: 4, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Quick Reflexes", soulstones: 0, barter: 9, campaign_cost: 4, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Neverborn Hide", soulstones: 0, barter: 9, campaign_cost: 3, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Enchanted Weapons", soulstones: 0, barter: 10, campaign_cost: 4, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Determination", soulstones: 0, barter: 10, campaign_cost: 5, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Thick Hide", soulstones: 0, barter: 11, campaign_cost: 5, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Pneumatic Legs", soulstones: 1, barter: 11, campaign_cost: 8, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Bond", soulstones: 0, barter: 12, campaign_cost: 3, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Instinctual", soulstones: 0, barter: 12, campaign_cost: 5, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Skill.create(name: "Fated", soulstones: 0, barter: 14, campaign_cost: 4, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
		
	puts 'SETTING UP Shifting Loyalties Campaign Rewards'
	puts '-- Guild rewards'
	Equipment.create(name: "Retribution (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Guild']))
	Equipment.create(name: "Modified Barrel (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Guild']))
	Skill.create(name: "Brutal (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Guild']))
	Equipment.create(name: "Improvised Explosives (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Guild']))
	
	puts '-- Resurrectionists rewards'
	Equipment.create(name: "Restless Dead (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Resurrectionists']))
	Equipment.create(name: "Anaphylactic Shock (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Resurrectionists']))
	Equipment.create(name: "Extra Limbs (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Resurrectionists']))
	Equipment.create(name: "Edge of Eternity (Bounty Reward)", soulstones: 2, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Resurrectionists']))
	
	puts '-- Arcanists rewards'
	Equipment.create(name: "Tools of the Trade (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Arcanists']))
	Equipment.create(name: "Welding Torch (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Arcanists']))
	Equipment.create(name: "A Cold Wind (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Arcanists']))
	Equipment.create(name: "Stage Makeup (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Arcanists']))
	
	puts '-- Neverborn rewards'
	Equipment.create(name: "Echoes of Madness (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Neverborn']))
	Skill.create(name: "Blessings of Fate (Bounty Reward)", soulstones: 0, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Neverborn']))
	Equipment.create(name: "Our Commands (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Neverborn']))
	Equipment.create(name: "On Our Ground (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Neverborn']))
	
	puts '-- Outcasts rewards'
	Skill.create(name: "Well Trained (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Outcasts']))
	Equipment.create(name: "Aetheric Feed (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Outcasts']))
	Equipment.create(name: "Paid In Advance (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Outcasts']))
	Skill.create(name: "Torment To Share (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Outcasts']))
	
	puts '-- Gremlins rewards'
	Equipment.create(name: "Dolly Makin' Time (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Gremlins']))
	Equipment.create(name: "Extra Powder (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Gremlins']))
	Equipment.create(name: "Long-Lost Cousin (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Gremlins']))
	Equipment.create(name: "Swamp Gas (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Gremlins']))
	
	puts '-- Ten Thunders rewards'
	Equipment.create(name: "Combo (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Ten Thunders']))
	Equipment.create(name: "Debts Paid (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Ten Thunders']))
	Skill.create(name: "Introspection (Bounty Reward)", soulstones: 0, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Ten Thunders']))
	Equipment.create(name: "Lead From The Front (Bounty Reward)", soulstones: 1, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Ten Thunders']))
	
	puts '-- Generic rewards'
	Skill.create(name: "Favors of Treachery (Bounty Reward)", soulstones: 0, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Favours of Steel (Bounty Reward)", soulstones: 0, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Favours of Wind (Bounty Reward)", soulstones: 0, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Favours of Fate (Bounty Reward)", soulstones: 2, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Equipment.create(name: "Favours of Death (Bounty Reward)", soulstones: 0, barter: 99, campaign_cost: 0, :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	
	puts 'SETTING UP Shifting Loyalties Campaign Bounties'
	puts '-- Generic bounties'
	Bounty.create(name: "Hunt Them Down", description: "Kill or sacrifice 2 enemy Leaders.  When this Bounty is accomplished, the reward flip gains [+][+]", :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Bounty.create(name: "Build a Reputation", description: "Earn 3 or more VP from a single Strategy 2 times.", :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Bounty.create(name: "Covert Operation", description: "Earn full VP from two of the following Schemes: Plant Explosives, Make Them Suffer, and Deliver a Message.  This Crew may always choose one of the above Schemes, regardless of Scheme Pool, so long as they have not already completed it for Bounty purposes.  Only one Scheme may count towards this Bounty per game.", :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Bounty.create(name: "On the Payroll", description: "Earn full VP from two of the following Schemes at least once: Breakthrough, Protect Territory, and Bodyguard.  When this Bounty is accomplished, the Reward flip suffers [-].  Only one Scheme may count towards this Bounty per game.", :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Bounty.create(name: "Cleanup Crew", description: "Remove at least one enemy Scheme Marker using the (1) Interact Action 3 times.  This may be accomplished in one game.  When this Bounty is accomplished, the Reward flip suffers [-].", :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Bounty.create(name: "Hunting Party", description: "Kill or sacrifice three Neutral models.", :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Bounty.create(name: "Trophy Hunter", description: "Kill or sacrifice the highest cost non-Leader model in an opposing Crew 2 times in two different games (if multiple models are tied, the first of the tied models killed or sacrificed counts for this Bounty).", :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Bounty.create(name: "Just Live Through This", description: "Complete an Encounter without any friendly models being killed or sacrificed or using Strategic Withdrawal.  The Reward flip gains [+][+].", :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Bounty.create(name: "Strange Times", description: "Earn at least 1 Scrip from the weekly Event 2 times during 2 different Encounters.", :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Bounty.create(name: "Mark Our Territory", description: "Score full VP from A Line in the Sand, 2 times.", :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Bounty.create(name: "Take Their Land", description: "End the game with more friendly models in the opponent's Deployment Zone than enemy models, 2 times.", :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Bounty.create(name: "Map It Out", description: "End the game with a Scheme Marker in each quarter of the board after scoring all VP, 2 times.  Scheme Markers within 6 inches of the center of the board or straddling multiple quarters do not count.", :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Bounty.create(name: "Escort Mission", description: "At the start of the game, secretly note a friendly non-Leader model.  End the game with the noted model in the opposing Deployment Zone, 2 times.", :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	Bounty.create(name: "Hit List", description: "At the start of the game, secretly note down a non-Leader enemy model with a Soulstone Cost of 6 or more.  Kill or sacrifice the noted model, 2 times.", :factions => Faction.where(:name => ['Guild','Resurrectionists','Arcanists','Neverborn','Outcasts','Gremlins','Ten Thunders']))
	
	puts '-- Guild bounties'
	Bounty.create(name: "Roundup", description: "After deployment, name a Characteristic shared by at least three enemy models.  End the game with no models with the namesd Characteristic in play, 2 times.", :factions => Faction.where(:name => ['Guild']))
	Bounty.create(name: "Apprehend Their Leader", description: "End the game with at least two friendly models engaging the enemy Leader, 2 times.", :factions => Faction.where(:name => ['Guild']))
	Bounty.create(name: "Drive Them Back", description: "Kill or sacrifice 8 enemy Minions, Peons or Totems.", :factions => Faction.where(:name => ['Guild']))
	
	puts '-- Resurrectionists bounties'
	Bounty.create(name: "Lend a Hand", description: "End a game with 5 or more Corpse Markers in play, 2 times.", :factions => Faction.where(:name => ['Resurrectionists']))
	Bounty.create(name: "The Dead Horde", description: "Summon 12 or more Soulstones worth of models during a game, 2 times.", :factions => Faction.where(:name => ['Resurrectionists']))
	Bounty.create(name: "Infectious Fear", description: "Have 4 enemy models fail a Horror Duel generated by your models.", :factions => Faction.where(:name => ['Resurrectionists']))
	
	puts '-- Arcanists bounties'
	Bounty.create(name: "Spare Parts", description: "End a game with 4 or more Scrap Markers in play, 2 times.", :factions => Faction.where(:name => ['Arcanists']))
	Bounty.create(name: "Leave Our Mark", description: "End a game with 4 or more friendly Scheme Markers in play after determining all VP, 2 times.", :factions => Faction.where(:name => ['Arcanists']))
	Bounty.create(name: "Sabotage", description: "Prevent the opponent from gaining more than 2 VP from the Strategy, 2 times.", :factions => Faction.where(:name => ['Arcanists']))
	
	puts '-- Neverborn bounties'
	Bounty.create(name: "Purge", description: "Kill or sacrifice at least 4 Living or Undead enemy models during a game, 2 times.", :factions => Faction.where(:name => ['Neverborn']))
	Bounty.create(name: "Unseen Objectives", description: "Win a game in which you took 2 unrevealed Schemes, 2 times.", :factions => Faction.where(:name => ['Neverborn']))
	Bounty.create(name: "Lessons Learned in Blood", description: "Kill or sacrifice 4 enemy Masters, Enforcers, or Henchmen.", :factions => Faction.where(:name => ['Neverborn']))
	
	puts '-- Outcasts bounties'
	Bounty.create(name: "Cursed Wretches", description: "End the game with three or more enemy models suffering a Condition applied by one of your models or with an Upgrade that was attached by one of your models, 2 times.", :factions => Faction.where(:name => ['Outcasts']))
	Bounty.create(name: "Collect the Ransom", description: "At the start of each game, secretly note down a non-Leader enemy model with a Soulstone Cost of 6 or more.  End the game with 2 or more models engaged with the noted model, 2 times.", :factions => Faction.where(:name => ['Outcasts']))
	Bounty.create(name: "Do the Job, Get Paid", description: "Win three games.", :factions => Faction.where(:name => ['Outcasts']))
	
	puts '-- Gremlins bounties'
	Bounty.create(name: "Hog Wild", description: "End the game with at least one pig in every Quarter of the board, 2 times.  Pigs straddling multiple Quarters count for none of them", :factions => Faction.where(:name => ['Gremlins']))
	Bounty.create(name: "Burn Down the Barn", description: "Have a friendly model be killed during its own Activation, 5 times.", :factions => Faction.where(:name => ['Gremlins']))
	Bounty.create(name: "Kablooowy!", description: "Kill 3 enemy models using Blast or Pulse.", :factions => Faction.where(:name => ['Gremlins']))
	
	puts '-- Ten Thunders bounties'
	Bounty.create(name: "Purity of Spirit", description: "Kill or sacrifice 6 enemy models while this Crew has no Soulstones in its Pool.", :factions => Faction.where(:name => ['Ten Thunders']))
	Bounty.create(name: "Ancestral Artifacts", description: "Attach 3 or more Upgrades to models in this Crew during a game, 2 times.", :factions => Faction.where(:name => ['Ten Thunders']))
	Bounty.create(name: "Strike From Darkness", description: "Kill or sacrifice the first model during a game, 2 times.  The model must be an enemy.", :factions => Faction.where(:name => ['Ten Thunders']))
	
	puts 'SETTING UP Shifting Loyalties Campaign Injuries'
	Injury.create(name: "Fragile +1", description: "Damage flips against this model gain [+].")
	Injury.create(name: "Shaky Nerves", description: "This model may not Charge.")
	Injury.create(name: "Amputation", description: "Reduce this model's Wd stat by 2.")
	Injury.create(name: "Hearing Voices", description: "Reduce this model's Wp by 2.")
	Injury.create(name: "Crippling Pain", description: "Reduce this model's Wk0 by 1.")
	Injury.create(name: "Not Quite Right", description: "This model may not take Interact Actions.")
	Injury.create(name: "Blow to the Head", description: "This model must discard a card at the start of every Activation or gain Slow.")
	Injury.create(name: "Slowed Reflexes", description: "Reduce this model's Df by 1.")
	Injury.create(name: "Cursed", description: "This model loses all Suits printed on its Statistics.")
	Injury.create(name: "Swamp Hex", description: "This model must discard a card to perform a (0) Action.")
	Injury.create(name: "Blood Hex", description: "This model must discard a card to declare a Trigger.")
	Injury.create(name: "Shaken", description: "This model suffers [-] to Df and Wp duesl.  Annihilate this Injury during the Aftermath phase of the next game this model plays, before determining Injuries.")
	Injury.create(name: "Broken Arm", description: "Reduce this model's Ml by 1.")
	Injury.create(name: "Fractured Wrist", description: "Reduce this model's Sh by 1.")
	Injury.create(name: "Missing Fingers", description: "Reduce this model's Ca by 1.")
	Injury.create(name: "Baggage", description: "When this model is killed or sacrificed, the opposing player may place a Scheme Marker in base contact with it before removing it.")
	Injury.create(name: "Big Head", description: "Increase this model's Soulstone Cost by 1.")
	Injury.create(name: "Accident Prone", description: "This model is automatically Finished Off when killed or sacrificed.")
	Injury.create(name: "Easily Distracted", description: "When calculating VP this model counts as having the Peon Characteristic.")
	Injury.create(name: "Flashbacks", description: "When this model is targeted by a Charge, it must pass a TN 14 Wp duel or gain Paralyzed.")
	Injury.create(name: "Wanted", description: "The next time this model is killed or sacrificed, the opposing Crew gains 2 Scrip and then this Injury is Annihilated.")
	Injury.create(name: "Unfocused", description: "This model may not take the Focus Action.")
	Injury.create(name: "Foolhardy", description: "This model may not take the Defensive Stance Action.")
	Injury.create(name: "Wanders Off", description: "After flipping for initiative on the first Turn, the opposing player may push this model up to 6 inches in any direction.")
	
	puts 'SETTING UP Shifting Loyalties Campaign Lucky Misses'

	puts '-- Guild Lucky Misses'
	Skill.create(name: "Martyr (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Guild']))
	Skill.create(name: "In the Name of Research (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Guild']))
	Skill.create(name: "Relentless (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Guild']))
	Skill.create(name: "Secret Directive (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Guild']))
	Skill.create(name: "Deep Pockets (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Guild']))
	
	puts '-- Resurrectionists Lucky Misses'
	Skill.create(name: "My Lucky Stitches (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Resurrectionists']))
	Skill.create(name: "Too Many Pieces (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Resurrectionists']))
	Skill.create(name: "Embalmed (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Resurrectionists']))
	Skill.create(name: "Pounce (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Resurrectionists']))
	Skill.create(name: "Spirit (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Resurrectionists']))
	
	puts '-- Arcanists Lucky Misses'
	Skill.create(name: "Hydraulic Limb (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Arcanists']))
	Skill.create(name: "Armour +1 (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Arcanists']))
	Skill.create(name: "December's Hunger (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Arcanists']))
	Skill.create(name: "Bestial Rage (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Arcanists']))
		
	puts '-- Neverborn Lucky Misses'
	Skill.create(name: "To the Death (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Neverborn']))
	Skill.create(name: "Silent (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Neverborn']))
	Skill.create(name: "Ravenous (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Neverborn']))
	Skill.create(name: "Slippery (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Neverborn']))
	
	puts '-- Outcasts Lucky Misses'
	Skill.create(name: "The Hunter (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Outcasts']))
	Skill.create(name: "The Scholar (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Outcasts']))
	Skill.create(name: "The Scavenger (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Outcasts']))
	Skill.create(name: "The Murderer (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Outcasts']))
	Skill.create(name: "The Chosen (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Outcasts']))
	
	puts '-- Gremlins Lucky Misses'
	Skill.create(name: "Stop Hitting Yourself! (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Gremlins']))
	Skill.create(name: "Lowered Expectations (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Gremlins']))
	Skill.create(name: "Twitchy (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Gremlins']))
	Skill.create(name: "Fast Runner (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Gremlins']))
	Skill.create(name: "Scapegoat (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Gremlins']))
	
	puts '-- Ten Thunders Lucky Misses'
	Skill.create(name: "Out of the Fire (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Ten Thunders']))
	Skill.create(name: "Arcane Disturbance (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Ten Thunders']))
	Skill.create(name: "Clear Mind, Pure Body (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Ten Thunders']))
	Skill.create(name: "Reserves (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Ten Thunders']))
	Skill.create(name: "Ninja Attack! (Lucky Miss)", soulstones: 0, barter: 199, campaign_cost: 0, :factions => Faction.where(:name => ['Ten Thunders']))
	
	
#	Model.create(name: "", soulstones: , rare: , mercenary: false,  
#		:factions => Faction.where(:name => ['']), 
#		:station => Station.find_by_name(''))
	
#	Upgrade.create(name: "", soulstones: , rare: 1, :factions => Faction.where(:name => ['Guild']))