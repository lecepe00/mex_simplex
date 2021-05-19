import numpy as np
from mex.simplex.simplex_networks import create_matrix
from mex.simplex.problem_definition import constrain, obj, maxz
from mex.utils.general import generates_matrix, generate_tableau


class Maximizer():
    """Maximize the objective function"""
    def __init__(self, A, b, c):
        self.A_matrix = A
        self.b_vector = b
        self.c_vector = c
        self.matrix = generates_matrix(A, b, c)
        self.max = None
        self.coeff = None

    def add_constraints(self, lowerbounds, upperbounds):
        self.matrix = generate_tableau(self.A_matrix, self.b_vector, lowerbounds, upperbounds, self.c_vector, compr=False)

    def solve(self):
        solve = maxz(self.matrix)
        self.max = solve['max']
        self.coeff = np.array(list(solve.values()))[:-1]

    def get_max(self):
        return self.max

    def get_coeff(self):
        return self.coeff
