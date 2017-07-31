class PortfoliosController < ApplicationController
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
before_action :set_portfolio_items, only: [:edit, :show, :update, :destroy]


layout 'portfolio'

  def index
    @portfolio_items = Portfolio.all
    @page_title = "Colton Mathews | Portfolio"
  end

  def angular
    @angular_portfolio_item = Portfolio.angular
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully posted.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def destroy
    # Destroy/delete the record
    @portfolio_item.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Record was removed.' }
    end
  end

  def update

     respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully posted.' }
      else
        format.html { render :new }
      end
    end
  end



  def show
  end


      private

      def set_portfolio_items
        @portfolio_item = Portfolio.find(params[:id])
      end


      def portfolio_params
      params.require(:portfolio).permit(:title,
                                        :subtitle,
                                        :body,
                                        technologies_attributes: [:name]
                                        )
    end
end
