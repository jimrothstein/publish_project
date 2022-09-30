
Turn on lsp/latex by using `ft=tex` on bottom vim line

### Probability

Power Set: \ 
$$X \in \mathcal{P}(A)$$

|number of elments | = $2^k$

#### union/intersection
$$A \cup B$$ 
$$ \cup_{i=1}^{n}A_{i} $$
$$ \bigcup_{i=1}^{n}A_{i} $$

$$A \cap B$$
$$ \bigcap_{i=1}^{n}A_{i} $$

 
$$ N_h = N * P(H) $$

$$	P(A \mid B)$$



Let $\pi \in [0,1]$ be a random variable.
Then function $f(\pi)$ is probability density function (pdf) if

$$f(\pi) >0    \hspace{10pt} \forall \pi$$

(write P (a-b))
$$\int_\pi f = 1 $$



One model for pdf   of f is **Beta**
which often used in **conjugacy** (same family of distributions for both prior
and posterior,  with only parameters varying)

###	Bayes	

Let A, B be set of events, such that 
$$	A \cap B \neq \emptyset$$
Joint probability: $$P(A \cap B) = P(A \hspace{10pt} and \hspace{10pt} B)$$
Conditional probability (show!) $$P(B \lvert A) = \frac{P(A \cap B)}{P(A)}$$
Bayes Thm (show!) 
$$ P(B \lvert A) = \frac{P(A \lvert B)P(B)}{P(A)}$$


If D respresents data, and $\theta$ an unknown parameter in our model (ie
hypothesis):
$$p(\theta | D) = \frac{p(D|\theta) p(\theta)} {p(D)}$$



vim:linebreak:nospell:nowrap:cul tw=78 fo=ntl foldcolumn=3 cc=+1 ft=tex

