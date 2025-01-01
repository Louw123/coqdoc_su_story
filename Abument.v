(** Just as you about to head to White diamonds, you find someone. 
* Mathematical proofs

Abument: Sorry, for your trip. You were sent back in time instead of back home.
Before you head down to white diamond I want to give some some proofs to prove in order for you solve them.
We begin with our first tactic [reflexivity.] [reflexivity.] proves that any number is equal to the same number no matter how you change it.
Lets prove this simple proof.
*)
Lemma reflexivity (a:nat): a=a.
Proof.

Admitted.


(** 
Abument: For this proof lets learn a couple tactics.
[[induction A.]] takes in [A] and if it is and inductive type, then it will split the goal, for each type.
Becuase nat is a inductive type we can use [[induction.]] on that type. 

Abument: When we use induction on Nat, the goal will split into two parts.

Abument: For example, If the proof is n=n then you must prove the following:

[0=0]
--
[IHn : n=n]
[S n= S n]

Abument: [[rewrite A.]] takes in an assumpion of A and the form of the assumption is C=D. Then it will replace C with d. [[rewrite <- A.]] does the replacment in reverse.

Abument: [[simpl.]] simplifies the proof.

Abument: With all that said, lets prove that n+0=n.
*)


Lemma add_zero (n:nat): 0+n=n.
Proof.

Admitted.
(** Abument: you can just copy the code from add_zero to prove this.**)
Lemma zero_add (n:nat): n+0=n.
Proof.

Admitted.
(** Now lets prove that a+b=b+a.**)
Lemma add_comm (a b:nat): a+b=b+a.
Proof.
Admitted.

(** Abument: Thats it you may go to white diamond now. Your exit is at yellow diamond's room where you find the cube for your exit. But for right now go like i dont exist. Goodbye.
Abument leaves continue through your journey.

*)
