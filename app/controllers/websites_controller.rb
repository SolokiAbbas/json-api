class WebsitesController < ApplicationController

  def index
    @websites = Websites.all
    render :index
  end

  def create
    @websites = Websites.parseUrl(params)

    if @websites.save
      render :index
    else
      ender json: @websites.errors.full_messages, status: 422
    end
  end

  def show
  end

end
