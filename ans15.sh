
echo "Student No. | Student Name | Gender | Total Marks | Percentage"

# Process student.dat file using awk
awk -F ':' '{

total_marks = $4 + $5 + $6
percentage = (total_marks / 300) * 100

printf("%s | %s | %s | %d | %.2f%%\n", $1, $2, $3, total_marks, percentage)


if ($3 == "Male"){
        total_male++
} else {
        total_female++
}

if (total_marks >= 180) {
        total_pass++
} else {
        total_fail++
}

} END {
       printf("Total Male Students: %d\n", total_male)
       printf("Total Female Students: %d\n", total_female)
       printf("Total Pass Students: %d\n", total_pass)
       printf("Total Fail Students: %d\n", total_fail)
}' student.dat

