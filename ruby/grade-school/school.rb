class School

  attr_reader :db

  def initialize
    @db = Hash.new { [] }
  end

  def add(name, grade)
    db[grade] += [name]
  end

  def grade(level)
    db[level]
  end

  def sort
    Hash[db.sort].each_key { |key| db[key].sort! }
  end

end
