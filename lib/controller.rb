require 'gossip'
require 'view'

class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    author = params.keys.join
    content = params.values.join
    gossip = Gossip.new(author, content)
    gossip.save
  end


end