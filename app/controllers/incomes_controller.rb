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
  end

  def create
    # ↓修正する必要あり
    @income = Income.new(params[:income])
    @income.save
    redirect_to incomes_path
  end
end
