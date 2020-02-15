class Expense < ApplicationRecord
  enum category: { "食品" => 0,"雑貨" => 1,"生活品" => 2, "娯楽品" => 3,"交通費" => 4, "娯楽" => 5,"ライブ" => 6,"その他" => 7 }
  enum payment: {"現金" => 0,"クレジット" => 1}
end
