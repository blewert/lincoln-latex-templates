\NeedsTeXFormat{LaTeX2e}

% Article class
\LoadClass{article}



% Packages
\RequirePackage[margin=1in]{geometry}
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
\RequirePackage{fancybox}
% --
\usepackage[T1]{fontenc}
\usepackage{courier}
\usepackage{listings}
\usepackage{dirtree}
\usepackage{url}
\usepackage{hyperref}


% listings
\definecolor{pastelgreen}{rgb}{0.00, 0.52, 0.17}
\definecolor{pastelblue}{rgb}{0.50, 0.50, 0.90}
\definecolor{pastelgrey}{rgb}{0.50, 0.50, 0.50}

\lstset{
	basicstyle=\footnotesize\ttfamily,
	%numbers=left,               
	numberstyle=\tiny,          
	%stepnumber=2,               
	numbersep=5pt,              
	tabsize=2,                  
	extendedchars=true,         
	breaklines=true,            
	commentstyle=\color{pastelgreen},
	keywordstyle=\color{pastelblue}\textbf,
	otherkeywords={},
	%frame=b,         
	stringstyle=\color{pastelgrey}\ttfamily, 
	showspaces=false,          
	showtabs=false,             
	xleftmargin=17pt,
	language=C++,
	framexleftmargin=17pt,
	framexrightmargin=5pt,
	framexbottommargin=4pt,
	showstringspaces=false             
}
% ---------


\lstset{basicstyle=\ttfamily,breaklines=true}
\lstset{framextopmargin=50pt}

\renewcommand{\familydefault}{\sfdefault}

% Class options
\DeclareOption{serif}{\renewcommand{\familydefault}{\rmdefault}}

% Process options
\ProcessOptions\relax

% pre definitions
\def\@schoolname{School of Computer Science}

% Variables
\def\modulename#1{\def\@modname{#1}}
\def\modulecode#1{\def\@modcode{#1}}
\newcommand{\printmodulename}{\@modname}
\newcommand{\printmodulecode}{\@modcode}

\def\labname#1{\def\@labname{#1}}
\def\labnumber#1{\def\@labnumber{#1}}

\newcounter{task}



% headers and stuff
\newcommand{\makelabheader}{
	\raggedright\includegraphics[height=1.5in]{logo} \\ 
	\raggedright\vspace{0.2in}\Large{\textbf{\@modname~(\@modcode)}} \\
	\raggedright\vspace{0.2in}\Large\textbf{Workshop \#\@labnumber:} \@labname\vspace{0.05in} \\
	%\rule {0.75\textwidth}{0.1pt} \\
	\vspace{0.2in}\raggedright\large
}

\newcommand{\setparagraphspacing}{\setlength{\parskip}{1em}}

\setlength{\parskip}{\baselineskip}%

\pagenumbering{gobble}

\newcommand{\kbd}[1]{\texttt{\textbf{#1}}}


%\newcommand{sansserif}{\renewcommand{\familydefault}{\rmdefault}}

\newcommand{\task}[1]{\vspace{0.25in}\stepcounter{task}\section*{Task \#\thetask:~#1}}

\newcommand{\atask}[1]{\vspace{0.25in}\stepcounter{task}\section*{Additional Task:~#1}}
