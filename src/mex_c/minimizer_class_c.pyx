import numpy as np
from simplex_networks_c import create_matrix
from problem_definition_c import constrain, obj, minz
from general_c import generates_matrix


class Minimizer_c():
    """
    Minimize the objective function
    """
    
    def __init__(self, A, b, c):
        self.matrix = generates_matrix(A, b, [-1*x for x in c])
        self.min = None
        self.coeff = None

    def solve(self):
        solve = minz(self.matrix)
        self.min = solve['min']
        self.coeff = np.array(list(solve.values()))[:-1]

    def get_min(self):
        return self.min

    def get_coeff(self):
        return self.coeff
