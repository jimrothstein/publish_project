\footnotesize
As of \today

\tableofcontents

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\par
%			PURPOSE:	Very basic probability/Bayesian features in LATEX.\par
%
%			file <- "210_bayes_summary.md"\par
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\par

:::TODO:::  

-	set matrix A equal to matrix B, in equation.  
-	in math mode double /  ends the line  
- in non-math mode us p a r  
-	under Event Space add to 2nd line `first flip is H`  
- short text needs to be verbatum  
-	powerset  

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

A = Event\
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

A = event article uses !\par
B = event article is fake

Join probability\par
$$P(A \cap B)$$

$$
	\begin{matrix}
	44 & 88\\
	16 & 2 
	\end{matrix}
$$

Or as a proportion of total:
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

Using Bayes, 
\begin{equation}
	P(F \mid E) = \frac{P(E \mid F) P(F)}{P(F)}
\end{equation}

\begin{equation}
	=	\frac{ \frac{16}{60} .4}{\frac{18}{150} }
\end{equation}

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
**Using Bayes, **

\begin{equation}
	P(F \mid E) = \frac{P(E \mid F) P(F)}{P(F)}
\end{equation}
\begin{equation}
	P(F \mid E) = \frac{P(E \mid F) P(F)}
\end{equation}

vim:linebreak:nospell:nowrap:cul ft=tex tw=78 fo=ntl foldcolumn=3 cc=+1
