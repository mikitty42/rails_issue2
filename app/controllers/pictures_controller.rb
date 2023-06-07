class PicturesController < ApplicationController
    
  def index
      @pictures = Picture.all
  end
  
  def new
      @picture = Picture.new
  end
  
  def create
      @picture = Picture(picture_params)
      if @picture.save
          redirect_to pictures_path, notice: '投稿に成功しました'
      else
          render :new
      end
  end
  
  def show
      @picture = Picture.find(params[:id])
  end
  
  def edit
      @picture = Picture.find(params[:id])
  end
              
  def update
      @picture = Picture.find(params[:id)
      if @picture.update(picture_params)
          redirect_to pictures_path,notice: '投稿を修正しました’
      else
          render :edit
      end
  end
  
  def destroy
      @picture = Picture.find(params[:id])
      @picture.destroy
      redirect_to pictures_path, notice: '投稿を削除しました'
  end
  
  private
  
  def picture_params
      params.require(:picture).permit(:image,:content)
  end


end
