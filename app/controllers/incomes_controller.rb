class IncomesController < ApplicationController
  def index
    @incomes = Income.all
  end

  def show
  end

  def new
    @income = Income.new
  end

  def edit
    @income = Income.find(params[:id])
  end

  def update
    income = Income.find(params[:id])
    income.update!(income_params)
    redirect_to incomes_url, notice:"更新しました。"
  end

  def create
    income = Income.new(income_params)
    income.save
    redirect_to incomes_url,notice: "収入「¥#{income.value}」を登録しました。"
  end

  def destroy
    income = Income.find(params[:id])
    income.destroy
    redirect_to incomes_url, notice: "収入ID「#{income.id}}」を削除しました。"
  end

  private

  def income_params
    params.require(:income).permit(:value,:detail)
  end
end
