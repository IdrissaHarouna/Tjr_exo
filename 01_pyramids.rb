def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  height = gets.chomp.to_i

  puts "Voici la pyramide :"
  (1..height).each do |i|
    spaces = " " * (height - i)
    hashes = "#" * (2 * i - 1)
    puts spaces + hashes
  end
end


def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print ">"
    height = gets.chomp.to_i
 
 while height % 2 == 0 
   puts "Nombre invalide. Recommence avec un nombre impair."
   height = gets.chomp.to_i
   end
 
  puts "Voici la pyramide :"
  
 (1..height).each do |i|
    spaces = " " * (height - i)
    hashes = "#" * (2 * i - 1)
    puts spaces + hashes
  end
 
 (height - 1).downto(1).each do |i|
    spaces = " " * (height - i)
    hashes = "#" * (2 * i - 1)
    puts spaces + hashes
  end

end

wtf_pyramid


