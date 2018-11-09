#Peopleクラスを作成してください。
class People
end



#Peopleクラスに「Peopleのインスタンスが作られました」と出力するコンストラクタを定義してください。
class People
  def initialize
    p "Peopleのインスタンスが作られました"
  end
end  

people = People.new



#Peopleクラスに「私はPeopleクラスです」と出力するクラスメソッドを定義してください。
class People
  def self.word
    p "私はPeopleクラスです" 
  end
end

People.word



#Peopleクラスに、インスタンス変数「@name」を定義し、「attr_accesor」メソッドでアクセスできるようにしてください。
class People
  attr_accessor :name
  
  def name
    @name
  end
  
end

people = People.new
people.name = "山田"
p people.name



#Peopleクラスを継承して、SuperPeopleクラスを作成してください。
class People
end

class SuperPeople < People
end



#SuperPeopleクラスに「私は目からビームが出せます」と出力するクラスメソッドを定義してください。
class People
  def self.skill
    p "私は目からビームが出せます"
  end
end

class SuperPeople < People
end

SuperPeople.skill







