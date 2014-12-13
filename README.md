Airport Challenge
=================

This is the end of week 1 challenge where we are consolidate what we have learnt from our 'Boris Bikes' challenge to create a scenario where by planes can land and take off from an airport with the weather being instrumental as to whether this can happen. 

I have created the following to help with identifying what it is I will need to create. 


Class Responsibility Collaborations
***********************************

class Plane
===========

RESPONSIBILITIES        | COLLABORATORS
------------------------------------------
flying                  | 
land                    | Airport
grounded                | Airport
take off                | Airport


class Airport
=============

RESPONSIBILITIES        | COLLABORATORS
------------------------------------------
hold plane              | Plane
permission to land      | Plane
permission to take off  | Plane