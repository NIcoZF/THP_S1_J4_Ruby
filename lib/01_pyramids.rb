def pyramid(etages)
  etages.times {|n|
    print ' ' * (etages - n)
    puts '#' * (2 * n + 1)
  }
end

def ask_etages
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	etages = gets.chomp.to_i
	return pyramid(etages)
end

ask_etages