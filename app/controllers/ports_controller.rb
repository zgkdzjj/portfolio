class PortsController < ApplicationController
  def index
    @portfolio_items = Port.all  
  end
end
