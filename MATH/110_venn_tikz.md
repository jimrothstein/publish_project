
\def\firstcircle{(0,0) circle (3cm)}
\def\secondcircle{(0,0) circle (1cm)}
\colorlet{circle edge}{black!100}
\colorlet{circle area}{black!0}
\tikzset{filled/.style={fill=circle area, draw=circle edge, thick}, outline/.style={draw=circle edge, thick}}

\setlength{\parskip}{5mm}
\begin{tikzpicture}
    \draw[outline] \firstcircle node {3.4};
    \draw (0,0.25) -- ++(5,2.5) node [fill=white] {Patient Contact};
    \draw[outline] \secondcircle node {};
    \draw (0,-1.75) -- ++(5,2.5) node [fill=white] {Environment Contact};
    \node at (0,-2) (nodeA) {5.1};
\end{tikzpicture}
