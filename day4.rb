require "digest"

md5 = Digest::MD5.new

input = "iwrupvqb"
number = 1

until /^0{5}/.match(md5.hexdigest(input + number.to_s)) do
  number += 1
end

puts "Number: #{number}, Digest: #{md5.hexdigest(input + number.to_s)}"

# Part 2

number = 0

until /^0{6}/.match(md5.hexdigest(input + number.to_s)) do
  number += 1
end

puts "Number: #{number}, Digest: #{md5.hexdigest(input + number.to_s)}"
