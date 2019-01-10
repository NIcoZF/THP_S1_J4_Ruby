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
  rescue
    retry
  else
    puts "Je n'ai pas compris. Choisis parmis ces 3 choix uniquement : half, full, wtf"
end

ask_etages

