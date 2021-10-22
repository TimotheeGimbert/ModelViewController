require 'controller'

class Router

  def initialize
    @controller = Controller.new
  end

  def perform
    system 'clear'
    while true
      puts "\nTu veux faire quoi jeune mouss' ?\n\n".green
      puts "1. Je veux créer un gossip".blue
      puts "2. Voir tous les potins".cyan
      puts "3. Supprimer un potin".red
      puts "4. Je veux quitter l'app".yellow
      params = gets.chomp.to_i

      case params
      when 1
        puts "Tu as choisi de créer un potin\n\n".blue
        @controller.create_gossip
      when 2
        puts "Tu as choisi de voir tous les potins\n\n".cyan
        @controller.index_gossips
      when 3
        puts "Tu as choisi de supprimer un potin\n\n".red
        @controller.destroy_gossip
      when 4
        puts "À bientôt !".yellow
        break
      else puts "Ce choix n'existe pas, merci de ressayer\n\n" end
    end
  end

end