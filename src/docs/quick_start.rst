************
Quick start
************

Example for **maximization** problem with lower bounds only:
  
.. code-block:: bash

    A_max = [[1, 0], [0, 2], [3, 2]]
    b_max = [[4], [12], [18]]
    c_max = [[-3], [-5]]

   maxim = Maximizer(A_max, b_max, c_max)
   maxim.solve()
   max_approx = maxim.get_max()
   coeff_approx = maxim.get_coeff()

Example for **minimization** problem with lower bounds only:

.. code-block:: bash

   A_min = [[1, 1], [-1, 2]]
   b_min = [[6], [8]]
   c_min = [[-1], [-3]]

   minim = Minimizer(A_min_obj, b_min_obj, c_min_obj)
   minim.solve()
   min_approx = minim.get_min()
   coeff_approx = minim.get_coeff()

Example for **minimization** problem with lower and upper bounds:

**Note:** For this example, we will use the data placed on `data` folder in this github.

.. code-block:: bash

   import scipy.io as sio
   mat = sio.loadmat('../data/AGG.mat')
   A = mat['A'].toarray()
   b = mat['b']
   c = mat['c']
   lbounds = mat['lbounds']
   ubounds = mat['ubounds']

   minim = Minimizer(A, b, c)
   minim.add_constraints(lbounds,ubounds)
   minim.solve()
   min_approx = minim.get_min()
   coeff_approx = minim.get_coeff()