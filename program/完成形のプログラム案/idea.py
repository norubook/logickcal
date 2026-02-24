
from action_function import action

saved_apostles=[]

class apostle:
    def __init__(self):
        self.name=""
        self.action_num=0
        self.hp=0

def apostles_save(import_apostles):
    saved_apostles.append(import_apostles)


def making_apostle():
    apostles = []
    new_apostle = apostle()
    new_apostle.name="gideon"
    new_apostle.action_num=0
    new_apostle.hp=30
    apostles.append(new_apostle)
    new_apostle = apostle()
    new_apostle.name="elphin"
    new_apostle.action_num=1
    new_apostle.hp=20
    apostles.append(new_apostle)
    apostles_save(apostles)


def use_action():
    apostle = "gideon" in apostles.name
    action(apostle.action)

    apostle = "elphin" in apostles.name
    action(apostle.action)
    

    ###考える必要あり




def file_name():
    making_apostle()

    use_action()


    return 0


def main():
    file_name()
