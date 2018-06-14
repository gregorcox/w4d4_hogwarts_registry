require_relative('../db/sqlrunner.rb')


class Student

attr_reader :first_name, :last_name, :house, :age, :id


def initialize (information)
  @id = information['id'].to_i
  @first_name = information['first_name']
  @last_name = information['last_name']
  @house = information['house']
  @age = information['age'].to_i
end






















end
