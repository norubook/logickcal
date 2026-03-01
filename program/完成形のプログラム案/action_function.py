
def random_action():
    return 0

def breakfunc():
    return 1



actions={
    1: random_action,
    2: breakfunc,

}






def action(action_number):
    target_func = actions.get(action_number)
    target_func()
    return action_number