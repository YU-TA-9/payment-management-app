json.extract! expense, :id, :category, :payment, :value, :detail, :created_at, :updated_at
json.url expense_url(expense, format: :json)
