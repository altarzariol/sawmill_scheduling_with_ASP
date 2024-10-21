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

demand(1,1,27). 
demand(1,2,21). 
demand(1,3,27). 
demand(1,4,20). 
demand(1,5,38). 
demand(2,1,105). 
demand(2,2,89). 
demand(2,3,96). 
demand(2,4,110). 
demand(2,5,132). 
demand(3,1,20). 
demand(3,2,12). 
demand(3,3,20). 
demand(3,4,14). 
demand(3,5,27). 
demand(4,1,44). 
demand(4,2,40). 
demand(4,3,47). 
demand(4,4,45). 
demand(4,5,59). 
demand(5,1,32). 
demand(5,2,32). 
demand(5,3,20). 
demand(5,4,28). 
demand(5,5,19). 

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
