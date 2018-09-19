class PortsController < ApplicationController
  def index
    @portfolio_items = Port.all  
  end

  def new
    @portfolio_item = Port.new
  end

  def create 
    @portfolio_item = Port.new(params.require(:port).permit(:title, 
      :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to ports_path, notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @portfolio_item = Port.find(params[:id])
  end

  def update
    @portfolio_item = Port.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:port).permit(:title, 
      :subtitle, :body))
        format.html { redirect_to ports_path, notice: 'The record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item = Port.find(params[:id])
       
  end

end
