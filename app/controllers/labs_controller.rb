class LabsController < ApplicationController
  def index
    @laba=Lab.all
  end

  def new

  end

  def show
    @laba=Lab.find(params[:id])
  end

  def create
    # render plain: params[:post].inspect
    @laba=Lab.new(labs_params)
    @laba.save
    redirect_to @laba
  end

  private def labs_params
    params.require(:labs).permit(:title, :body)
  end
end
