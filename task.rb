# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]
  names2 = ["田中", "佐藤", "佐々木", "高橋"]
  names3 = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載

  names.push("斎藤")
  p names

  names2 << "斎藤"
  p names2
  
  names3.append("斎藤")
  p names3
    
end

def q2
  array1 = ["dog", "cat", "fish"]
  array2 = ["bird", "bat", "tiger"]

  # 以下に回答を記載

  array = array1 + array2
  p array

end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載

  p numbers.count(3)

end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載

  sports.compact!

  # 以下は変更しないで下さい
  p sports
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載

  p array1.empty?
  p array2.empty?

end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載

  numbers2 = numbers1.map {|n| n * 10}
  p numbers2

end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載

  # 修正前
  # array.map! {|n| n.to_i}

  array.map!(&:to_i)

  # 以下は変更しないで下さい
  p array
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載

  # 修正前
  # programming_languages = programming_languages.map {|n| n.capitalize}
  # upper_case_programming_languages = programming_languages.map {|n| n.upcase}
  
  programming_languages.map!(&:capitalize)
  upper_case_programming_languages = programming_languages.map(&:upcase)
  
  # 以下は変更しないで下さい
  p programming_languages
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載

  names.each.with_index(1) do |name,i|
    puts "会員No.#{i}#{name}さん"
  end

end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載

  #修正前
  # foods.each do |food|
  #   if food.include?("うに")
  #     puts "好物です"
  #   else
  #     puts "まぁまぁ好きです"
  #   end
  # end

  foods.each do |food|
    puts food.include?("うに") ? "好物です" : "まぁまぁ好きです"
  end

end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載

  puts "ユーザーの趣味一覧"
  sports.flatten!.uniq!
  sports.each.with_index(1) do |sport,i|
    puts "No#{i} #{sport}"
  end

end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載

  p data[:user][:name]

end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載

  puts user_data.merge!(update_data)
  
end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載

  p data.keys

end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載

  puts data1 [:age] ? "OK" : "NG"
  puts data2 [:age] ? "OK" : "NG"

end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載

    users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。"
    end

end

class UserQ17
  # 以下に回答を記載
  
  # 修正前
  # def initialize(name:, age:, gender:)
  #   @name = name
  #   @age = age
  #   @gender = gender
  # end
  
  # def info
  #   puts "名前:#{@name}\n年齢#{@age}\n性別#{@gender}\n"
  # end


  def initialize(**options)
    @name = options[:name]
    @age = options[:age]
    @gender = options[:gender]
  end
  
  def info
    puts <<~EOS
    名前:#{@name}
    年齢:#{@age}
    性別:#{@gender}
    EOS
  end

end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男")
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男")

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載

  # 修正前
  # def initialize(name: , age:)
  #   @name = name
  #   @age = age
  # end

  # def introduce
  #   if @age > 20
  #     puts "こんにちは,#{@name}と申します。宜しくお願いいたします。"
  #   else
  #     puts "はいさいまいど〜,#{@name}です!!!"
  #   end
  # end

  # 修正前
  # def initialize(name:, age:)
  #   @name = name
  #   @age = age
  # end

  # def introduce
  #   if @age > 20
  #     print "こんにちは,#{@name}と申します。宜しくお願いいたします。"
  #   else
  #     puts "はいさいまいど〜,#{@name}です!!!"
  #   end
  # end


  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def introduce
    if @age > 20
      "こんにちは,#{@name}と申します。宜しくお願いいたします。"
    else
      "はいさいまいど〜,#{@name}です!!!"
    end
  end

end


def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい

  # 修正前
  # attr_accessor :name
  # def initialize(name:)
  #   @name = name
  # end

  attr_reader :name
  def initialize(name:)
    @name = name
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end


class UserQ20
  # 以下に回答を記載

  attr_reader :name, :age

  def initialize(**option)
    @name = option[:name]
    @age = option[:age]
  end

end


class Zoo
  # 以下に回答を記載

  def initialize(**option)
    @name = option[:name]
    @entry_fee = option[:entry_fee]
  end
  
  def info_entry_fee(user)

    # case user.age
    # when 65 .. 120 then
    #   puts "#{user.name}の入場料金は#{@entry_fee[:senior]}円です。"
    # when 13 .. 64 then
    #   puts "#{user.name}の入場料金は#{@entry_fee[:adult]}円です。"
    # when 6 .. 12 then
    #   puts "#{user.name}の入場料金は#{@entry_fee[:children]}円です。"
    # when 0 .. 5 then
    #   puts "#{user.name}の入場料金は#{@entry_fee[:infant]}円です。"
    # end

    n = case user.age
      
    when 65 .. 120 then
      @entry_fee[:senior]
    when 13 .. 64 then
      @entry_fee[:adult]
    when 6 .. 12 then
      @entry_fee[:children]
    when 0 .. 5 then
      @entry_fee[:infant]
    end

    puts "#{user.name}の入場料金は#{n}円です。"

  end

end



def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end

end
