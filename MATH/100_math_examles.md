
As of \today

\tableofcontents

file <- "/home/jim/code/publish_project/MATH/100_math_examles.md"

PURPOSE:	Collect examples of math/latex here:  vectors, equations, align,
symbols etc.

<!--	This is comment to pandoc

%  comment in .tex, but not comment to pandoc

-->

This is markdown file.
Using print_pdf.sh %  out.pdf   pandoc will produce .pdf files with appropriate
latex packages.

use of grave symbol:  
$`single quote'$   
$``double quote''$

$\mathbb{R}$

```{latex}
in latex:
$\$10.25$
``` 
$\$10.25$



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


