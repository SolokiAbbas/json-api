class WebsitesController < ApplicationController

  def index
    @websites = Website.all
    render :index
  end

  def create
    @websites = Website.new
    site = params[:websites][:url]
    @websites.h1 = Website.last.parseCSS("h1",site)
    @websites.h2 = Website.last.parseCSS("h2",site)
    @websites.h3 = Website.last.parseCSS("h3",site)
    @websites.links = Website.last.parseCSS("a",site)
    @websites.url = site

    if @websites.save
      render json: @websites, status: 200
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
