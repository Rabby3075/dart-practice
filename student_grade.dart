void main() {
  List<int> studentGrades = [85, 92, 78, 65, 88, 72]; //student grade in various subject
  int total = 0; //initialize a value to count total value of all grades
  for (int grade in studentGrades) {
    total += grade; //total grade counting
  }
  double average = total / studentGrades.length; //average grade calculation
  int roundedAverage = average.round(); //rounded average value calculation
  print("Student's average grade: $average"); //printing average grade
  print("Rounded average: $roundedAverage"); //printing rounded average
  //checking average grade is equal to 70 or 70+ or not
  if (average >= 70) {
    print('Passed'); // if average grade is equal to 70 or 70+ print passed
  } else {
    print('Failed'); //otherwise print failed
  }
}
