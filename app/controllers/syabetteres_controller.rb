class SyabetteresController < ApplicationController
  before_action :set_syabetter, only: [:edit, :update, :destroy]
  
  
  def index
    @syabettere = Syabettere.all
  end
  
  def new
   if params[:back]
    @syabettere = Syabettere.new(syabetteres_params)
   else
    @syabettere = Syabettere.new
   end
  end

  def create
   @syabettere = Syabettere.create(syabetteres_params)
    if @syabettere.save
      redirect_to syabetteres_path, notice: "べしゃりました！"
    else
      render action: 'new'
    end
  end
  
  def edit
    @syabettere = Syabettere.find(params[:id])
  end
  
  def update
   @syabettere = Syabettere.find(params[:id])
    if @syabettere.update(syabetteres_params)
      redirect_to syabetteres_path, notice: "べしゃりを更新しました！"
    else
      render action: "edit"
    end
  end
  
  def destroy
    @syabettere = Syabettere.find(params[:id])
    @syabettere.destroy
    redirect_to syabetteres_path, notice: "削除しました！"
  end
  
  def confirm
    @syabettere = Syabettere.new(syabetteres_params)
     render :new if @syabettere.invalid?
  end
  
  private
    def syabetteres_params
      params.require(:syabettere).permit(:title, :content)
    end
    
    def set_syabetter
      @syabettere = Syabettere.find(params[:id])
    end
end