# typed: true
require "sorbet-runtime"

class Printer
  extend T::Sig

  sig { params(person: Person).returns(String)}
  def self.full_name(person)
    # raise "Object is not a person" unless person.is_a?(Person)
    # It doesn't have to do that (raise) because with sorbet we can add type checks
    "Your name: #{person.fname} #{person.lname}"
  end
end

class Person
  extend T::Sig
  attr_reader :fname, :lname

  sig { params(fname: String, lname: String).void }
  def initialize(fname, lname)
    @fname = fname
    @jname = lname

    raise "First name is too short" if fname.empty?

  end
end

john = Person.new("John", "due")

Actor = Struct.new(:fname, :lname)
bruce = Actor.new("Bruce", "Lee")

puts Printer.full_name(john)
# puts Printer.full_name(bruce) # por sorbet da un error porque Actor es otro tipo de objeto
