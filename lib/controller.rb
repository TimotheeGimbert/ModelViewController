require 'gossip'
require 'view'

class Controller


  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip # params = { author: 'chosen_author', content: 'chosen_content'}
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def index_gossips
    gossips_ary = Gossip.all
    @view.index_gossips(gossips_ary)
  end

  def destroy_gossip

  end

end