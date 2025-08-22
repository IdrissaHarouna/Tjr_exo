def play_game
  position = 0
  round = 0

  puts "Bienvenue dans le jeu de l'escalier !"
  puts "Tu dois atteindre la 10ème marche pour gagner."

  while position < 10
    round += 1
    puts "\nTour #{round} - Appuie sur Entrée pour lancer le dé."
    gets
    dice = rand(1..6)
    puts "Tu as lancé un #{dice}"

    case dice
    when 5, 6
      position += 1
      puts "Tu montes d'une marche ! Tu es maintenant à la marche #{position}."
    when 1
      position -= 1 unless position == 0
      puts "Oups ! Tu descends d'une marche... Tu es maintenant à la marche #{position}."
    else
      puts "Tu ne bouges pas. Tu restes à la marche #{position}."
    end
  end

  puts "\nBravo ! Tu es arrivé à la 10ème marche en #{round} tours !"
end


def simulate_game
  position = 0
  round = 0

  while position < 10
    round += 1
    dice = rand(1..6)

    case dice
    when 5, 6
      position += 1
    when 1
      position -= 1 unless position == 0
    end
  end

  return round
end


def average_finish_time(simulations = 100)
  total_rounds = 0

  simulations.times do
    total_rounds += simulate_game
  end

  average = total_rounds.to_f / simulations
  puts "\nEn moyenne, il faut #{average.round(2)} tours pour atteindre la 10ème marche (sur #{simulations} parties)."
end


play_game
average_finish_time(100)



