(** * Introduction 

Word begins to spread about how you solve pink diamond's proof.
There you find blue diamond waiting for you.

Blue diamond: Hello there, welcome to my palace. 
Before you try and prove my proof, lets talk about set theory.
**)

(**
* Set basics

Blue diamond: A elelement is the basic part of a set. An element can be in a set. 
A set can be infinite or not. We dont know what [Type] of the set and the element is. It could be an number, an entity, a gem, or even, a True statment.
So we use the Type keyword, to enclose that uncertity away.
**)
Axiom In : Type -> Type -> Type.
(** Blue diamond: When trying to make a element of a set. We say that element is [in] the set* 
We could say that if $A$ is a set and $a$ is an element we could say that $ a\u2208A $
*)
Notation "a \u2208 A" := (In a A) (at level 150).

(*Blue diamond: You can use tactics, which you learned from my sister pink, to solve this proof.*)

Lemma set_assumption (A : Type) (a : Type) (b : a \u2208 A): a \u2208 A.
Proof.
  
Admitted.



(** Blue diamond: Great, now lets see what are subsets are.

A subset says that a element in one set is the same in annother set, the it means that the set is the subset of annother set
*)

Definition Subset (A : Type) (B : Type) := B -> A.

Notation "a \u2286 A" := (Subset a A) (at level 100).

(** Blue diamond: This will be an helper axiom. 
[<->] or If and only If is similar to equals in coq. 
It says that [<->] is the same for [=] and vice versa.
*)
Axiom Iff_equality : forall P Q, (P <-> Q) = (P = Q).
Axiom Subset_antisymm: forall (a b:Type), forall (h1 : a \u2286 b), forall (h2 : b \u2286 a),  a = b.
(** Lets talk about an tactic, called [apply.] [apply A.]*)
(** lets prove that [forall] a \u2286 A, a, b, we can prove that a is equal to b. Using the the new tactic, we will begin with [apply Subset_antisymm.]  **)

Theorem Inset_antisymm (a b:Type) (h1 : a \u2286 b)(c:a)(d:b): a=b.
Proof.
Admitted.

(** Blue diamond: For right know my gems are trying to find more opperations and how to formalize them. So for right know you may go.*)

(**There you leave the building.*)



