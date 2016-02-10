# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	
	Flavour.create(title: "Red Right Hand", order: 1, active: true, content: "<iframe width="560" height="315" src="https://www.youtube.com/embed/KGD2N5hJ2e0" frameborder="0" allowfullscreen></iframe>")
	Flavour.create(title: "Kali 47", order: 2, active: true, content: "<iframe width="560" height="315" src="https://www.youtube.com/embed/3Jjq-PbcsbU" frameborder="0" allowfullscreen></iframe>")
	Flavour.create(title: "Steampunk Revolution", order: 3, active: false, content: "<iframe width="560" height="315" src="https://www.youtube.com/embed/yeEI-hh3MG0" frameborder="0" allowfullscreen></iframe>")
	Flavour.create(title: "Steam Powered Giraffe", order: 4, active: false, content: "<iframe width="560" height="315" src="https://www.youtube.com/embed/ojYK6CW8gdw" frameborder="0" allowfullscreen></iframe>")
	Flavour.create(title: "The Ballad of Mona Lisa", order: 5, active: false, content: "<iframe width="560" height="315" src="https://www.youtube.com/embed/gOgpdp3lP8M" frameborder="0" allowfullscreen></iframe>")
	Flavour.create(title: "Rountable Rival", order: 6, active: false, content: "<iframe width="560" height="315" src="https://www.youtube.com/embed/jvipPYFebWc" frameborder="0" allowfullscreen></iframe>")
	Flavour.create(title: "House of Cards", order: 7, active: false, content: "<iframe width="560" height="315" src="https://www.youtube.com/embed/7jzJqqTNjVw" frameborder="0" allowfullscreen></iframe>")
