require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title,price,quantity = 1)
        if quantity>1
          count=0
          while count <quantity
            @items << title
            count +=1
          end
        else
          @items << title
        end
        @last_transaction_amount = price*quantity
        @total += @last_transaction_amount
        @total
      end

    def apply_discount
        # binding.pry
        if 
            @total == 0
            "There is no discount to apply."
        else 
            @total -= @total * @discount / 100
            "After the discount, the total comes to $#{@total}."
        end 
    end 

    def items
      @items
    end 

    def void_last_transaction()
        @total -= @last_transaction_amount
    end 

end 
