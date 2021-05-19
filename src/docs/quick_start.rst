************
Quick start
************

Example for maximization problem:
  
.. code-block:: bash

   maxim = Maximizer(2, 3)
   maxim.add_constraint('1,0,L,4')
   maxim.add_constraint('0,2,L,12')
   maxim.add_constraint('3,2,L,18')
   maxim.add_objective('3,5,0')
   maxim.solve()
   max_approx = maxim.get_max()
   coeff_approx = maxim.get_coeff()

Example for minimization problem:

.. code-block:: bash

   minim = Minimizer(2, 2)
   minim.add_constraint('1,1,L,6')
   minim.add_constraint('-1,2,L,8')
   minim.add_objective('-1,-3,0')
   minim.solve()
   min_approx = minim.get_min()
   coeff_approx = minim.get_coeff()