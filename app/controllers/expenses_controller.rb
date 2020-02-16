class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]

  # GET /expenses
  # GET /expenses.json
  def index
    #@expenses = Expense.all
    @q = Expense.ransack(params[:q])
    @expenses = @q.result(distinct: true)
    @sum = 0
    #合計算出
    @expenses.each do |expense|
      @sum += expense.value
    end

  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
  end

  # GET /expenses/1/edit
  def edit
    @expense = Expense.find(params[:id])
  end

  # POST /expenses
  # POST /expenses.json
  def create
    expense = Expense.new(expense_params)
    expense.save
    redirect_to expenses_url,notice: "支出「¥#{expense.value}」を登録しました。"
end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    expense = Expense.find(params[:id])
    expense.update!(expense_params)
    redirect_to expenses_url, notice:"更新しました。"
end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    expense = Expense.find(params[:id])
    expense.destroy
    redirect_to expenses_url, notice: "支出ID「#{expense.id}」を削除しました。"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_params
      params.require(:expense).permit(:category, :payment, :value, :detail)
    end
end
