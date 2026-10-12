#import "../template.typ": *

= Oct 1, 2026


== A Map Between $cal(H)_E$ and $cal(H)_F$

Let $G = GL_n$ over a non-archimedean local field $F$, and $E$ a finite separable unramified extension of $F$. The $L$-group of $G$ is $attach(G, tl: L) colon.eq hat(G)(CC) times Gal_F$. Since $G$ already splits, the action of $Gal_F$ is trivial on $hat(G)(CC)$ and the product is direct. The Satake isomorphism and Chevalley restriction theorem gives that
$
  cal(H)_F tilde.equiv cal(O)(hat(G))^(hat(G)) tilde.equiv cal(O)(hat(G) times Fr_F)^(hat(G)).
$

Define $overline(G) eq.colon Res_(E slash F) (G times_(Spec F) Spec E)$, we know
$ hat(overline(G)) tilde.equiv product_(Gal_F slash Gal_E) hat(G). $ The $L$-group is
$
  attach(overline(G), tl: L) colon.eq hat(overline(G)) times.r Gal_F.
$
If $overline(G)$ is unramified, i.e. it splits through an unramified extension of $F$, then
$
  cal(H)_E tilde.equiv cal(O)(hat(overline(G)) times.r Fr_F)^(hat(overline(G))).
$
The diagonal embedding map $hat(G) arrow hat(overline(G))$ induces a map $cal(H)_E arrow cal(H)_F$.

== Smooth representation of $GL_n (F)$ and Hecke characters.
#theorem()[Let $(pi, V)$ be a smooth irreducible representation of $G colon.eq GL_n (F)$ with $V^K eq.not {0}$, then $dim V^(K) = 1$ where $K colon.eq GL_n (cal(O)_F)$.]
#proof[
  The commutative Hecke algebra $cal(H)_F$ acts on $pi$, and $V^K$ is a simple $cal(H)_F$-module: the action is given by
  $
    pi(f) v = integral_G f(g) pi(g) v dd g, quad f in cal(H)_F, v in pi.
  $
  where smoothness implies that this integral is a finite sum, thus well-defined. To see it is simple, assume $0 eq.not W subset.eq V^K$ is a $cal(H)_F$-submodule. Since $pi$ is a irreducible $G$-module, we have $ pi = span{pi(g)w | g in G, w in W}, $thus for any $v in pi^K$ we can write
  $
    v = sum_i pi(g_i) w_i, quad g_i in G, w_i in W.
  $
  Choose the Haar measure on $G$ such that $vol(K) = 1$. Since the stablizer $K_v subset.eq K$ of $v$ is open, $K slash K_v$ is finite and
  $
    K = union.sq.big_(i = 1)^n k_i K_v,
  $
  the map $k mapsto pi(k)v$ is constant on each $k_i K_v$, and $vol(K_v) = 1/n$. Consider the integral
  $
    integral_K pi(k) v dd k & = sum_(i = 0)^n 1/n pi(k_i)v.
  $
  Remember we chose $v in V^K$, thus the above sum is equal to $v$. Meanwhile
  $
    integral_K pi(k) v dd k & = sum_i integral_K pi(k g_i) w_i dd k \
                            & = sum_i integral_K pi(k g_i) dd k integral_K pi(k') w_i dd k' \
                            & = sum_i integral_K integral_K pi(k g_i k') w_i dd k' dd k.
  $
  Write $ e: V arrow V, v mapsto integral_K pi(k) v dd k $ and the above result can be rewritten as
  $
    v = sum_i e pi(g_i) e dot v
  $
  this operator $e pi(g_i) e$ is bi-$K$-invariant, and has a natural link to the Hecke algebra: it is up to a multiplicative scalar equal to $pi(bold(1)_(K g_i K))$, therefore $e pi(g_i) e w_i in W$ and $v in W$, we conclude that $W = V^K$. As a simple module over a commutative ring, we conclude that $dim V^K = 1$.
]

#theorem[
  Let $(pi_1, V_1), (pi_2, V_2)$ be irreducible smooth representations of $G$ and $V_1^K eq.not {0}, V_2^K eq.not {0}, V_1^K tilde.equiv V_1^K$ as $cal(H)_F$ modules, then $(V_1, pi_1) tilde.equiv (V_2, pi_2)$.
]
#proof[
  Choose $v_1 in V_1, v_2 in V_2$ both non-zero, we have
  $
    V_i = span{pi_i (g) v_i | g in G}
  $
  so it makes sense to define a map $phi: V_1 arrow V_2, v_1 mapsto v_2$. We need the map to be compatible with $G$-action, i.e.
  $
    phi(pi_1(g) v_1) = pi_2(g) v_2
  $
  and if $x = sum_j a_j pi_1(g_j) v_1$, we need $phi(x) = sum_j a_j pi_2(g_j) v_2$. We need to show that the map is independent of the expression $sum_j a_j pi_1(g_j) v_1$ chosen.
  Choose $ell^i in (V_i^*)^K$ such that $ell^i (v_i) = 1$ (so that $ell^1$ is the image of $ell^2$ under the pull-back map $(V_2^*)^K arrow (V_1^*)^K$), and define
  $
    phi.alt_i (g) = ell^i (pi_i (g) v_i).
  $
  By showing $phi.alt_1(g) = phi.alt_2(g), forall g in G$ we will be able to deduce
  $
    sum_j a_j pi_1(g_j) v_1 = 0 arrow.double sum_j a_j pi_2(g_j) v_2.
  $
  Define for each $g in G$
  $
    f_g = bold(1)_(K g K) in cal(H)_F
  $
  unfold the equality
  $
    ell^1(pi_1(f_g)v_1) = ell^2(pi_2(f_g) v_2)
  $
  we have
  $
    ell^i (pi_i (f_g) v_i) & = integral_(K g K) phi.alt_i (h) dd h ,
  $
  but $phi.alt_i$ is constant on $K g K$:
  $
    phi.alt_i (k_1 g k_2) & = ell^i (pi_i (k_1 g k_2) v_i) \
                          & = ell^i (pi_i (k_1) pi_i (g) v_i) \
                          & = ell^i (pi_i (g) v_i) \
                          & = phi.alt_i(g)
  $
  thus the above integral is just $vol(K g K) phi.alt_i (g)$. Hence $phi.alt_1 = phi.alt_2$.

  Now that the map is well-defined, it is an isomorphism by Schur's lemma.
]

