# Declaration of the sets
set Hammers;

# Declaration of the data
param CostIron;
param IronAvailability;
param KgPerHammer{Hammers} >= 0;
param Profit{Hammers} >= 0;
param CostManufactoring{Hammers} >= 0;

# Declaration of the decision variables
var Number{Hammers} >= 0 integer;

# Objective function
maximize TotalRevenue: sum {i in Hammers} (Profit[i] - (KgPerHammer[i] * CostIron) - CostManufactoring[i]) * Number[i];

# Constraint on the maximum number of Iron available
subject to IronConstraint: sum {i in Hammers} Number[i] * KgPerHammer[i] <= IronAvailability;

# Constraint 1
subject to Constraint1: Number['typeA'] >= 2 * Number['typeB'];

# Constraint 2
subject to Constraint2: Number['typeA'] <= Number['typeC'];
