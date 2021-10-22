class View

  def create_gossip
    puts "Author ?"
    author = gets.chomp
    puts "Content of the gossip :"
    content = gets.chomp
    return {author => content}
  end

end