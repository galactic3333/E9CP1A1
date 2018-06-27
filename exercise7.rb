class Product
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end

  def promedio
    prom = (@large + @medium + @small + @xsmall) / 4.0
    puts "El promedio de precios de #{@name} es #{prom}"
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }
data.each do |prod|
  ls = prod.split(', ')
  # products_list << Product.new(ls[0], ls[1], ls[2], ls[3], ls[4])
  products_list << Product.new(*ls)
end

# print products_list

products_list.each(&:promedio)

# print data

def method1(array)
  file = File.open('nuevo_catalogo.txt', 'w')
  datos = array.map(&:chomp).map { |w| w.split(', ') }
  # print datos
  datos.each(&:pop)
  datos.each { |lista| file.puts lista.join(', ') }
end

method1(data)
