\NeedsTeXFormat{LaTeX2e}

% Article class
\LoadClass{article}

% Packages
\RequirePackage{amsmath}
% --
\RequirePackage{ifthen}
\RequirePackage{xkeyval}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[T1]{fontenc} % font types and character verification
\RequirePackage[UKenglish]{babel}
\RequirePackage[UKenglish]{isodate}
\RequirePackage[utf8]{inputenc}
\RequirePackage{xparse}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{longtable}
\RequirePackage{blindtext}
\RequirePackage{parskip}
\RequirePackage{setspace}
\RequirePackage[margin=1.5in]{geometry}
\RequirePackage{courier}

\usepackage{titlesec}
\usepackage{datetime2}

\@ifclasswith{lincolncsreport}{txfonts}{\usepackage{txfonts}}{}
\@ifclasswith{lincolncsreport}{sans}{\renewcommand{\familydefault}{\sfdefault}}{}
\@ifclasswith{lincolncsreport}{helvetica}{\usepackage{helvet}}{}
\@ifclasswith{lincolncsreport}{fira}{\usepackage{FiraSans} \usepackage{newtxsf}}{}
\@ifclasswith{lincolncsreport}{roboto}{\usepackage{roboto}}{}
\@ifclasswith{lincolncsreport}{gentium}{\usepackage{gentium}}{}
\@ifclasswith{lincolncsreport}{sourceserif}{\usepackage[default,regular]{sourceserifpro}}{}
\@ifclasswith{lincolncsreport}{stix}{\usepackage{stix}}{}
\@ifclasswith{lincolncsreport}{garamond}{\usepackage[cmintegrals,cmbraces]{newtxmath} \usepackage{ebgaramond-maths}}{}
\@ifclasswith{lincolncsreport}{sourcesans}{\usepackage[default]{sourcesanspro}}{}



\onehalfspacing

\newcommand{\monthyeardate}{%
  \DTMenglishmonthname{\@dtm@month} \@dtm@year
}

\newcommand{\yeardate}{%
  \@dtm@year
}

  
  
  

% pre definitions
\def\@schoolname{School of Computer Science}
\def\@collegename{College of Science}
\def\@universityname{University of Lincoln}

  
\newcommand{\makeTOC}{
    \pagenumbering{roman}
    \renewcommand{\contentsname}{Report Contents}
    \tableofcontents
    \newpage
    \pagenumbering{arabic}
}

% headers and stuff
\newcommand{\makeTitlePage}{

\begin{titlepage}

    \makeatletter
    \centering{\huge \@title\par} \vspace{1.5cm}
    
    \includegraphics[height=1.5in]{logo}\par \\
    
    \vspace{1.5cm}
    {\Large \@author \par}\vspace{0.45cm}
    {\normalsize \@schoolname \\ \vspace{0.25cm} \\ \@universityname \par}
    
    \vspace{5cm}
    {\normalsize\emshape \monthyeardate \par}
    
\end{titlepage}

    \setlength{\abovedisplayskip}{0.75em}
    \setlength{\belowdisplayskip}{2em}
\pagenumbering{arabic}
} 


\newcommand{\makeTitlePageAlt}{
\pagenumbering{roman}
\begin{titlepage}
    \makeatletter
    \centering\includegraphics[height=1.5in]{logo}\par\vspace{3cm} 
    {\huge \@title\par}
    \vspace{0.25cm}
    {\Large \@author \par}\vspace{0.45cm}
    {\normalsize \@schoolname \\ \vspace{0.25cm} \\ \@universityname \par}
    
    \vspace{5cm}
    {\normalsize\emshape \monthyeardate \par}
    
    \setlength{\abovedisplayskip}{0.75em}
    \setlength{\belowdisplayskip}{2em}
\pagenumbering{arabic}
\end{titlepage}
} 


% --
%\usepackage{txfonts}
%\usepackage[T1]{fontenc}


  
\titleformat{\section}
  {\huge\bfseries}{\thesection}{1em}{\vspace{0.5em}}
  

 %\renewcommand{\thesection}{\thechapter\arabic{section}.}