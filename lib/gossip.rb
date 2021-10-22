class Gossip

  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
  # saves a gossip author and content into Json file
    json = File.read('db/gossips.json')
    obj = JSON.parse(json)
    obj[@author] = @content

    File.open('db/gossips.json', 'w') do |f|
      f.write JSON.pretty_generate(obj)
    end
  end

  def self.all
  # returns a Gossip instance for each key:value pair in the Json
    json = File.read('db/gossips.json')
    obj = JSON.parse(json)
    gossips = Array.new
    obj.each {|k,v| gossips << Gossip.new(k,v) }
    return gossips
  end


end