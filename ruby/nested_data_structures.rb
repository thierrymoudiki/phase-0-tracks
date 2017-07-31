class_room = {
    student_1: {
        name: 'Felicia Torres',
        marks: {
            mathematics: [3, 1],
            french: [4, 5]
        }
    },
    student_2: {
        name: 'Jessica Jones',
        marks: {
            mathematics: [3, 2],
            french: [5, 3]
        }
    },
    student_3: {
        name: 'Peter Parker',
        marks: {
            mathematics: [2, 5],
            french: [0, 0.5]
        },
    }
}

puts "Student #{class_room[:student_3][:name]}, had #{class_room[:student_3][:marks][:mathematics][1]} for his/her second evaluation in mathematics"

