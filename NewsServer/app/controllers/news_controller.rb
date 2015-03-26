class NewsController < ApplicationController
  def index
  end
  def all
    @news=News.all
    render json: @news
  end
  def id
    @news =News.find(params[:id])
    render json:@news
  end
end
