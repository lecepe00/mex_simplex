import numpy as np
from simplex_networks_c import create_matrix
from problem_definition_c import constrain, obj, maxz
from general_c import generates_matrix


class Maximizer_c():
    """
    Maximize the objective function
    """
    
    def __init__(self, A, b, c):
        self.matrix = generates_matrix(A, b, c)
        self.max = None
        self.coeff = None

    def solve(self):
        solve = maxz(self.matrix)
        self.max = solve['max']
        self.coeff = np.array(list(solve.values()))[:-1]

    def get_max(self):
        return self.max

    def get_coeff(self):
        return self.coeff