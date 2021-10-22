require 'gossip'
require 'view'

class Controller

  def create_gossip
    puts "Author ?"
    author = gets.chomp
    puts "Content of the gossip :"
    content = gets.chomp
    gossip = Gossip.new(author, content)
    gossip.save
  end


end