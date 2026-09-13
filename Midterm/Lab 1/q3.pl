can_enroll(Student, Course) :-
    student(Student, Year, Program),
    course(Course, Year, Program),
    findall(C, completed(Student, C), CompletedList),
    subtract([Course], CompletedList, [Course]),
    findall(P, requires(Course, P), Prereqs),
    subtract(Prereqs, CompletedList, []).

possible_classmate(StudentA, StudentB) :-
    student(StudentA, Year, Program),
    student(StudentB, Year, Program),
    StudentA \= StudentB.