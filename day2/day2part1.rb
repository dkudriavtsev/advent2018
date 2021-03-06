#!/usr/bin/env ruby

# Day 2 Part 1

a = File.read('input').split

def find_n(a, n)
	a.map { |i|
		i.chars.sort
			.chunk { |i| i[0] }
			.to_a
			.map { |a| a[1] }
			.select { |s| s.length == n }.join
	}	.reject { |i| i.empty? }
		.size
end

puts find_n(a, 2) * find_n(a, 3)
