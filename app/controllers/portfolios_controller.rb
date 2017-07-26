class PortfoliosController < ApplicationController
before_action :set_portfolio_items, only: [:edit, :show, :update, :destroy]
access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

layout 'portfolio'

  def index
    @portfolio_items = Portfolio.all
     @page_title = "Colton Mathews | Portfolio"
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

  def new
    @portfolio_items = Portfolio.new
    3.times { @portfolio_items.technologies.build }
  end

  def create
    @portfolio_items = Portfolio.new(portfolio_params)
    
    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolios_path notice: 'Portfolio was successfully posted.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def destroy
    # Destroy/delete the record
    @portfolio_items.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was removed.' }
    end
  end

  def update

     respond_to do |format|
      if @portfolio_items.update(portfolio_params)
        format.html { redirect_to portfolios_url notice: 'Portfolio was successfully posted.' }
      else
        format.html { render :new }
      end
    end
  end



  def show
  end


      private

      def set_portfolio_items
        @portfolio_items = Portfolio.find(params[:id])
      end


      def portfolio_params
      params.require(:portfolio).permit(:title, 
                                        :subtitle, 
                                        :body, 
                                        technologies_attributes: [:name]
                                        )
    end
end
