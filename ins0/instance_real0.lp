#const max_period = 5.
#const material_n = 5.
#const product_n = 5.
process_time(1).
capacity(1,20).
capacity(2,20).
capacity(3,20).
capacity(4,20).
capacity(5,20).

periods(1..max_period). 
materials(1..material_n).
products(1..product_n).

demand(1,1,46). 
demand(1,2,61). 
demand(1,3,59). 
demand(1,4,83). 
demand(1,5,53). 
demand(2,1,181). 
demand(2,2,209). 
demand(2,3,160). 
demand(2,4,189). 
demand(2,5,209). 
demand(3,1,34). 
demand(3,2,51). 
demand(3,3,47). 
demand(3,4,62). 
demand(3,5,42). 
demand(4,1,85). 
demand(4,2,90). 
demand(4,3,86). 
demand(4,4,91). 
demand(4,5,89). 
demand(5,1,54). 
demand(5,2,56). 
demand(5,3,58). 
demand(5,4,26). 
demand(5,5,42). 

raw_availability(1,1,5). 
raw_availability(1,2,5). 
raw_availability(1,3,5). 
raw_availability(1,4,5). 
raw_availability(1,5,5). 
raw_availability(2,1,5). 
raw_availability(2,2,5). 
raw_availability(2,3,5). 
raw_availability(2,4,5). 
raw_availability(2,5,5). 
raw_availability(3,1,5). 
raw_availability(3,2,5). 
raw_availability(3,3,5). 
raw_availability(3,4,5). 
raw_availability(3,5,5). 
raw_availability(4,1,5). 
raw_availability(4,2,5). 
raw_availability(4,3,5). 
raw_availability(4,4,5). 
raw_availability(4,5,5). 
raw_availability(5,1,5). 
raw_availability(5,2,5). 
raw_availability(5,3,5). 
raw_availability(5,4,5). 
raw_availability(5,5,5). 

yield_table(1,1,5). 
yield_table(1,2,9). 
yield_table(1,3,2). 
yield_table(1,4,6). 
yield_table(1,5,0). 
yield_table(2,1,0). 
yield_table(2,2,9). 
yield_table(2,3,0). 
yield_table(2,4,5). 
yield_table(2,5,3). 
yield_table(3,1,0). 
yield_table(3,2,5). 
yield_table(3,3,0). 
yield_table(3,4,2). 
yield_table(3,5,6). 
yield_table(4,1,0). 
yield_table(4,2,15). 
yield_table(4,3,0). 
yield_table(4,4,4). 
yield_table(4,5,2). 
yield_table(5,1,6). 
yield_table(5,2,3). 
yield_table(5,3,6). 
yield_table(5,4,2). 
yield_table(5,5,0). 
inventory_p(1).
backlog_p(1).
inventory(P,0,0) :- products(P).
backlog(P,0,0) :- products(P).
