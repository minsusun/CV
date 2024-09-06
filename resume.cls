\ProvidesClass{resume}[RESUME]

\LoadClass[11pt,letterpaper]{article}

\usepackage[left=1.0cm,top=1.2cm,right=1.0cm,bottom=1.2cm]{geometry}
\usepackage[parfill]{parskip}

\usepackage{lmodern}

\pagestyle{empty}

\def \name#1{\def\@name{#1}}
\def \@name {}

\def \printname {
  \begingroup
    \hfil{\namestyle\namesize \@name}\hfil
    \nameskip\break
  \endgroup
}

\def \email#1{\def\@email{#1}}
\def \@email {}

\def \printcontact{
  \begingroup
    \centerline{\emailstyle \@email}
  \endgroup
}

\let\old@document=\document
\renewcommand{\document}{
  \old@document
  \printname
  \printcontact
}

\newenvironment{rSection}[1]{
  \sectionskipbefore
  {\bfseries #1}
  \sectionskipafter
  \hrule
  \begin{list}{}{
    \setlength{\leftmargin}{1.5em}
  }
  \item[]
}{
  \end{list}
}

\newenvironment{rSubsection}[2]{
  {\bfseries #1} \hfill {\it #2}
  \begin{list}{--}{
    \setlength{\leftmargin}{1.5em}
    \setlength{\rightmargin}{1.5em}
  }
  \itemsep -0.5em \vspace{-0.5em}
  \item[]
}{
  \end{list}
  \vspace{0.2em}
}

\def\namestyle{\bfseries}
\def\namesize{\huge}
\def\nameskip{\bigskip}
\def\emailstyle{\ttfamily}
\def\sectionskipbefore{\medskip}
\def\sectionskipafter{\medskip}
\def\sectionskip{\medskip}