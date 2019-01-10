# Les règles du jeu
def start
	puts ">> 10 Stairs Kingdom, le jeu <<"
	puts "Règles du jeu :"
	puts "Pour chaque lancer de dé"
	puts "> 1: recules d'une marche"
	puts "> 2,3 ou 4: restes sur la marche"
	puts "5 ou 6: avances d'une marche"
	puts "Quand tu atteinds la 10eme marche -> C'est gagné !"
	puts "Tu commences ici : <*..........>"
	return 0
end

# Message victoire
def win
	puts "Félicitation !"
	puts "Tu es arrivé en haut des 10 marches !"
end

# Resultat du joueur
def lancer
	puts "Lances le dé en tappant sur entrée"
	print ">"
	a = gets.chomp
	x = rand(6)+1
	puts "Résultat du dé : #{x}"
	return x
end

# Parcours visuel du joueur
def plateau(a)
	if a == 0
		puts "<*..........>"
	elsif a == 1
		puts "<.*........."
	elsif a == 2
    	puts "<..*........>"
  	elsif a == 3
   	 puts "<...*.......>"
 	 elsif a == 4
    	puts "<....*......>"
  	elsif a == 5
    	puts "<.....*.....>"
  	elsif a == 6
    	puts "<......*....>"
  	elsif a == 7
    	puts "<.......*...>"
  	elsif a == 8
    	puts "<........*..>"
  	elsif a == 9
    	puts "<.........*.>"
  	elsif a == 10
    	puts "<..........*>"
  end
end

# Retour pour le joueur
def result(l)
	if l==1
		puts " -> Tu recules d'une case"
		return -1
	elsif l==2 || l==3 || l==4
		puts " -> Tu ne changes pas de case"
		return 0
	else
		puts " -> Tu avances à la prochaine case"
		return 1
	end
end

# Définit la méthode pour jouer
def play(c)
	l = lancer
	r = result(l)
	c += r
	if c<0
		c=0
	end
	plateau(c)
	if c<10
		play(c)
	end
end

# Calcule la moyenne sur "g" lancer
def average_finish_time(g)
	tab=Array.new
	g.times do
	c=0
	count=0
	while c<10
		x = rand(6)+1
		count += 1
		if x==1
			c-=1
	elsif x==5 || x==6
		c+=1
	end
	if c<0
		c=0
	end
end
tab << count
end
puts tab.sum / tab.size.to_f
end

def perform
	z=start
	play(z)
	win
end

#perform -> lancer une partie
perform

#average_finish_time(1000000)