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




def get_grades

  puts "Enter all of your grades in the form of 0-100.  Type q to quit."
  grades = []
  doit = gets.chomp
  while (doit !=  'q')
    grades.push doit.to_i
    doit = gets.chomp
  end
  grades
  end


#counts = mapGrades [55, 88, 93, 85, 100, 43, 29, 77]
letters = ["A","B","C","D","F"]
counts = mapGrades get_grades
do_num_letter_grades(letters, counts)
do_histogram_letter_grades(counts, letters)