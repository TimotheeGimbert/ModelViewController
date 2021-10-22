require 'gossip'
require 'view'

class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def index_gossips
    gossips_ary = Gossip.all
    @view.index_gossips(gossips_ary)
  end

  def destroy_gossip
    index_gossips
    params = @view.destroy_gossip
    Gossip.destroy(params)
  end

end