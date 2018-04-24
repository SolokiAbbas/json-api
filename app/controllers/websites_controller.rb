class WebsitesController < ApplicationController

  def index
    @websites = Websites.all
    render :index
  end

  def create
    @websites = Website.new
    @website.h1 = Websites.parseCSS("h1",website_params)
    @website.h2 = Websites.parseCSS("h2",website_params)
    @website.h3 = Websites.parseCSS("h3",website_params)
    @website.links = Websites.parseCSS("a",website_params)
    @website.url = website_params.url

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
