class Receipt
  def inithialize(name)
    @name = name
    @lines = []
  end

  attr_accessor :name, :lines

  def calc
    total = 0
    @lines.each do |line|
      total += line[:price] *line[:num]
    end
    total
  end
  
  def output
    puts "レシート #{@name}"
    @lines.each do |line|
      puts "#{line[:name]} #{line[:price]}円 x #{line[:num]}"
    end
    puts "合計金額: #{calc}円"
  end
end

r = Receipt.new("ストアA")
r.lines = [{name: "egg", price: 200, num: 1},
            {name: "大根", price: 100, num: 2}]
r.output