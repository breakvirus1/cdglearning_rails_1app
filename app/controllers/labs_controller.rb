class LabsController < ApplicationController
  def index

  end

  def new

  end

  def show
    @laba=Lab.find(params[:id])
  end

  def create
    # render plain: params[:post].inspect
    @laba=Lab.new(params[:post])
    @laba.save
    redirect to @laba
  end

  private def labs_params
    params.require(:post).permit(:title, :body)
  end
end
