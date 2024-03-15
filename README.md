# The Hammer Production Problem
A company produces three types of hammers (typeA, typeB and typeC). To produce the hammers, a certain amount of iron is necessary. Iron may be purchased from a supplier, who sells it at 4 Euros/Kg, till a maximum of 4800 Kg. In the following table the quantity of iron necessary to produce one hammer of each type, the unit cost of manufacturing per type and the profit that will be obtained by selling one hammer of each type are reported.
1.	Formulate in terms of ILP the problem of defining the production plan of the company, i.e., to establish how many hammers of each type to produce, by taking into account the iron availability, in such a way as to maximize the revenue for the company (given by total profit minus costs), knowing that the three types of hammers need to be produced by satisfying the following additional constraints:
    * the number of hammers of typeA must be at least the double of the number of hammers of typeB;
    * the number of hammers of typeA must be not higher than the number of hammers of typeC.
  
  <center>
  
  | Hammer | Iron Kg/for hammer	| Profit	| Cost of manufacturing |
  | :--- | :---: | :---: | :---: |
  | typeA	| 1	| 27 |	11 |
  | typeB	| 1 |	21	| 6 |
  | typeC	| 2 |	33	| 5 |
  
  </center>
  
2.	Implement the proposed ILP model by means of the modelling language AMPL, and solve it using the optimization solver CPLEX.
3.	Suppose that the company has an extra budget of 800 Euros. The company decides to invest this extra budget to buy other iron from another supplier, who sells iron at 7 Euros/Kg. How does the model change?
4.	Solve the model proposed in point 3 via AMPL and CPLEX, and discuss how the optimal solution changes with respect to the one found in point 2.
