#Half
def half_pyramid(etages)
  etages.times {|n|
    puts ' ' * (etages - (n + 1)) + '#' * (n + 1)
  }
end

# Full
def full_pyramid(etages)
  etages.times {|n|
    print ' ' * (etages - n)
    puts '#' * (2 * n + 1)
  }
end

# WTF Pyramid
def wtf_pyramid(etages)
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
  puts "Salut, bienvenue dans ma super pyramide ! Choisis ton type de pyramide :"
  puts "half"
  puts "full"
  puts "wtf"
  print "> "
  choix = gets.chomp
  puts "Combien d'étages veux-tu ?"
  print "> "
  etages = gets.chomp.to_i
  case choix 
    when "half" then half_pyramid(etages)
    when "full" then full_pyramid(etages)
    when "wtf" then wtf_pyramid(etages)
  end
end

ask_etages