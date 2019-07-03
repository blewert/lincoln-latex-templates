\NeedsTeXFormat{LaTeX2e}

% Article class
\LoadClass[12pt]{report}

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
\RequirePackage{longtable}
\RequirePackage{blindtext}
\RequirePackage{parskip}
\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage{layout}
\RequirePackage{courier}
\RequirePackage{subcaption}
\RequirePackage{url}
\RequirePackage{hyperref}
\RequirePackage[table,figure]{totalcount}
\RequirePackage{appendix}
% -----------------
\RequirePackage{titlesec}
\RequirePackage{datetime2}
\RequirePackage{fancyhdr}
\RequirePackage{lmodern}




% FANCY DATE STUFF
% -----------------

\newcommand{\monthyeardate}{%
  \DTMenglishmonthname{\@dtm@month} \@dtm@year
}

\newcommand{\yeardate}{%
  \@dtm@year
}


% We're gonna be defining variables as long globals
% (because they might wanna split these up with extra lines)
\def\lxdef{\long\xdef}


% This class name
\def\@classname {lincolncsthesis}

% Another handy macro to test if there's an option
\def\ifClassOption [#1]#2 {
    \@ifclasswith{\@classname}{#1}{#2}{\empty}
}

% Another handy macro to test if there's an option + else
\def\ifClassOptionElse [#1]#2#3 {
    \@ifclasswith{\@classname}{#1}{#2}{#3}
}




% Define variables relevant to this thesis
\lxdef \@logo           {logo}
\newcommand{\thesisLogoPath}[1]{\xdef\@logo{#1}}
\lxdef \@date           {\monthyeardate}
\newcommand{\thesisSubmissionDate}[1]{\xdef\@date{#1}}
\lxdef \@degree         {Doctor of Philosophy}
\newcommand{\thesisDegree}[1]{\xdef\@degree{#1}}
\lxdef \@programme      {Computer Science}
\newcommand{\thesisProgramme}[1]{\xdef\@programme{#1}}
\lxdef \@supervisor     {Dr. Joe Bloggs}
\newcommand{\thesisSupervisor}[1]{\xdef\@supervisor{#1}}
\lxdef \@schoolname     {School of Computer Science}
\newcommand{\thesisSchool}[1]{\xdef\@schoolname{#1}}
\lxdef \@collegename    {College of Science}
\newcommand{\thesisCollege}[1]{\xdef\@collegename{#1}}
\lxdef \@universityname {University of Lincoln}
\newcommand{\thesisUniversity}[1]{\xdef\@universityname{#1}}


% START OF THESIS
% --------------

\fancypagestyle{plain}{
    \renewcommand{\headrulewidth}{0pt}%
    \fancyhf{}%
    \fancyfoot[R]{\footnotesize\textbf{\thepage}}%    
}

\newcommand{\thesisBodyStart}{

    % Clear the page so we don't number the last page
    \cleardoublepage
    
    % Set page numbering back to 1, 2, 3 .. 
    \pagenumbering{arabic}
}


% TABLE OF CONTENTS, FIGURES AND TABLES
% ---------------------------

\newcommand{\thesisTOF}{
    \iftotalfigures
        \cleardoublepage
        \listoffigures
    \fi
}

\newcommand{\thesisTOT}{
    \iftotaltables
        \cleardoublepage
        \listoftables
    \fi
}

\newcommand{\thesisTables}{
    \cleardoublepage
    \renewcommand{\contentsname}{Table of Contents}
    \setcounter{tocdepth}{3}
    {\setstretch{1.25}
        \tableofcontents
        \thesisTOF
        \thesisTOT
    }
    
    \setlength{\abovedisplayskip}{1pt}
    \setlength{\belowdisplayskip}{15pt}
}



% ABSTRACT
% -------------------------

\renewenvironment{abstract}
    {\cleardoublepage
     \chapter*{\abstractname}
    }
    {}



% ACKNOWLEDGEMENTS
% ----------------

\newenvironment{acknowledgements}
    {\cleardoublepage
     \chapter*{Acknowledgements}
    }
    {}




% AFTER TITLE PAGE BUT BEFORE THESIS CONTENT
% ------------------------------------------
\newcommand{\afterTitlePage}{

    % Set margins for the rest of the thesis. UoL guidelines 
    % state that: [left > 40mm], [others > 15mm]
    \newgeometry{
        nohead, 
        paper=a4paper,
        top=15mm,
        bottom=25mm,
        right=25mm,
        left=40mm,
        marginparwidth=0cm,
        marginparsep=0cm
    }

    % Set spacing and reset numbering
    \pagenumbering{roman}
    
    % Set page style to plain
    \pagestyle{plain}
    
    % Set double spacing (from cleanthesis.sty)
    \setstretch{1.5}
    \clubpenalty = 10000
    \widowpenalty = 10000
    \displaywidowpenalty = 10000
}









% TITLE PAGE
% -------------


% Print out submission text
\newcommand{\submissionStatement}{
    \setstretch{1.25}
    Submitted in partial satisfaction of the requirements for the \\
    Degree of \@degree \\
    in \@programme
}

% Print out supervisor
\newcommand{\printSupervisor}{
    {\footnotesize \textit{Supervisor}~\@supervisor }
}

% The default title page: title, then logo, then author
\newcommand{\@titlepage}{
    \begin{titlepage}

    % Make the title
    \makeatletter
    \centering{\LARGE \@title \par} \vspace{1.5cm}
    
    % Make the logo
    \includegraphics[height=1.5in]{\@logo}\par 
    
    % Some space, then the author, then the school and university
    % name
    \vspace{1.5cm}
    {\large \@author \par}\vspace{0.45cm}
    {\footnotesize \@schoolname \\ \vspace{0.25cm} \@collegename \\  \vspace{0.25cm}  \@universityname \par}
    
    % Some space and the submission statement
    \vspace{3cm}
    {\footnotesize \submissionStatement \par}
    
    % Print out the supervisor
    \vspace{1cm}
    \printSupervisor
    
    % Then the fancy date!
    \vspace{1cm}
    {\footnotesize \@date \par}
    
\end{titlepage}
}

\def \@altTitlePage {
    \begin{titlepage}

    
    % Make the logo
    \makeatletter
    \centering\includegraphics[height=1.5in]{\@logo}\par 
    
    % Make the title
    \vspace{2cm}
    {\LARGE \@title\par}
    
    % Some space, then the author, then the school and university
    % name
    \vspace{1.5cm}
    {\large \@author \par}\vspace{0.45cm}
    {\footnotesize \@schoolname \\ \vspace{0.25cm} \@collegename \\  \vspace{0.25cm}  \@universityname \par}
    
    % Some space and the submission statement
    \vspace{2.5cm}
    {\footnotesize \submissionStatement \par}
    
    % Print out the supervisor
    \vspace{1cm}
    \printSupervisor
    
    % Then the fancy date!
    \vspace{1cm}
    {\footnotesize \@date \par}
    
\end{titlepage}
}

\newcommand{\beforeTitlePage}{
    % Set margins for the rest of the thesis. UoL guidelines 
    % state that: [left > 40mm], [others > 15mm]
    \newgeometry{
        nohead, 
        paper=a4paper,
        top=40mm,
        bottom=25mm,
        right=30mm,
        left=30mm,
        marginparwidth=0cm,
        marginparsep=0cm
    }
}



\def \@defaultTitlePage {\@titlepage}

\RenewDocumentCommand{\maketitle}{o}{%

  \beforeTitlePage
  
  \IfNoValueTF{#1}
    {\@defaultTitlePage}
    {\ifthenelse{\equal{#1}{logo-first}}
        {\@altTitlePage}
        {\@defaultTitlePage}}
        
  \afterTitlePage
}






% TITLE / CHAPTERS / FIGURES / TITLESEC SPACING
% ---------------------------------------------

\titleformat{\chapter}[display]
{\normalfont\huge\bfseries}{\chaptertitlename\ \thechapter}{0pt}{\Huge}

\titlespacing*{\chapter} {0pt}{0pt}{20mm}






% REFERENCING
% -----------

% Fake harvard referencing, instead of using natbib -- because
% natbib makes biblatex blow up
\def\@importHarvard {
    \RequirePackage[
        backend=biber,
        bibencoding=utf8,
        natbib=true,
        hyperref=true,
        backref=true,
        urldate=long,
        style=authoryear,
        citestyle=authoryear,
        sorting=nyt
    ]{biblatex}
}

% Otherwise use ieee's style and numeric citation
\def\@importBibLaTeX {
    \RequirePackage[
        backend=biber,
        bibencoding=utf8,
        natbib=true,
        hyperref=true,
        backref=true,
        urldate=long,
        style=ieee,
        citestyle=numeric,
        sorting=nyt
    ]{biblatex}
}

% Import harvard if [harvard] is specified, otherwise
% standard biblatex!
\ifClassOptionElse[harvard]{\@importHarvard}{\@importBibLaTeX}










% BLANK PAGE / QUOTE PAGE
% -----------------------

\newenvironment{blankpage}[1][\unskip]{%
    \ifthenelse{\equal{#1}{c}}{
        \cleardoublepage
        \topskip0pt
        \vspace*{\fill}
    }{\vspace*{1in}}
}{
        \vspace*{\fill}
}