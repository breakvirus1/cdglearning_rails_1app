class LabsController < ApplicationController
  def index
    @laba=Lab.all
  end

  def new
    @laba=Lab.new

  end

  def show
    @laba=Lab.find(params[:id])
  end

  def edit
    @laba=Lab.find(params[:id])
  end

  def update
    @laba=Lab.find(params[:id])
    if @laba.update(labs_params)
      redirect_to @laba
    else
      puts('error', @laba.errors.any?, @laba.errors.full_messages)
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @laba=Lab.find(params[:id]).destroy
    flash[:success] = "Лаба удалена"
    redirect_to labs_path, status: :see_other
  end

  def create
    # render plain: params[:post].inspect
    @laba=Lab.new(labs_params)
    if @laba.save
      redirect_to @laba
    else
      puts('error', @laba.errors.any?, @laba.errors.full_messages)
      render :new, status: :unprocessable_entity

    end
  end

  private def labs_params
    params.require(:labs).permit(:title, :body)
  end
end
