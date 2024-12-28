
(** * Introduction

You hoped that you return back to your home from a different universe. Turns out are are still stuck. 
You are in the same universe called "steven universe". 
however, you time traveled back before the time you went through. 
You are fortunate enough that you are inside a palace. A pink palace.
There you find Pink diamond. She knows what humanity looks like.  
So when she sees that you are a human, she is confused and amazed.

As you are about to leave Pink begins to speak to you.

Pink Diamond: Hello there, looks like you are lost here. My name is pink diamond. 

You: What are you doing.

Pink Diamond: Im trying to prove something. Have you heared about coq?

You: No I did not.

Pink Diamond: Let me teach you how to use coq.

Pearl: Lets start with logic.

* Logic and tactics

Pearl: Logic gives order to chaos. Without it, we wont understand anything.
Even the simplist things must obey simple logic. Logic has many forms.
Our form of logic is called Prepositional logic.
We will start with simple proofs.

Pearl: To prove proofs, you must use tactics. 
Tactics are used to manipulate the proof to prove the proof. All tactics must end with a period.
If a tactic is red, then it is a closing tactic. A closing tactic is a tactic will close the proof is the tactic runs without issue.
Here is our first tactic [assumption.] [assumption.] is a closing in which it finds the assumptions in the proof and if it matches it closes the proof. 
Lets see how it works:

Remeber: If you complete a goal you must replace [Admitted.] to [Qed.]
*)

Lemma first_proof (a:Prop) (b:a): a.
Proof.
  assumption.
Qed.

(**
Pearl: Now lets introduce annother tactic, [[intro.]] [[Intro A.]], introduces an assumption with name [A] to the proof.
Now lets learn a symbol: [forall].
When [forall] or the propretis of [forall] is part of the proof, you can use [[Intro.]] to introduce a tactic
*)
Lemma forall_expample: forall A, A.
Proof.
  intro a.
Abort.
(**
Pink Diamond: [->] is similar to [forall], for they introduce an argument.

Pearl: This means is that in order to solve a [->] proof, you must use [[intro.]] In order to simplify it. Now its your turn.
*)
Lemma implication: forall A, A->A.
Proof.
  intro a.
Admitted.

(**
Pearl: Now lets learn a symbol: [/\], [\/].

Pink: Some symbol definitions are a bit unthodox. Like what we saw for [forall]

Pearl: [/\] is for [and] and [\/] is for [or]

If [\/] is in the proof, there are two tactics you can prove it:

[[left.]], changes it for the left side of the or proof.
[[right.]], changes it for the left side of the or proof.

*)
Lemma and_left_example (a b:Prop): a\/b.
Proof.
  left.
Abort.

Lemma and_right_example (a b:Prop): a\/b.
Proof.
  right.
Abort.

(**
Pearl: For [/\] its different. You must use the [[constructor.]] tactic to split the [/\] proof into two seperate proofs.

Pink diamond: When trying to focus on one singular proof, you must use the [-] to prove the proof until you close the proof. However, it cant be nested.
[[constructor.]] can also work for [/\].


*)
Lemma and_proof (a b:Prop): a/\b.
Proof.
  constructor.
Abort.

(** Pearl: now lets see our final symbol [~] or not. [~] is the opposite of the proof. In order to prove prove [~], you can use [[contradiction.]] 
If a assumption have the form of True statement and the form of [~True] statement or False statement then [[contradiction.]] will close the goal.
*)

Lemma Not_proof (a b:Prop) (c:a)(d:~a): b.
Proof.
  contradiction.
Qed.
(** Pink Diamond: So with all that said i need your help, can you please try and help me prove this proof.*)

Lemma final_pink_proof (a b c:Prop): forall d:~c, (a->a\/b)/\(b->a\/b)/\(c->c).
Proof.

Admitted.
(** Pink Diamond: Thank you so much, happy theorem proving! 

There you leave pink diamond's palace.
*)


