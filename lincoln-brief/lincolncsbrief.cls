\NeedsTeXFormat{LaTeX2e}

% Article class
\LoadClass{article}

% Packages
\RequirePackage[margin=0.5in]{geometry}
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
% --
\usepackage{txfonts}
\usepackage[T1]{fontenc}

% Variables
\def\modulename#1{\def\@modname{#1}}
\def\modulecode#1{\def\@modcode{#1}}
\newcommand{\printmodulename}{\@modname}
\newcommand{\printmodulecode}{\@modcode}

\def\assignmentnumber#1{\def\@assnum{#1}}
\def\assignmentname#1{\def\@assname{#1}}

\def\weighting#1{\def\@weighting{#1}}

% Class options
\DeclareOption{sansserif}{\renewcommand{\familydefault}{\sfdefault}}

% Process options
\ProcessOptions\relax

% pre definitions
\def\@schoolname{Lincoln School of Computer Science}
\def\@docname{Assessment Item Briefing Document}

% headers and stuff
\newcommand{\makebriefheader}{
\centering\includegraphics[height=1.5in]{logo} \\ \centering\vspace{0.2in}\Large{\textbf{\@schoolname}} \vspace{0.05in} \\
\rule {1.02\textwidth}{0.1pt} \\
\vspace{0.1in}\textbf{\Large{\@docname}} \rule {1.02\textwidth}{0.1pt}
\bgroup
\def\arraystretch{1.5}%  1 is the default, change whatever you need
\setstretch{0.75}
\vspace{-0.17in}\begin{tabular}{p{0.49\textwidth}|p{0.49\textwidth}}
	\vspace{0.05in}\Large\textbf{Title:}\vspace{0.1in} & \vspace{0.05in}\Large\textbf{Indicative Weighting:}\vspace{0.1in} \\
	\Large\textbf{\@modname} & \Large\textbf{\@weighting \%} \\
	\Large\textbf{Assessment Item \@assnum~(\@assname)} & {} \vspace{0.15in} \\
	\hline
\end{tabular} \\
} 

% Learning outcomes
\newenvironment{learningoutcomes}
	{\begin{tabular}{p{\textwidth}} \vspace{0.1in}\textbf{\Large{Learning Outcomes:}}\vspace{0.1in} \\
	 \textbf{\large{On successful completion of this assessment item, a student will have demonstrated competence in the following areas:}}\vspace{0.17in} \\
	 
	}
	{\\ \hline\end{tabular}  }

\newcommand{\learningoutcome}[2]{\hspace{0.25in} \large{\lbrack LO#1\rbrack}~ #2\\}

\newcommand{\heading}[1]{\vspace{0.2in}\large{\textbf{#1}}\vspace{0.1in}\large\\}

\newenvironment{requirements}
	{ \vspace{0.2in} \raggedright\large\setstretch{1}\Large\textbf{Requirements} \\ \vspace{0.2in}}
	{\vspace{0.2in} \hrule}

\newenvironment{information}
	{ \vspace{0.2in} \raggedright\large\setstretch{1}\Large\textbf{Useful Information}\large \\ \vspace{0.2in}}
	{\vspace{0.2in} \hrule}
	
\newenvironment{submission}
	{ \vspace{0.2in} \raggedright\large\setstretch{1}\Large\textbf{Submission Instructions}\large \\ \vspace{0.2in}}
	{\vspace{0.2in} \hrule}

\newcommand{\defaultinformation}{\begin{information} This is an individual assignment. Your work must be presented according to the Lincoln School of Computer Science guidelines for the presentation of assessed written work. Please make sure you have a clear understanding of the grading principles for this component as detailed in the accompanying Criterion Reference Grid. If you are unsure about any aspect of this assessment component, please seek the advice of a member of the delivery team. Please also make sure you are aware about university regulations around plagiarism. \end{information}}

\newcommand{\setparagraphspacing}{\setlength{\parskip}{1em}}

%\setlength{\parskip}{\baselineskip}%

\pagenumbering{gobble}


