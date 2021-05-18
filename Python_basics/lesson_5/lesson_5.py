# 1. Создать программно файл в текстовом формате, записать в него построчно данные,
# вводимые пользователем. Об окончании ввода данных свидетельствует пустая строка.

with open('ex_1.txt', 'w') as file:

    words = ' '

    while words != '':
        words = input()
        file.write(words + '\n')

# 2. Создать текстовый файл (не программно), сохранить в нем несколько строк,
# выполнить подсчет количества строк, количества слов в каждой строке.

with open('ex_2.txt', 'r') as file:

    strings_amount = 0

    for s in file:
        strings_amount += 1
        s = s.split(' ')
        print(f"Количество слов в строке номер {strings_amount}: {len(s)}")

    print(f"Количество строк: {strings_amount}")

# 3. Создать текстовый файл (не программно), построчно записать фамилии сотрудников и
# величину их окладов. Определить, кто из сотрудников имеет оклад менее 20 тыс., вывести
# фамилии этих сотрудников. Выполнить подсчет средней величины дохода сотрудников.

with open('ex_3.txt', 'r') as file:

    total_salary = 0
    total_employees = 0

    for s in file:
        s = s.split(' ')
        total_salary += float(s[1])
        total_employees += 1
        if float(s[1]) < 20.000:
            print(f"У сотрудника {s[0]} зарплата ниже 20тыс")

    print(total_salary / total_employees)

# 4. Необходимо написать программу, открывающую файл на чтение и считывающую построчно данные.
# При этом английские числительные должны заменяться на русские. Новый блок строк должен
# записываться в новый текстовый файл.

rus = {
    1: "Один",
    2: "Два",
    3: "Три",
    4: "Четыре",
}

with open('ex_4_eng.txt', 'r') as file_eng:
    for s in file_eng:
        s = s.split(' ')
        s[0] = rus[int(s[2])]
        with open('ex_4_rus.txt', 'a') as file_rus:
            file_rus.write(' '.join(s))

# 5. Создать (программно) текстовый файл, записать в него программно набор чисел, разделенных пробелами.
# Программа должна подсчитывать сумму чисел в файле и выводить ее на экран.

with open('ex_5.txt', 'w') as file:
    nums = [str(i) for i in range(30)]
    file.write(' '.join(nums))

with open('ex_5.txt', 'r') as file:
    nums = file.readline().split(' ')
    nums = map(int, nums)
    print(sum(nums))

# 6. Необходимо создать (не программно) текстовый файл, где каждая строка описывает учебный предмет и наличие
# лекционных, практических и лабораторных занятий по этому предмету и их количество. Важно, чтобы для каждого
# предмета не обязательно были все типы занятий. Сформировать словарь, содержащий название предмета и общее
# количество занятий по нему. Вывести словарь на экран.

import re

subjects = {}

with open('ex_6.txt', 'r') as file:
    for s in file:
        subject = s.split(':')[0]
        nums = [int(i) for i in re.findall(r'\d+', s)]
        subjects[subject] = sum(nums)

print(subjects)

# 7. Создать (не программно) текстовый файл, в котором каждая строка должна содержать данные о фирме: название,
# форма собственности, выручка, издержки.

import json

with open('ex_7.txt', 'r') as file:
    firms = {}
    profit = {}
    for s in file:
        s = s.split('.')[0]
        s = s.split(' ')
        average_profit = int(s[2]) - int(s[3])
        firms[s[0]] = average_profit
        if average_profit > 0:
            if "average_profit" in profit:
                profit["average_profit"] += average_profit
            else:
                profit["average_profit"] = average_profit

    with open('ex_7.json', 'w') as file_json:
        json.dump([firms, profit], file_json)
