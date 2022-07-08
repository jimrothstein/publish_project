As of \today

\tableofcontents


file <- "/home/jim/code/publish_project/MATH/100_math_examles.md"

```	
PURPOSE:	Collect examples of math/latex here:  vectors, equations, align,
symbols etc.
```

<!--	This is comment to pandoc

%  comment in .tex, but not comment to pandoc

-->


This is markdown file.
Using print_pdf.sh %  out.pdf   pandoc will produce .pdf files with appropriate
latex packages.

use of grave symbol:  
$`single quote'$   
$``double quote''$


```{latex}
in latex:
$\$10.25$
``` 
$\$10.25$

$$
x=\begin{cases}
	0&	\text{if x odd}, \\
	1&	\text{if x even}.
	\end{cases}
$$

Let V be vector space and B be basis.

$$	\vec{p} $$

dot product

    $$ \vec{p}\cdot\vec{q}=|\vec{p}|\vec{q}|cos\theta $$

magnitude
$$ \left| \vec{a} \right| $$

unit vector
$$ \hat{a}=\frac{\vec{a}}{\left | \vec{a} \right |} $$

matrix:

$$
  \begin{matrix}
    a & b\\
    c & d 
  \end{matrix}
$$

matrix with subscripts
$$
  \begin{matrix}
    a_{11} & a_{12}\\ 
    a_{21} & a_{22}
  \end{matrix}
$$

matrix with square brackets (bmatrix)
\begin{equation}\label{m1}
\begin{bmatrix}
     1\\ 
     0\\
     0 
\end{bmatrix}
\end{equation}


matrix with dots ...

\begin{equation}
 \begin{bmatrix} 
   a_{1} \\ \vdots \\ a_{n} 
\end{bmatrix}
\end{equation}

\begin{equation}\label{m2}
\begin{bmatrix}
     a_{11} & a_{12} & a_{13}\\ 
     a_{21} & a_{22} & a_{23}\\
     a_{31} & a_{32} & a_{33} 
\end{bmatrix}
\end{equation}


As we can see from eqn ~\eqref{m1} and ~\eqref{m2} ...

#### align equal signs
\begin{align}
y=x^2 \\
z=y^2
\end{align}


#### align left
\noindent A

<!--
%	alternatives did NOT work:
%	flalign
% flushleft
% & as first char
-->
\begin{align}
y=x^2 \\
z=y^2
\end{align}

\begin{alignat}{2}
A &= B & &= C \\
D &= E & &= F
\end{alignat}

\begin{align}
  x-1 &= y \\
  x &= y+1
\end{align}

Still centered, but note alignment has changed.
\begin{flalign}
  &x-1 = y \\
  &x = y+1
\end{flalign}

```` {.latex}
inline
 $\frac{n!}{k!(n-k)!} = \binom{n}{k}$
````

$\frac{n!}{k!(n-k)!} = \binom{n}{k}$

### Independent Samples

$$\mu_{\bar{x_{1}} - \bar{x_{2}}} = \mu_{1} - \mu_{2}$$

$$\sigma_{\bar{x_{1}} - \bar{x_{2}}}^2 = \frac {\sigma_{1}^2}{n_{1}} + \frac{\sigma_{2}^2}{n_{2}}$$

$$\mu_{\hat{p}_{1} - \hat{p}_{2}} = p_{1} - p_{2}$$

$$\sigma_{\hat{p}_{1} - \hat{p}_{2}}^2 = \frac {p_{1}(1 - p_{1})}{n_{1}} + \frac {p_{2}(1 - p_{2})}{n_{2}}$$

$$
\underbrace{\overbrace{a+b+c}^6 \\
	\cdot \overbrace{d+e+f}^7} 
	_ \text{some words}= 42
$$


$\mathbb{R}$

$\mathbf{abc}$
$\mathit{abc}$





### Example of newcommand

\newcommand{\vect}[1]{\text{short cut to say vector}}
\vect{v}


<!--
% Wrong:		$\newcommand{\vect}[1]{\mathbf{#1}}$

###	Wrong:  Example of DeclareMathOperator

$\E$
-->

:::	REF:  see Michelle videos
::: latex ignores, but prints the line.

\LaTeX\

%  SOFT vs HARD return

This is one line.  \\
That was a soft return, which is  why this is NOT a new paragraph. And outdent
is because it second line of paragraph.


%       HARD
But this is also one line.
That was hard return.  Difference?


\begin{center}
$$\sqrt{2}$$

% cubic root
$$\sqrt[3]{2}$$

$$\ln x$$

% not working with lualatex 
%        $$2\frac{1}{x^2+1}$$
        
% make bigger, error
% $$2\left(\frac{1}{x^2+1})\right$$

%        $$\left\angle{v}\right\angle$$

\end{center}

\newpage

### Probability

$$X \in \mathcal{P}(A)$$

|number of elments | = $2^k$

$$A \cup B$$ 
$$ \cup_{i=1}^{n}A_{i} $$
$$ \bigcup_{i=1}^{n}A_{i} $$

$$A \cap B$$
$$ \bigcap_{i=1}^{n}A_{i} $$

 
$$ N_h = N * P(H) $$

$$	P(A \mid B)$$

$$p(\theta | D) = \frac{p(D|\theta) p(\theta)} {p(D)}$$


Let $\pi \in [0,1]$ be a random variable.
Then function f($\pi$) is probability density function (pdf) if

$$f(\pi) >0  \forall \pi$$

(write P (a-b))
$$\int_\pi f = 1 $$



One model for pdf   of f is **Beta**
which often used in **conjugacy** (same family of distributions for both prior
and posterior,  with only parameters varying)


**Using Bayes, **

\begin{equation}
	P(F \mid E) = \frac{P(E \mid F) P(F)}{P(F)}
\end{equation}

###	Binary Functions

Y is the number of successes in a fixed number of trials ($n$)

$$ Y|\pi \sim Bin(n, \pi) $$ 

$$ f(y|\pi) = \begin{pmatrix} 6 \\y \end{pmatrix} \pi^y(1 - \pi)^{6 - y} \quad for \quad  y \in \begin{Bmatrix} 0, 1, 2, 3, 4, 5, 6 \end{Bmatrix}  $$ 
We can use the prior for $\pi$ and all $y$ to calculate each probabilities. 


```` {.latex}
 latex code
 $\frac{n!}{k!(n-k)!} = \binom{n}{k}$
````

$$\frac{n!}{k!(n-k)!} = \binom{n}{k}$$
$$\binom{6}{y} \pi^y(1-\pi)^{6-y}$$

###	Align multiline equations
\begin{align*}
X &=	5 +2 + 3\\
  &=  (5+2) + 3
\end{align*}
