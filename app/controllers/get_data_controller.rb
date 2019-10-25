class GetDataController < ApplicationController
  def index
  end

  def create
    #binding.pry
    agent = Mechanize.new
    page = agent.get("https://www.amazon.co.jp/gp/product/B01HUJER0C?pf_rd_p=3d322af3-60ce-4778-b834-9b7ade73f617&pf_rd_r=101A315D3N88CRWS618Y")
    @title = page.search('#productTitle')
    @price = page.search('#priceblock_ourprice')
  end
end
