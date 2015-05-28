require 'pry'


class Book
attr_reader :title, :price
  
  def initialize title, price
    @title = title
    @price = price
  end
end

class Cart
  def initialize
    @books_in_cart = []
  end 
  
  def item_count
    item_count = 0
    @books_in_cart.count
  end

  def add item
    b = item
      @books_in_cart.push(b)
    end

    def value
      @total = 0
      @books_in_cart.each do |books|
       @total += books.price
      end  
      @total
    end
  end


