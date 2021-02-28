require 'pry'
class CashRegister

    attr_accessor :total, :items, :price, :quantity

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def discount
        @discount
    end
    
    def add_item(item, price, quantity = 1)
        # @total += (price * quantity) same thing (updates total)
        # quantity.times {@total += price} same thing 
        quantity.times {@total += price ; @items << item } #does the same things as the others
        @quantity = quantity
        # quantity.times {@items << item}
    end

    def apply_discount 
        @total -= @total * @discount / 100
        return "There is no discount to apply." if @discount == 0 
        "After the discount, the total comes to $#{@total}."
    end

    def void_last_transaction
        @quantity.times{@total -= @price}
    end
end

