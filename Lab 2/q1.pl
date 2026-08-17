calculate_bmi(Person, BMI_value):-
    person(Person, W, H),
    BMI_value is W / (H * H).


interpret_bmi(BMI_value, 'Underweight') :- BMI_value < 18.5.
interpret_bmi(BMI_value, 'Normal Weight') :- BMI_value >= 18.5, BMI_value =< 24.9.
interpret_bmi(BMI_value, 'Overweight') :- BMI_value >= 25.0, BMI_value =< 29.9.
interpret_bmi(BMI_value, 'Obese') :- BMI_value >= 30.0.

person(name, 34, 1.65).