#theorem()[
  Given a Hecke character $(lambda, W tilde.equiv CC)$, there is a smooth $G$ representation $(pi, V)$ such that $V^K eq.not {0}$.
]
#proof()[
  Define $X$ to be the space of compactly supported functions $K backslash G arrow CC$ where $K backslash G$ has the discrete topology, so in other words finitely supported functions. The group $G$ acts by right translation
  $
    (pi(g) f) (x) = f(x g).
  $
  Clearly $X^K tilde.equiv cal(H)_F$. This $X$ is a $cal(H)_F$-module where $cal(H)_F$ acts by left convolution. Define
  $
    X_lambda colon.eq X times.o_(cal(H)_F) V
  $
  and it has a $G$-action by acting on $X$. Inside $X_lambda$ we have
  $
    (f * bold(1)_K) times.o 1 - bold(1)_K times.o lambda(f) = 0.
  $
  or if we write $w = bold(1)_K times.o 1$ then
  $
    f w = lambda(f) w.
  $
  We have $X_lambda^K = span{w} tilde.equiv W$ as Hecke characters, but $X_lambda$ itself might not be irreducible, so we need to find a proper maximal $G$-submodule $M$ and take $V colon.eq X_lambda slash M$. Since $w$ generates $X_lambda$, no proper submodule contains $w$ and we are done.
]

#example(title: "Principal Series")[
  Let $chi_1, chi_2: F^times arrow CC^times$ be smooth characters, they define a smooth character
  $
    chi_1 times.o chi_2: mat(a, b; 0, d) mapsto chi_1(a) chi_2(d)
  $
  of the subgroup
  $
    B = {mat(a, b; 0, d) | a, d in F^times, b in F}.
  $
  The induced representation
  $
    I(chi_1, chi_2) colon.eq Ind_B^G (chi_1 times.o chi_2)
  $
  of $G$ is called a *Principal series*. (To be continued...)
]
