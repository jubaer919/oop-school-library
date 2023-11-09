require './decorator'
require './person'
require './capitalize_decorator'

class TrimmerDecorator < Decorator
  def correct_name
    name = @nameable.correct_name
    name.length > 10 ? name[0..9] : name
  end
end

# checking values
person = Person.new(14, 'rex')
p person.correct_name

cap_person = CapitalizeDecorator.new(person)

p cap_person.correct_name

cap_trim_person = TrimmerDecorator.new(cap_person)
p cap_trim_person.correct_name
