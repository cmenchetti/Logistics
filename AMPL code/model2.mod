# Declaration of the sets
set Hammers;
set Suppliers;

# Declaration of the data
param CostIron{Suppliers} >= 0;
param IronAvailability;
param ExtraBudget;
param KgPerHammer{Hammers} >= 0;
param Profit{Hammers} >= 0;
param CostManufactoring{Hammers} >= 0;

# Declaration of the decision variables
var Number{Hammers, Suppliers} >= 0 integer;

# Objective function
maximize TotalRevenue: (sum {i in Hammers} sum {j in Suppliers} (Profit[i] - (KgPerHammer[i] * CostIron[j]) - CostManufactoring[i]) * Number[i,j]);

# Modified objective function (if the company wishes to consider the remaining extra budget as revenue) 
# maximize TotalRevenue: (sum {i in Hammers} sum {j in Suppliers} (Profit[i] - (KgPerHammer[i] * CostIron[j]) - CostManufactoring[i]) * Number[i,j]) + (ExtraBudget - ((sum {i in Hammers} Number[i, 'supplier2'] * KgPerHammer[i]) * CostIron['supplier2']));

# Constraint on the maximum number of Iron available 
subject to IronConstraint: sum {i in Hammers} Number[i,'supplier1'] * KgPerHammer[i] <= IronAvailability;

# Constraint for the extra budget
subject to ExtraBudgetConstraint: (sum {i in Hammers} Number[i, 'supplier2'] * KgPerHammer[i]) * CostIron['supplier2'] <= ExtraBudget;

# Constraint 1
subject to Constraint1: sum {j in Suppliers} Number['typeA',j] >= 2 * (sum {j in Suppliers} Number['typeB',j]);

# Constraint 2
subject to Constraint2: sum {j in Suppliers} Number['typeA',j] <= sum {j in Suppliers} Number['typeC',j];



