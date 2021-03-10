class PortfoliosController < ApplicationController

# GET /portfolios
def index
    @portfolio_items = Portfolio.all
end

end