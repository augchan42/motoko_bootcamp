import Debug "mo:base/Debug";
import Nat "mo:base/Nat"; //challenge 7 8

actor {  
  public func equal_to_one (n : Nat) : async Text {
        if(n == 1) {
            return("n is equal to 1 !");
        } else {
            return ("n is not equal to 1 !");
        };
    };

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

    public func inf_to_one (n : Nat) : async Text {
        if(n < 1){
            return("n is below 1 !");
        };
        if( n > 1){
            return("n is above 1 !");
        } else {
            return("n is equal to 1!");
        };
    };
//Challenge 5 and 6

  let array : [Text] = ["Motoko", "is", "a", "great", "language", "."];//challenge 5
  let array2 : [Nat] = [1, 2, 3, 4, 5];//challenge 6

//challenge 5
    public func check_index(n : Nat) : async Text {
        return(array[n]);
    };

    public func check_size() : async Nat {
        return(array.size());
    };     

//challenge 6
     public func test() : async () {
        for (value in array.vals()){
            Debug.print(debug_show(value))
        };
     };

     public func test2() : async () {
        for (value in array2.vals()){
            Debug.print(debug_show(value))
        };
     };

     //challenge 7 8
    public func nat_to_text(n : Nat) : async Text {
        return(Nat.toText(n));
    };

    //let a : Nat = 5; ✅//challenge 8    
    
};
