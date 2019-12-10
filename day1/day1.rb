input = File.read("input").split

def calc_fuel(mass)
  return mass.to_i / 3 -2
end

part1 = input.map { |x| calc_fuel(x) }.inject(0, :+)

part2 ||= []
input.each do |x|
  fuel = calc_fuel(x)
  part2 << fuel
  while fuel >= 0
    fuel = calc_fuel(fuel)
    unless fuel <= 0
        part2 << fuel
    end
  end
end

puts "Part 1: ", part1
puts "Part 2: ", part2.inject(0, :+)


