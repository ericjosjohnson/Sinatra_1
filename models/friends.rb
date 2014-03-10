class Friend
  @@friends = ["Steve", "Paul", "Chad", "Tony"]
  class << self
  # attr_accessor :friends
    def all
      @@friends
    end
    def find(i)
      @@friends[i-1]
    end

  end
end