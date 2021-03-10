class PortfoliosController < ApplicationController

    # GET /portfolios
    def index
        @portfolio_items = Portfolio.all
    end

    # GET /portfolios/new
    def new
        @portfolio_item = Portfolio.new
    end

    def create
        @portfolio_item = Portfolio.new(portfolio_params)

        respond_to do |format|
        if @portfolio_item.save
            format.html { redirect_to portfolios_path, notice: "Portfolio was successfully created." }
        else
            format.html {render :new}
        end
        end
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_blog
            @portfolio_item = Portfolio.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def portfolio_params
            params.require(:portfolio).permit(:title, :subtitle, :body, :thumb_image)
        end

end