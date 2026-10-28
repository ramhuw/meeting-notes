#import "../template.typ": *

= Local Base Change for $GL_2$

+ Let $F$ be a non-archimedean local field and $E$ a cyclic extension of degree $n$. Choose a generator $sigma in Gal(E slash F)$.

+ Let $(Pi, V)$ be an irreducible complex representation of $GL_2(E)$, define $Pi^sigma (g) = Pi(sigma g)$, and $Pi$ is said to be *$sigma$-stable* if $Pi^sigma tilde.equiv Pi$. $sigma$-stable is equivalent to the existence of an operator
$
  I_sigma: V arrow V, quad I_sigma Pi(g) I_sigma^(-1) = Pi(sigma g), quad forall g in GL_2(E).
$
This $I_sigma$ is defined up to a scalar: if $I_sigma'$ is another such operator, then $I_sigma'^(-1) I_sigma$ is an automorphism of $(Pi, V)$, and we may apply Schur's lemma. We immediately see that
$
  I_sigma^n Pi(g) I_sigma^(-1) = Pi(sigma^n g) = Pi(g)
$
and $I_sigma^n$ is a scalar. We may normalize $I_sigma$ so that $I_sigma^n = 1$.
3. Let $(pi, V)$ be an irreducible complex smooth representation of $GL_2(F)$. A *test function* on $GL_2(F)$ is a complex-valued locally constant function with compact support. Define
$
  pi(f) v = integral_(GL_2(F)) f(g) pi(g) v dd g
$
This $pi(f)$ is a operator $V arrow V$ with finite rank, so $tr pi(f)$ is well-defined. It is known that there is a function $Theta_pi$ on $GL_2(F)$ such that
- It is locally constant
- It is constant on conjugacy classes
- $tr pi(f) = integral_G f(g) Theta_pi(g) dd g$ for all test function $f$.

This $Theta_pi$ is called the *character* of $pi$. If $pi_1, pi_2$ are both irreducible and $Theta_pi_1 = Theta_pi_2$ then $pi_1 tilde.equiv pi_2$.

4. For $g in GL_2(E)$ define
$
  cal(N)(g) = g sigma(g) sigma^2(g) dots.c sigma^(n-1)(g)
$
Note that
$
  sigma(cal(N)g) = sigma(g) dots.c sigma^(n-1)(g) dot.c g = g^(-1) (cal(N)g) g
$
in other words, $sigma$ fixes the characteristic polynomial of $cal(N)g$ and thus this polynomial is defined over $F$. $g in GL_2(E)$ is said to be $sigma$-regular if $cal(N)g$ has distince eigenvalues.

5. The *twisted character*. There is a function $Theta_(Pi, sigma)$ on $GL_2(E)$ defined for $sigma$-regular $g$ such that it is locally constant, and
$
  tr(Pi(f) I_sigma) = integral_(GL_2(E)) f(g) Theta_(Pi, sigma)(g) dd g.
$

6. Local base change. For $E slash F$ cyclic with generator $sigma$, $pi$ an irreducible representation of $GL_2(F)$, $Pi$ an irreducible $sigma$-stable representation of $GL_2(E)$, this $Pi$ is the base change of $pi$ if
$
  Theta_(Pi, sigma)(g) = Theta_pi (cal(N)g)
$
for all $sigma$-regular $g in GL_2(E)$ (for some choice of $I_sigma$).

7. For non-cyclic extension, since it is always solvable, we can obtain base change by a tower of cyclic extensions.

8. The local base change for $ind_(B(F))^(GL_2(F))(un(q^(1/2) beta_1) times.o un(q^(-1/2)beta_2))$ has an obvious candidate
$
  ind_(B(E))^(GL_2(E)) (un(q^(f/2) beta_1^f) times.o un(q^(-f/2)beta_2^f))
$
This is clear if we pass to the Galois side, but needs some computation if using the above construction.

= Hecke Algebra Pull-back

Let $F$ be a non-archimedean local field with uniformizer $pi.alt$ and residue field size $q$. $tilde(F) slash F$ a finite unramified extension of degree $n$. $G = GL_n (F), tilde(G) = GL_n (tilde(F)), K = GL_n (cal(O)_F), tilde(F) = GL_N (cal(O)_(tilde(F)))$, $cal(H)_F, cal(H)_(tilde(F))$ the spherical Hecke algebras. The Satake parameter $z_pi$ is the unique tuple in $(CC^times)^n$ up to permutation such that
$
  chi_pi (f) = (cal(S)_F f) (z_pi)
$
where $cal(S)_F: cal(H)_F tilde.equiv CC[t_1^(plus.minus 1), t_2^(plus.minus 1)]^(S_2) = CC[t, r^(plus.minus 1)], t = t_1 + t_2, r = t_1 t_2$. Note that $cal(H)_(tilde(F))$ is isomorphic to the same ring, and $t_i mapsto t_i^n$ gives a homomorphism $cal(H)_(tilde(F)) arrow cal(H)_F$.

Thus if $pi$ is a spherical representation of $G$, pull-back along this Heck algebra homomorphism gives a Hecke character on $cal(H)_tilde(F)$. For pull-back Hecke character, $t$ acts by $t(z_1 + z_2, z_1 z_2) = z_1^n + z_2^n$ and $r$ acts by $(z_1 z_2)^n$.

If the Hecke module is non-zero, there is a corresponding principal series (or irreducible quotient), and if we pass it through the Galois side, restriction, and back, it is straight-forward to see that the Satake parameter is $z_pi^n$. And thus the two description of local base change coincide.
