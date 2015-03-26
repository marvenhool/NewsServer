class NewsController < ApplicationController
  def index
  end

  def all
    @news=News.all
    if params[:format]=="json"
      render json: @news
    elsif params[:format]=="xml"
      render xml: @news
    else
      render json: @news
    end
  end

  def id
    @news =News.find(params[:id])
    if params[:format]=="json"
      render json: @news
    elsif params[:format]=="xml"
      render xml: @news
    else
      render json: @news
    end
  end
end
