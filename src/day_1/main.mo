import Debug "mo:base/Debug";
import Nat "mo:base/Nat"; 
import Array  "mo:base/Array"; 
import Buffer  "mo:base/Buffer"; 

actor {
  
 //challenge 1
    public func add (x : Nat, y : Nat ) : async Nat {
      return(x + y);
    };

 //challenge 2
 public func square (x : Nat) : async Nat {
      return(x * x);
    };

  //challenge 3
  public func days_to_second (x : Nat) : async Nat {
  let seconds_in_a_day : Nat = 86400;
      return(x * seconds_in_a_day);
    };


  //challenge 4
  var counter : Nat = 0; //initialize counter to 0

  public func increment_counter (x : Nat) : async Nat {
    counter := counter + x;
    return (counter);
  };

  public func clear_counter () : async Text {
    counter := 0;

    return "Counter vriable set to 0";
    
  };

    
  //Challenge 5
  public func divide (n : Nat, m: Nat) : async Bool {
    let divisible : Nat = m % n;
    if (divisible == 0) {
      return true;
    };
    return false;
  };
  
  //Challenge 6
    public func is_even (n : Nat) : async Bool {
    let is_even : Nat = n % 2;
    if (is_even == 0) {
      return true;
    };
    return false;
  };

  //challenge 7
  public func sum_of_array(a : [Nat]) : async Nat {
    var sum : Nat = 0;
    for (value in a.vals()){
            sum := sum + value;
        };
    return sum;
  };

  //challenge 8
  public func maximum (a : [Nat]) : async Nat {
    var max : Nat = 0;    
    for (value in a.vals()){
        if (max < value) {
          max := value;
        };
    };
    return max;
  };

  //challenge 9
  public func remove_from_array (a : [Nat], n : Nat) : async [Nat] {
    var remove_me : Nat = n;
    let array = Array.filter<Nat>(a, func(p) { p != remove_me });

    return array;
  };

  //challenge 10
  public func selection_sort (unsorted_array : [Nat]) : async [Nat] {
    var current_lowest : Nat = unsorted_array[0]; // initialize lowest value to first array entry
    var sorted_array : [Nat] = [];
    var unsorted_buffer = Buffer.Buffer<Nat>(10);

    //initialize buffer
    for (value in unsorted_array.vals()){                
      unsorted_buffer.add(value);        
    };

    

    return sorted_array;
  };
  
  func get_smallest(array : [Nat]) : <Nat, Nat> {
    var smallest : Nat = array[0];
    var counter : Nat = 0;

    for (value in array.vals()){
      if (value < smallest) {
        smallest := value;
      };
      counter += 1;
    };
    return smallest, counter;  
  };

  public func pubswap (array : [Nat], entry1 : Nat, entry2 : Nat) : async [Nat] {  
    return swap(array, entry1, entry2);
  };

  //swap entry 1 and entry 2 in array
  func swap (array : [Nat], entry1 : Nat, entry2 : Nat) : [Nat] {
    let entry1_val = array[entry1];
    let entry2_val = array[entry2];
    var buffer = Buffer.Buffer<Nat>(10);
    var counter : Nat = 0;

    for (value in array.vals()) {
      if (counter == entry1) {
        buffer.add(entry2_val);
      } else       
      if (counter == entry2) {
        buffer.add(entry1_val);
      } else {
        buffer.add(value);
      };
      
      counter += 1;
       //Debug.print(Nat.toText(counter))
    };

    return buffer.toArray();
  };
};