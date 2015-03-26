class NewsController < ApplicationController
  def index
  end

  #すべての結果を抽出します
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

  #ユーザーIDで抽出します
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

  #カテゴリIDで抽出します
  def category
    @news =News.find(params[:category])
    if params[:format]=="json"
      render json: @news
    elsif params[:format]=="xml"
      render xml: @news
    else
      render json: @news
    end
  end

  #·タイトルの中にキーワードを含む結果を抽出します
  #   Post.find_by_sql ["SELECT title FROM posts WHERE author = ? AND created > ?", author_id, start_date]
  def title
    @keyword = params[:keyword]
    if @keyword.nil?
      @news=News.all
    else
      @news =News.find_by_sql(["select * from news where title like ?", "%#{@keyword}%" ])
    end
    if params[:format]=="json"
      render json: @news
    elsif params[:format]=="xml"
      render xml: @news
    else
      render json: @news
    end
  end

  #新聞内容の中にキーワードを含む結果を抽出します
  def text
    @keyword = params[:keyword]
    if @keyword.nil?
      @news=News.all
    else
      @news =News.find_by_sql(["select * from news where text like ?", "%#{@keyword}%" ])
    end
    if params[:format]=="json"
      render json: @news
    elsif params[:format]=="xml"
      render xml: @news
    else
      render json: @news
    end
  end
end
