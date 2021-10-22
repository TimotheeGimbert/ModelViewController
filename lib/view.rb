class View

  def create_gossip
    puts "Author ?"
    chosen_author = gets.chomp
    puts "Content of the gossip :"
    chosen_content = gets.chomp
    return params = { author: chosen_author, content: chosen_content }
  end

  def index_gossips(gossips)
    gossips.each {|gossip| puts "#{gossip.author} | #{gossip.content}"}
  end

  def destroy_gossip
    puts "\n\nEntrer le nom de l'autheur du potin à supprimer :".red.on_white
    author = gets.chomp
    return author
  end

end