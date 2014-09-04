class PB::PuppyRepo
  def initialize
    @puppies = []
    @counter = 0
  end

  def add_puppy(puppy)
    new_pup = PB::Puppy.new(breed: puppy.breed, cost: puppy.cost, id: @counter += 1, name: puppy.name)
    @puppies << new_pup
    return new_pup
  end

  def get_puppies
    @puppies
  end

  def reset_repo
    @puppies = []
  end
  # def initialize(dbname = "breeder")
  #   @db = PG.connect(
  #     host: 'localhost',
  #     dbname: dbname,
  #     port: 5432
  #   )

  #   create_table
  # end

  # def get_puppies
  #   command = <<-SQL
  #   SELECT * FROM puppies;
  #   SQL
  #   result = @db.exec(command)
  #   result.entries.map do |row|
  #     build_entity(row)
  #   end
  # end

  # def build_entity(row)
  #   PB::Puppy.new(
  #     name: row["name"],
  #     id: row["id"].to_i,
  #     breed: row["breed"],
  #     cost: row["cost"].to_i
  #   )
  # end

  # def add_puppy(puppy)
  #   command = <<-SQL
  #   INSERT INTO puppies(name, breed, cost)
  #   values('#{puppy.name}', '#{puppy.breed}', '#{puppy.cost}')
  #   RETURNING *;
  #   SQL

  #   result = @db.exec(command).first
  #   build_entity(result)
  # end

  # def create_table
  #   command = <<-SQL
  #   CREATE TABLE IF NOT EXISTS puppies(
  #     id SERIAL PRIMARY KEY,
  #     name TEXT,
  #     breed TEXT,
  #     cost INTEGER
  #   );
  #   SQL

  #   @db.exec(command)
  # end

  # def reset_repo
  #   command = <<-SQL
  #   DROP TABLE IF EXISTS puppies;
  #   SQL

  #   @db.exec(command)
  #   create_table
  # end
end
