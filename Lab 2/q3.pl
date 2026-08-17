income(john, 500000).
spending(john, 100000).
married(john, 2).
donation(john, 5000).

income(mary, 800000).
spending(mary, 150000).
unmarried(mary).
donation(mary, 10000).

rate(0, _, 0).
rate(1, 300000, 10).
rate(300001, 600000, 20).
rate(600001, 1000000, 30).
rate(1000001, 2000000, 40).
rate(2000001, _, 50).

pay_tax(Person, Tax_amount) :-
    married(Person, No_of_children),
    income(Person, Income),
    spending(Person, Spending),
    donation(Person, Donation),
    Net is Income - Spending - (No_of_children * 10000) - Donation,
    net_rate(Net, Rate),
    Tax_amount is Net * Rate / 100.

pay_tax(Person, Tax_amount) :-
    unmarried(Person),
    income(Person, Income),
    spending(Person, Spending),
    donation(Person, Donation),
    Net is Income - Spending - Donation,
    net_rate(Net, Rate),
    Tax_amount is Net * Rate / 100.

net_rate(Net, Rate) :-
    rate(Low, High, Rate),
    Net >= Low,
    Net =< High, !.