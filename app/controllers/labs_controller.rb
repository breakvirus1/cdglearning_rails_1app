class LabsController < ApplicationController
  def index
    @laba=Lab.all
  end

  def new
    @laba=Lab.new
    # @laba=params[:query]
  end

  def show
    @laba=Lab.find(params[:id])
  end

  def create
    # render plain: params[:post].inspect
    @laba=Lab.new(labs_params)
    if @laba.save
      redirect_to @laba
      # puts(@laba.errors.any?)
    else
      puts('error', @laba.errors.any?, @laba.errors.full_messages)
      render :new, status: :unprocessable_entity

    end
  end

  private def labs_params
    params.require(:labs).permit(:title, :body)
  end
end
