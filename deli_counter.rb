katz_deli = []

def line(people)
    if people.size == 0
       puts "The line is currently empty."
    else
        order_of_people = []
        people.each_with_index do |person, index|
            if index != people.size - 1
                line_num = index + 1
                order_of_people << "#{line_num}. #{person} "
            else
                line_num = index + 1
                order_of_people << "#{line_num}. #{person}"
            end 
        end
        puts "The line is currently: #{order_of_people.join}"
    end
end

def take_a_number(people, person)
    people << person
    line_num = people.index(person) + 1
    puts "Welcome, #{person}. You are number #{line_num} in line."
end

def now_serving(people)
    if people.size == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{people[0]}."
        people.shift
    end
end