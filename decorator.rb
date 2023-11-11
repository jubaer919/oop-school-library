require './nameable'

class Decorator < Nameable
  def initialize(n)
    super()
    @nameable = n
  end

  def correct_name
    @nameable.correct_name
  end
end
