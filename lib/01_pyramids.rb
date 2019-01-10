#Half
def half_pyramid(etages)
  (etages > 0) && (etages < 26) 
  etages.times do |i|
    puts " "*(etages-(i+1))+"#"*(i+1)
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


#ask_etages
def ask_etages
  puts "Salut, bienvenue dans ma super pyramide ! Choisis ton type de pyramide :"
  puts "> half"
  puts "> full"
  puts "> wtf"
  print "> "
  typepyr = gets.chomp
  if typepyr = half
    puts "Combien d'étages veux-tu ?"
    print "> "
    etages = gets.chomp.to_i
    return wtf_pyramid(etages)
  end
  if typepyr = full
    puts "Combien d'étages veux-tu ?"
    print "> "
    etages = gets.chomp.to_i
    return wtf_pyramid(etages)
  end
  if typepyr = wtf
    puts "Combien d'étages veux-tu ?"
    print "> "
    etages = gets.chomp.to_i
    return wtf_pyramid(etages)
  end
  else
      puts "Je n'ai pas compris. Choisis parmis ces 3 choix uniquement : half, full, wtf"
  end
end