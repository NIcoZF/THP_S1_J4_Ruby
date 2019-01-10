def signup
	puts "Configurez votre mot de passe : "
	pass = gets.chomp
	return pass
end

def login(x) 
    puts "Veuillez renseigner votre mot de passe"
    print "> "
    input=gets.chomp
    n=3
    while input!= x do puts "Mauvais mot de passe !"
        puts "Essayez une nouvelle fois, #{n} essais restants."
        print "> "
        input = gets.chomp
        n -= 1
        if n == 0 then break
        end
    end

    if n==-0 then puts "Plus aucun essai restant, système verrouillé !"
        return 0
        else
        return 1
    end
end

def welcome_screen(answer)
	if answer == 0 then abort
		else
		puts ""
		puts "+----------------------------------------------+"
		puts "|                                              |"
		puts "|                                              |"
		puts "|   +------------------------------------+     |"
		puts "|   |   Bienvenue dans la zone secrête   |     |"
		puts "|   |                                    |     |"
		puts "|   | Les chaussettes de l'archiduchesse |     |"
		puts "|   | ne sont pas aussi sèches que ce    |     |"
		puts "|   | ce que laisse entendre son         |     |"
		puts "|   | sénéchal                           |     |"
		puts "|   |                                    |     |"
		puts "|   +------------------------------------+     |"
		puts "|                                              |"
		puts "|                                              |"
		puts "+----------------------------------------------+"
		puts ""
	end
end

def perform
	pass = signup 
	x = login(pass)
	welcome_screen(x)
end

perform