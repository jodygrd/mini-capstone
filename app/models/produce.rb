class Produce < ApplicationRecord
  def sale_message
  	if price.to_i < 2
  		"Discount Item!"
  	else
  		"Everyday Value!"
  	end
  end

  def tax
    price.to_f * 0.09
  end

  def total
  	price.to_f * 1.09
  end

  def in_stock
    if inventory > 10
      "Item in Stock"
    elsif inventory > 0
      "Only #{inventory} remaining! Order now!"
    else 
      "Out of stock."
    end
  end

end
