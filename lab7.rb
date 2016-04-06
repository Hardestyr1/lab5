grades = []
File.open("grades.txt",'r') do |file|
  file.each_line do |line|
    grades.push line.to_i
  end
end

puts grades

def mapGrades(grades)

m = Hash.new(0)

grades.each do |percentages|
  if percentages < 60
    m["F"] +=1
  elsif percentages < 70
    m["D"] +=1
  elsif percentages < 80
    m["C"] +=1
  elsif percentages < 90
    m["B"] +=1
  else
    m["A"] +=1
  end


end
m
end

def do_num_letter_grades(letters,counts)
  letters.each do |let|
    puts let + " " + counts[let].to_s
  end
end

def do_histogram_letter_grades(counts,letters)
  letters.each do |let|
    count = counts[let]
    puts let + " " + ("*" * count)

  end
end

letters = ["A","B","C","D","F"]
counts = mapGrades grades
do_num_letter_grades(letters, counts)
do_histogram_letter_grades(counts, letters)