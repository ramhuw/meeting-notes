#import "../template.typ":*

= Nov 10

Let $G = GL_n (F)$ and $G^rss$ the subset with distinct eigenvalues. This is an open subset since its complement is the zero locus of the discriminant of characteristic polynomial.

Assume $(pi, V)$ is an irreducible smooth admissible $G$ representation of finite length. For a compact open subgroup $K$, write
$
  e_K = frac(bold(1)_K, vol(K)), quad P_K = pi(e_K)
$
this $P_K$ is a projection onto $V^K$. 
$
  Theta_pi (frac(bold(1)_(gamma K), vol(K))) = tr(pi(gamma) P_K)
$

Harish-Chandra proved that for each $gamma in G^rss$ there is an open neighborhood $U subset G^rss$ and a compact open subgroup $J$ such that $forall f$ s.t. $supp(f) subset U$ we have
$
  Theta_pi (f) = tr (pi(f) P_J).
$

1. Choose a compact open subgroup $K_0 subset J$ small so that $gamma K_0 subset U$. If $K subset K_0$, we have
$
  Theta_pi (frac(bold(1)_(gamma K), vol(K))) &= tr(pi(gamma) P_K P_J)\
  &= tr(pi(gamma) P_J)
$
and the same equality holds for $K_0$, thus
$
  Theta_pi (frac(bold(1)_(gamma K), vol(K))) = Theta_pi (frac(bold(1)_(gamma K_0), vol(K_0))).
$

2. Similar calculation shows that $theta_pi$ is independent of $K_0$. Now for $y = gamma k, k in K_0$, we have
$
  y K_0 = gamma K_0 subset U
$
and
$
  theta_pi(y) &= tr (pi(y) P_J)\
  &= tr(pi(gamma) pi(k) P_J)\
  &= tr(pi(gamma) P_J)\
  &= theta_pi (gamma)
$
thus $theta_pi$ is constant on $gamma K_0$.

3. $f$ is locally constant, and we write
$
  f = sum_(i=1)^m a_i bold(1)_(x_i K)
$
where $K$ is some small compact open set.
$
  Theta_pi (f) &= sum_i a_i Theta_pi (bold(1)_(x_i K))\
  &= sum_i a_i vol(K) theta_pi (x_i)\
  &= integral_(G^rss) f(g) theta_pi (g) dd g
$