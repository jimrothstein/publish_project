\footnotesize
As of \today

\tableofcontents

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% \
%			PURPOSE:	Very basic probability/Bayesian features in LATEX. \
%
%			file <- "210_bayes_summary.md" \
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% \

```markdown
-	tabular fails

---


###	Attempt for Tables

```.latex
tabular

\begin{tabular}{l*{6}{c}r}
Team              & P & W & D & L & F  & A & Pts \\
\hline
Manchester United & 6 & 4 & 0 & 2 & 10 & 5 & 12  \\
Celtic            & 6 & 3 & 0 & 3 &  8 & 9 &  9  \\
Benfica           & 6 & 2 & 1 & 3 &  7 & 8 &  7  \\
FC Copenhagen     & 6 & 2 & 1 & 3 &  5 & 8 &  7  \\
\end{tabular}
```

$$
\begin{tabular}{l*{6}{c}r}
Team              & P & W & D & L & F  & A & Pts \\
\hline
Manchester United & 6 & 4 & 0 & 2 & 10 & 5 & 12  \\
Celtic            & 6 & 3 & 0 & 3 &  8 & 9 &  9  \\
Benfica           & 6 & 2 & 1 & 3 &  7 & 8 &  7  \\
FC Copenhagen     & 6 & 2 & 1 & 3 &  5 & 8 &  7  \\
\end{tabular}
$$

---

\begin{tabular}{l l l | l}
News			& Fake & Real & Total \\
\hline
-!				& 44 & 88 & 132 \\
!		      & 16 & 2  &  18 \\
\hline
Total		 &	60 & 90 & 150 \\
\end{tabular}

---

###	matrix

$$
	\begin{matrix}
	44 & 88\\
	16 & 2 
	\end{matrix}
$$

Or as a proportion of total: \

---

$$
	\begin{matrix}
		\frac{44}{150} & \frac{88}{150}\\
		\frac{16}{ 150 } & \frac{2}{150}
	\end{matrix}
$$

$$
	\begin{matrix}
		\frac{44}{150} & \frac{88}{150}\\
		\frac{16}{ 150 } & \frac{2}{150}
	\end{matrix}
$$

---


####			LEGACY

:::TODO:::  

%  comment in .tex, but not comment to pandoc - WILL appear in .pdf

<!--	This is comment to pandoc and will NOT appear in .pdf

%  comment in .tex, but not comment to pandoc

-->

###	Sample Space
All possible outcomes from 1 experiment.

Ex: toss 2 coins
S = {HH,HT, TH, TT}

###	Event Space
This actually a bit more complicated:
\begin{equation}
	E_1 = {H} \\
	E_2 = {HH, HT}   
\end{equation}


In general, E subset of powerset (S)
````{.latex}
$X \in \mathcal{P}(A)$
````

$$X \in \mathcal{P}(A)$$

|number of elments | = $2^k$

###	Bayes Rule:

A = Event
B = Event

$$P(A \mid  B) = \frac{P(B \mid A) P(A)} {P(B)}$$

Joint Probability:
$$P(A \cap B)$$

Conditional:
$$P(A \mid B)$$

Law of Total Probability:
$$P(A) = \sum_{i=1}^n P(A \mid B_i)P(B_i)$$


### Likelihood
Given a result, data or observation, the liklihood functions allows to compare different
models or model parameters.

$$L( \theta \mid y=1)	$$

Often probability of event B, $P(B)$ is unknown, but we do have information about another event A and its affect on B.
$P(B | A=known)$

We can try to learn something from $P(B \mid A)$ by treating B as a variable
and trying to construct a function to compare different values of A. $f_A(B)$  In words, given event A what is
llikelihood of B

$$L(A | B= unknown) = P(B=unknown | A)$$


### Fake or Real News ?

Suppose we examine $N=150$ news articles and record the following information:

A = event article uses ! (*exclaimation mark*) \
B = event article is fake

Join probability \
$$P(A \cap B)$$


Using Bayes, \
\begin{equation}
	P(F \mid E) = \frac{P(E \mid F) P(F)}{P(F)}
\end{equation}

$$=	\frac{ \frac{16}{60} .4}{\frac{18}{150} }$$

	Prior(fake) was 0.4
	Posterior(fake) = P(fake | !) = 90%

In decimal form:

$$
	\begin{matrix}
	\frac{44}{150} & \frac{88}{150}\\
	\frac{16}{ 150 } & \frac{2}{150}
	\end{matrix}
$$


In Bayes, uncertain means we do not know its distribution and trying to model
this.


From the data we can observe marginal probabilities:

$$P(fake) = \frac{60}{150}  0.4$$

$$P(real) = 1 - P(fake)  0.6$$

The problems asks us to find P (fake |  \!)

<!--
-->
