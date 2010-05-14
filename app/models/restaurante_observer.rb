class RestauranteObserver < ActiveRecord::Observer
  def before_create r
    puts "log do save #{r.nome}"
  end
end
