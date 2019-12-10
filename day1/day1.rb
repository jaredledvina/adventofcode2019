input = File.read("input").split

part1 = input.map { |x| (x.to_i / 3) - 2 }.inject(0, :+)

puts part1

