import random


def random_number():
    return random.randint(0,10000)


class Elphin:
    def __init__(self,number):
        self.Elphin_number=random_number()
        self.number=number
    def print_info(self):
        print(f'Elpin_num={self.Elphin_number},num={self.number}')

    def osioki(self):
        self.Elphin_number=self.number
    
    def itazura(self):
        self.Elphin_number=random_number()

# cppで作成するべきだろうか．


