class Gossip

  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end


  def save
    File.open('db/gossips.json', 'a') do |f| 
      f.write(JSON.pretty_generate(@author => @content))
    end
  end


end