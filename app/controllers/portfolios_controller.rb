class PortfoliosController < ApplicationController
    before_action :set_portfolio, only: %i[ show edit update destroy ]

    # GET /portfolios
    def index
        @portfolio_items = Portfolio.all
    end

    # GET /portfolios/new
    def new
        @portfolio_item = Portfolio.new
    end

    # GET /portfolios/1/edit
    def edit
    end

    # POST /portfolios
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

    # PATCH/PUT /portfolios/1
    def update
        respond_to do |format|
            if @portfolio_item.update(portfolio_params)
                format.html { redirect_to portfolios_path, notice: "Portfolio was successfully created." }
            else
                format.html {render :edit}
            end
        end
    end

    # DELETE /portfolios/1
    def destroy
        @portfolio_item.destroy
        respond_to do |format|
            format.html { redirect_to portfolios_url, notice: "Portfolio was successfully destroyed." }
            format.json { head :no_content }
        end
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_portfolio
            @portfolio_item = Portfolio.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def portfolio_params
            params.require(:portfolio).permit(:title, :subtitle, :body, :thumb_image)
        end

end