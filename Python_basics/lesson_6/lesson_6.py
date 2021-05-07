# Создать1. Создать класс TrafficLight (светофор) и определить у него один атрибут color (цвет) и метод running (запуск).
# Атрибут реализовать как приватный. В рамках метода реализовать переключение светофора в режимы: красный, желтый,
# зеленый. Продолжительность первого состояния (красный) составляет 7 секунд, второго (желтый) — 2 секунды, третьего
# (зеленый) — на ваше усмотрение. Переключение между режимами должно осуществляться только в указанном порядке
# (красный, желтый, зеленый). Проверить работу примера, создав экземпляр и вызвав описанный метод.

import time

class TrafficLight:

    def __init__(self, color: str = 'Red'):
        self.__color = color

    def running(self):
        print(self.__color)
        time.sleep(7)
        self.__color = 'Yellow'
        print(self.__color)
        time.sleep(2)
        self.__color = 'Green'
        print(self.__color)
        time.sleep(5)

trf = TrafficLight()
trf.running()

# 2. Реализовать класс Road (дорога), в котором определить атрибуты: length (длина), width (ширина).
# Значения данных атрибутов должны передаваться при создании экземпляра класса. Атрибуты сделать защищенными.
# Определить метод расчета массы асфальта, необходимого для покрытия всего дорожного полотна. Использовать формулу:
# длина * ширина * масса асфальта для покрытия одного кв метра дороги асфальтом, толщиной в 1 см * чи сло см
# толщины полотна. Проверить работу метода.
# Например: 20м * 5000м * 25кг * 5см = 12500 т

class Road:

    def __init__(self, length: int = None, width: int = None):
        self.__length = length
        self.__width = width

    def count(self):
        print(f"Масса равна {(self.__length * self.__width * 25 * 5) / 1000} т")

rd = Road(length=20, width=5000)
rd.count()

# 3. Реализовать базовый класс Worker (работник), в котором определить атрибуты: name, surname, position (должность),
# income (доход). Последний атрибут должен быть защищенным и ссылаться на словарь, содержащий элементы: оклад и премия,
# например, {"wage": wage, "bonus": bonus}. Создать класс Position (должность) на базе класса Worker. В классе Position
# реализовать методы получения полного имени сотрудника (get_full_name) и дохода с учетом премии (get_total_income).
# Проверить работу примера на реальных данных (создать экземпляры класса Position, передать данные, проверить значения
# атрибутов, вызвать методы экземпляров).

class Worker:

    def __init__(self, name: str = None,
                 surname: str = None,
                 position: str = None,
                 wage: int =None,
                 bonus: int = None):

        self.name = name
        self.surname = surname
        self.position = position
        self._income = {"wage": wage, "bonus": bonus}

class Position(Worker):
        def get_full_name(self):
            print(f"Имя: {self.name}, Фамилия: {self.surname}")

        def get_total_income(self):
            total = self._income['wage'] + self._income['bonus']
            print(f"Доход {total}")

wrk = Position(name='John', surname='Doe', position='Data Scientist', wage=120000, bonus=50000)
wrk.get_full_name()
wrk.get_total_income()

# 4. Реализуйте базовый класс Car. У данного класса должны быть следующие атрибуты: speed, color, name, is_police (булево).
# А также методы: go, stop, turn(direction), которые должны сообщать, что машина поехала, остановилась, повернула (куда).
# Опишите несколько дочерних классов: TownCar, SportCar, WorkCar, PoliceCar. Добавьте в базовый класс метод show_speed,
# который должен показывать текущую скорость автомобиля. Для классов TownCar и WorkCar переопределите метод show_speed.
# При значении скорости свыше 60 (TownCar) и 40 (WorkCar) должно выводиться сообщение о превышении скорости.

class Car:

    def __init__(self,
                 speed: int = None,
                 color: str = None,
                 name: str = None,
                 is_police: bool = None):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police

    def go(self):
        print("Машина поехала")

    def stop(self):
        print("Машина остановилась")

    def turn(self, direction: str = None):
        if direction is None:
            print("Машина никуда не повернула")
        else:
            print(f"Машина повернула {direction}")

    def show_speed(self):
        print(f"Скорость машины {self.speed}")


class TownCar(Car):

    def __init__(self, speed, color, name,  is_police = False):
        super().__init__(speed, color, name,  is_police)

    def show_speed(self):
        if self.speed > 60:
            print(f"Внимание! Превышение скорости! Скорость машины {self.speed}!")
        else:
            print(f"Скорость машины {self.speed}")


class WorkCar(Car):

    def __init__(self, speed, color, name, is_police=False):
        super().__init__(speed, color, name, is_police)

    def show_speed(self):
        if self.speed > 40:
            print(f"Внимание! Превышение скорости! Скорость машины {self.speed}!")
        else:
            print(f"Скорость машины {self.speed}")


class SportCar(Car):

    def __init__(self, speed, color, name, is_police=False):
        super().__init__(speed, color, name, is_police)


class PoliceCar(Car):

    def __init__(self, speed, color, name, is_police=True):
        super().__init__(speed, color, name, is_police)

twncr = TownCar(name='TownCar', color='White', speed=70)
print(twncr.name, twncr.color, twncr.speed, twncr.is_police)
twncr.go()
twncr.stop()
twncr.turn('Направо')
twncr.show_speed()
wrkcr = WorkCar(name='WorkCar', color='Green', speed=50)
print(wrkcr.name, wrkcr.color, wrkcr.speed, wrkcr.is_police)
wrkcr.go()
wrkcr.stop()
wrkcr.turn('Направо')
wrkcr.show_speed()
sptcr = SportCar(name='SportCar', color='Red', speed=110)
print(sptcr.name, sptcr.color, sptcr.speed, sptcr.is_police)
sptcr.go()
sptcr.stop()
sptcr.turn('Направо')
sptcr.show_speed()
plccr = PoliceCar(name='PoliceCar', color='Black', speed=100)
print(plccr.name, plccr.color, plccr.speed, plccr.is_police)
plccr.go()
plccr.stop()
plccr.turn('Направо')
plccr.show_speed()

# 5. Реализовать класс Stationery (канцелярская принадлежность). Определить в нем атрибут title (название) и метод draw
# (отрисовка). Метод выводит сообщение “Запуск отрисовки.” Создать три дочерних класса Pen (ручка), Pencil (карандаш),
# Handle (маркер). В каждом из классов реализовать переопределение метода draw. Для каждого из классов методы должен
# выводить уникальное сообщение. Создать экземпляры классов и проверить, что выведет описанный метод для каждого экземпляра.

class Stationery:

    def __init__(self, title: str = None):
        self.title = title

    def draw(self):
        print("Запуск отрисовки.")

class Pen(Stationery):

    def draw(self):
        print(f"Запуск отрисовки. Класс {self.title}")

class Pencil(Stationery):

    def draw(self):
        print(f"Запуск отрисовки. Класс {self.title}")

class Handle(Stationery):

    def draw(self):
        print(f"Запуск отрисовки. Класс {self.title}")

pen = Pen(title='Pen')
pen.draw()
pencil = Pencil(title='Pencil')
pencil.draw()
handler = Handle(title='Handle')
handler.draw()