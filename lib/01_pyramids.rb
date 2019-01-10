#Half



# Full
def full_pyramid(etages)
  etages.times {|n|
    print ' ' * (etages - n)
    puts '#' * (2 * n + 1)
  }
end

def ask_etages
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	etages = gets.chomp.to_i
	return full_pyramid(etages)
end

# WTF Pyramid

def pyramid(etages)
  etages.times {|n|
    print ' ' * (etages - n)
    puts '#' * (2 * n + 1)
  }
  etages = etages - 1
  etages.times {|n|
      print ' ' * (n + 2)
      puts '#' * (2 * etages - 2 * n - 1)
  }
end

def ask_etages
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    etages = gets.chomp.to_i
    return pyramid(etages)
end

