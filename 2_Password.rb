 def signup
 puts "Veuillez définir votre code :"
 print "> "
 password = gets.chomp
 return password
end

def login(password)
 puts "Entrer votre code: "
 print "> "
 passwd = gets.chomp
 
 while passwd != password
  puts "le code invalide! Veuillez entrer votre code:"
  print "> "
  passwd = gets.chomp
 end
 
 puts "Code correct."
end 

def welcome_screen
  puts "\nBienvenue dans la zone secrète"
  puts "Voici quelques secrets bien gardés :"
  puts "- 📱 Clara parle en scred avec son crush tous les soirs..."
  puts "- 📲 Le groupe a commandé des tacos à 3h du mat hier..."
  puts "- Quelqu’un a stalké le prof sur LinkedIn..."
end

def perform
password = signup
login(password)
welcome_screen
end



