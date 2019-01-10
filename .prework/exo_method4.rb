def convert_to_min(seconds)
	seconds = seconds.to_i
	seconds / 60
end

def convert_to_seconds(minutes)
	minutes = minutes.to_i
	minutes * 60
end

def salutation(nom, prefix = "Bonjour")
	puts "#{prefix} #{nom}"
end

#utilisation du splat *noms
def liste (prefix, *noms)
	#puts noms.inspect
	noms.each do |nom|
		puts "- #{prefix} #{nom}"
	end
end

#puts convert_to_min(4000)
#puts convert_to_min("60")
#puts salutation('Jean')
#puts salutation('Marc', 'Salut')
#liste("Salut", 'Marc', 'Jean', 'Marion', 'Manon', 'Marine', 'Jonathan')

#noms dans la liste à réorganiser : true = ordre croissant de A vers Z ou false de Z=>A, 
#puis liste de noms, parfois les noms sont en symboles ":Manon"

def reorganiser_liste(croissant, *noms)
	
# méthode "newb" optimisable pour la première partie
#
#	nouveau_noms = []
#	noms.each do |nom|
#		nouveau_noms << nom.to_s
#	end

#meilleure méthode collect
	nouveau_noms = noms.collect { |nom| nom.to_s }
#suite exercice
	nouveau_noms.sort!
	nouveau_noms.reverse! if !croissant
	return nouveau_noms
end
# organise a => Z
puts reorganiser_liste(true, 'Marc', 'Jean', 'Marion', :Manon, :Jonathan, 'Antoine').inspect
# organise Z => a
puts reorganiser_liste(false, 'Marc', 'Jean', 'Marion', :Manon, :Jonathan, 'Antoine').inspect