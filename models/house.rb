require_relative('../db/sqlrunner.rb')


class House

attr_reader :house_name, :logo_url, :id


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

def self.all()
  sql = "SELECT * FROM houses"
  houses = SqlRunner.run( sql )
  result = houses.map { |house| House.new( house ) }
  return result
end

def self.find( id )
  sql = "SELECT * FROM houses WHERE id = $1"
  values = [id]
  house = SqlRunner.run( sql, values )
  result = House.new( house.first )
  return result
end
def self.delete_all()
  sql = "DELETE FROM houses;"
  SqlRunner.run(sql)
end
end
