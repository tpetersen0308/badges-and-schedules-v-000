# Write your code here.
speakers = ["Edsger","Ada","Charles","Alan","Grace","Linus","Matz"]

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  badges = Array.new

  names.each do |name|
    badges << badge_maker(name)
  end

  return badges
end

def assign_rooms(names)
  room_assignments = Array.new

  names.each_with_index do |name, index|
    room_assignments << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end

  return room_assignments
end

def printer(names)
  badges = batch_badge_creator(names)
  assignments = assign_rooms(names)
  badges.each { |badge| puts "#{badge}" }
  assignments.each { |assignment| puts "#{assignment}" }
end
