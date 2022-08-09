import 'dart:io';

void main(){
  performTasks();
}

void performTasks(){
  task1();
  String task2Result = task2();
  task3(task2Result);
}

void task1(){
  String result = 'task 1 data';
  print('Task 1 Complete');
}
String task2(){
  Duration fiveSeconds = Duration(seconds: 5);
  String result= '';
  Future.delayed(fiveSeconds,(){
    result = 'task 2 data';
    print('Task 2 Complete');
  });
  return result;

}

void task3(String task2Data){
  String result = 'task 3 data';
  print('Task 3 Complete with ${task2Data}');
}