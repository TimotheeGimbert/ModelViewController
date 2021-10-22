class Gossip

  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    json = File.read('db/gossips.json')
    json_hash = JSON.parse(json)
    json_hash[@author] = @content 
    File.open('db/gossips.json', 'w') do |f|
      f.write JSON.pretty_generate(json_hash)
    end
    
  end

end