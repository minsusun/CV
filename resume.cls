\ProvidesClass{resume}[RESUME]

\LoadClass[11pt,letterpaper]{article}

\usepackage[left=1.0cm,top=1.2cm,right=1.0cm,bottom=1.2cm]{geometry}
\usepackage[parfill]{parskip}

\usepackage{lmodern}

\usepackage{fontspec}

\usepackage{kotex}

\pagestyle{empty}

\setmainfont{Noto Sans}[UprightFont=* Light, BoldFont=* SemiBold]

\setmainhangulfont{Noto Sans CJK KR}[
  UprightFont=* Light, BoldFont=* Bold,
  Script=Hangul, Language=Korean, AutoFakeSlant,
]
\setsanshangulfont{Noto Sans CJK KR}[
  UprightFont=* DemiLight, BoldFont=* Medium,
  Script=Hangul, Language=Korean
]
\setmathhangulfont{Noto Sans CJK KR}[
  SizeFeatures={
    {Size=-6,  Font=* Medium},
    {Size=6-9, Font=*},
    {Size=9-,  Font=* DemiLight},
  },
  Script=Hangul, Language=Korean
]

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
  {\bfseries #1} \hfill {\small\it #2}
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