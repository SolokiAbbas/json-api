class WebsitesController < ApplicationController

  def index
    @websites = Website.all
    render :index
  end

  def create
    @websites = Website.new
    puts @websites
    @websites.h1 = Website.parseCSS("h1",website_params)
    @websites.h2 = Website.parseCSS("h2",website_params)
    @websites.h3 = Website.parseCSS("h3",website_params)
    @websites.links = Website.parseCSS("a",website_params)
    @websites.url = website_params.url

    if @websites.save
      render :index
    else
      ender json: @websites.errors.full_messages, status: 422
    end
  end

  def show
  end

private
  def website_params
    params.require(:websites).permit(:url)
  end

end
