require_relative('../db/sqlrunner.rb')


class House

attr_reader :house_name, :id


def initialize (information)
  @id = information['id'].to_i
  @house_name = information['house_name']
  @logo_url = information['logo_url']

end

def save()
  sql = "INSERT INTO houses
  (
    house_name,
    logo_url
  )
  VALUES
  (
    $1, $2
  )
  RETURNING *"
  values = [@house_name, @logo_url]
  house_data = SqlRunner.run(sql, values)
  @id = house_data.first()['id'].to_i
end

def delete()
  sql = "DELETE FROM students
  WHERE id = $1"
  values = [@id]
  SqlRunner.run( sql, values )
end

def self.all()
  sql = "SELECT * FROM students"
  students = SqlRunner.run( sql )
  result = students.map { |student| Student.new( student ) }
  return result
end

def self.find( id )
  sql = "SELECT * FROM students WHERE id = $1"
  values = [id]
  student = SqlRunner.run( sql, values )
  result = Student.new( student.first )
  return result
end

def self.delete_all()
  sql = "DELETE FROM students;"
  SqlRunner.run(sql)
end














end
