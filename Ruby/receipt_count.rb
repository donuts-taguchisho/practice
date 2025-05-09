class Receipt
  attr_accessor :name
  attr_accessor :lines
  @@count = 0

  def Receipt.count
    @@count
  end

  def initialize(name)
    self.name = name
    self.lines = []
  end

  def calc
    total = 0
    self.lines.each do |line|
      total += line[:price] * line[:num]
    end
    total
  end

  def output
    puts "レシート #{self.name}"
    self.lines.each do |line|
      puts "#{line[:name]} #{line[:price]} 円 x #{line[:num]}"
    end
    puts "合計金額: #{calc} 円"
    @@count += 1
  end
end

r1 = Receipt.new("ストアA")
r2 = Receipt.new("ストアB")

p Receipt.count
r1.output
r2.output
p Receipt.count