#lesson 1
number = 48

if number % 3 == 0 && number % 5 == 0
  puts "15の倍数です"
elsif number % 3 == 0
  puts "3の倍数です"
elsif number % 5 == 0
  puts "5の倍数です"
else
  puts "3の倍数でも5の倍数でもありません"
end

#lesson 2
characters = [
  {name: "にんじゃわんこ", age: 14},
  {name: "ひつじ仙人"},
  {name: "ベイビーわんこ", age: 5},
  {name: "とりずきん"}
]

characters.each do |character|
  puts "--------------------"
  puts "名前は#{character[:name]}です"
  
  if character[:age]
    puts "年齢は#{character[:age]}歳です"
  else
    puts "年齢は秘密です"
  end
end

# lesson 3
def buy(item:, price:, count:)
	puts "#{item}を#{count}台のお買い上げです"
	puts "合計金額は#{price * count}円です"
end

buy(item:"テレビ", price:15000, count:2)

#lesson 4
class Menu
  attr_accessor :name
  attr_accessor :price
  
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
  
  def info
    return "#{self.name} #{self.price}円"
  end
  
  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      total_price -= 100
    end
    return total_price
  end
end

# require "./menu"などで他ファイルに逃したクラスを読み込む

menu1 = Menu.new(name: "ピザ", price: 800)
menu2 = Menu.new(name: "すし", price: 1000)
menu3 = Menu.new(name: "コーラ", price: 300)
menu4 = Menu.new(name: "お茶", price: 200)

menus = [menu1, menu2, menu3, menu4]

index = 0
menus.each do |menu|
  puts "#{index}. #{menu.info}"
  index += 1
end

puts "--------------"
puts "メニューの番号を選択してください"

order = gets.chomp.to_i

selected_menu = menus[order]

puts "選択されたメニュー: #{selected_menu.name}"

puts "個数を入力してください(3つ以上で100円割引)"

count = gets.chomp.to_i

puts "お会計は#{selected_menu.get_total_price(count)}円です"

# lesson 5
require "date"

class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
  
  def info
    return "#{self.name} #{self.price}円"
  end
  
  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      total_price -= 100
    end

    if count >= 1 && Menu.is_discount_day?
      total_price -= 100
    end
    
    return total_price
  end
  
  def Menu.is_discount_day?
    today = Date.today
    return today.sunday?
  end
end

class Food < Menu
  attr_accessor :calorie
  
  def initialize(name:, price:, calorie:)
    super(name: name, price: price)
    self.calorie = calorie
  end
  
  def info
    return "#{self.name} #{self.price}円 (#{self.calorie}kcal)"
  end
  
  def calorie_info
    return "#{self.name}は#{self.calorie}kcalです"
  end
end

class Drink < Menu
  attr_accessor :amount
  
  def initialize(name:, price:, amount:)
    super(name: name, price: price)
    self.amount = amount
  end
  
  def info
    return "#{self.name} #{self.price}円 (#{self.amount}mL)"
  end
end

require "./food"
require "./drink"

puts "日曜限定100円割引セール実施中！"

food1 = Food.new(name: "ピザ", price: 800, calorie: 700)
food2 = Food.new(name: "すし", price: 1000, calorie: 600)
drink1 = Drink.new(name: "コーラ", price: 300, amount: 500)
drink2 = Drink.new(name: "お茶", price: 200, amount: 400)

menus = [food1, food2, drink1, drink2]

index = 0
menus.each do |menu|
  puts "#{index}. #{menu.info}"
  index += 1
end

puts "--------------"
puts "メニューの番号を選択してください"
order = gets.chomp.to_i

selected_menu = menus[order]
puts "選択されたメニュー: #{selected_menu.name}"

puts "個数を入力してください(3つ以上で100円割引)"
count = gets.chomp.to_i

puts "お会計は#{selected_menu.get_total_price(count)}円です"
