(**There you walk up to a ship, there you find white diamond. She was waiting for you.

White diamond: fellow thing.

There you see a unknown hand, touches to tip the tip of her, and he personality changes.

White Diamond: Well, It looks like that you know a fraction of this language before you found me. It might be time to understand an important part in Coq, 

** functions
There are two types of functions in Coq, Recursive and Non-Recursive. Recursive functions, calls the function inside the same function causing a loop. 
[Fixpoint] is one of the recursive functions.
[Fixpoint] will recurse infinitely until it terminates.
The code is a Fixpoint that will recurse for any number. 
Note that this function shows termination by showing that The function will not be called again if the number is zero.
*)
Fixpoint Succ (n : nat) : nat :=
  match n with
  | 0 => 1
  | S n => (Succ n) +1
  end.

Eval compute in Succ 2.

(** White Diamond: Lets see another tactic, [unfold.] [Unfold A.] takes in argument [A], replaces [A] with the function and tries to evaluate the function.
Now lets prove that [Succ 1 = 2]. 
*)


Lemma Two_eq_succ_one: Succ 1 = 2.
Proof.
Admitted.

(** White Diamond: Now lets prove both cases of succ.
Lets make a [Inductive Type]. An inductive type is a type that can recursive or not.
We will make a Type that can return [0] or [1].
We will also make a funcion to help evaluate that inductive type.
*)
Inductive binary : nat -> Type :=
| zero : binary 0
| one : binary 1.


Definition binary_to_nat {n} (b : binary n) : nat :=
  match b with
  | zero => 0
  | one => 1
  end.

(** White Diamond: Now lets prove that  [Succ (binary zero) = 1].
*)

Theorem Succ_zero_eq_one : Succ (binary_to_nat zero) = 1.
Proof.

Admitted.


(** 
White Diamond: Now lets prove that [Succ n = n+1].
Before we begin in this last proo
*)

Goal forall (a : nat) (b : a <> 0), S a = a + 1.
Proof.

Admitted.

(**White Diamond: Thats it on funtions. They are really simple yet powerfull. Thank you for visiting. Goodbye. 

There you leave the building.
*)


