require 'controller'

class Router

  def initialize
    @controller = Controller.new
  end


  def perform
    while true

      puts "Tu veux faire quoi jeune mouss' ?"
      puts "1. Je veux créer un gossip"
      puts "2. Voir tous les potins"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i
      case params
      when 1
        puts "Tu as choisi de créer un gossip" 
        @controller.create_gossip
      when 2
        puts "Tu as choisi de voir tous les gossips"
        @controller.index_gossips
      when 3
        puts "Tu as choisi de supprimer un potin"
        @controller.destroy_gossip
      when 4
        puts "À bientôt !"
        break

      else puts "Ce choix n'existe pas, merci de ressayer" end

    end
  end


end