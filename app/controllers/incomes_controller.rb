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
end
