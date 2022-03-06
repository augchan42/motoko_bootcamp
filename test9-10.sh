#challenge 9
echo remove 5 from array 1,2,3,4,5
dfx canister call day_1 remove_from_array '(vec {1;2;3;4;5}, 5)'
echo remove 3 from array 1,2,3,4,5
dfx canister call day_1 remove_from_array '(vec {1;2;3;4;5}, 3)'
#challenge 10
#echo sort array 3,2,1,4,5
#dfx canister call day_1 selection_sort '(vec {3;2;1;4;5})'
echo swap fifth and first elements array 3,2,1,4,5
dfx canister call day_1 pubswap '(vec {3;2;1;4;5}, 4, 0)'
dfx canister call day_1 get_smallest '(vec {3;2;1;4;5})'
