\LoadClass{article}

\renewcommand{\normalsize}{\fontsize{10pt}{13pt}\selectfont}

% Default paper size letter
\RequirePackage[letterpaper, margin=2.54cm]{geometry}
\RequirePackage{fancyhdr}

% commands to set title and header block info
\newcommand\submissiontitle[1]{\renewcommand\@submissiontitle{#1}}
\newcommand\@submissiontitle{\@latex@error{No \noexpand\submissiontitle given}\@ehc}
\newcommand\authorname[1]{\renewcommand\@authorname{#1}}
\newcommand\@authorname{\@latex@error{No \noexpand\authorname given}\@ehc}
\newcommand\studentnumber[1]{\renewcommand\@studentnumber{#1}}
\newcommand\@studentnumber{\@latex@error{No \noexpand\studentnumber given}\@ehc}
\newcommand\instructorname[1]{\renewcommand\@instructorname{#1}}
\newcommand\@instructorname{\@latex@error{No \noexpand\instructorname given}\@ehc}
\newcommand\course[1]{\renewcommand\@course{#1}}
\newcommand\@course{\@latex@error{No \noexpand\course given}\@ehc}
\newcommand\duedate[1]{\renewcommand\@duedate{#1}}
\newcommand\@duedate{\@latex@error{No \noexpand\duedate given}\@ehc}

\pagestyle{fancy}
\fancyhf{} % clear the commands
\lhead{\it \@authorname}
\chead{\it \@course : \@submissiontitle}
\rhead{\it \@duedate}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.001pt}

\RequirePackage{amsmath}
\RequirePackage{amssymb}

% Title bars
\def\toptitlebar{\hrule height4pt\vskip .25in\vskip-\parskip}
\def\bottomtitlebar{\vskip .29in\vskip-\parskip\hrule height1pt\vskip.09in} %

\def\@maketitle{\vbox{\hsize\textwidth
    \linewidth\hsize \vskip 0.1in \toptitlebar \centering
    {\LARGE\bf\@course : \@title\par}  \bottomtitlebar % \vskip 0.1in %  minus
    \def\And{\end{tabular}\hfil\linebreak[0]\hfil
        \begin{tabular}[t]{c}\bf\rule{\z@}{24pt}\ignorespaces}% 
    \def\AND{\end{tabular}\hfil\linebreak[4]\hfil
        \begin{tabular}[t]{c}\bf\rule{\z@}{24pt}\ignorespaces}% 
    \begin{tabular}[t]{c}\bf\rule{\z@}{24pt}
        \large{\@authorname}\\
        Student number: \@studentnumber\\
        \@duedate\end{tabular}% 
\vskip 0.3in minus 0.1in}}

% Allow TeX to put a widowed line at the bottom of previous page
\flushbottom \sloppy

% Sections with less space
\def\section{\@startsection {section}{1}{\z@}{-2.0ex plus
    -0.5ex minus -.2ex}{1.5ex plus 0.3ex
    minus0.2ex}{\large\bf\raggedright}}
\def\subsection{\@startsection{subsection}{2}{\z@}{-1.8ex plus    
    -0.5ex minus -.2ex}{0.8ex plus .2ex}{\normalsize\bf\raggedright}}
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}{-1.5ex
    plus -0.5ex minus -.2ex}{0.5ex plus
    .2ex}{\normalsize\bf\raggedright}}
\def\subsubsubsection{\vskip
    5pt{\noindent\normalsize\rm\raggedright}}
\def\paragraph{\@startsection{paragraph}{4}{\z@}{1.5ex plus   
    0.5ex minus .2ex}{-1em}{\normalsize\bf}}
\def\subparagraph{\@startsection{subparagraph}{5}{\z@}{1.5ex plus 
    0.5ex minus .2ex}{-1em}{\normalsize\bf}}

% problem-solution formatting
% Set up counters for problems and subsections
 
\newcounter{ProblemNum}
\newcounter{SubProblemNum}[ProblemNum]
 
\renewcommand{\theProblemNum}{\arabic{ProblemNum}}
\renewcommand{\theSubProblemNum}{\alph{SubProblemNum}}
 
 
\newcommand*{\anyproblem}[1]{\newpage\subsection*{#1}}
\newcommand*{\problem}[1]{\stepcounter{ProblemNum} %
\anyproblem{Problem \theProblemNum. \; #1}}
\newcommand*{\soln}[1]{\subsubsection*{#1}}
\newcommand*{\solution}{\soln{Solution}}
\renewcommand*{\part}{\stepcounter{SubProblemNum} %
\soln{Part (\theSubProblemNum)}}
 
%\renewcommand{\theenumi}{(\alph{enumi})}
%\renewcommand{\labelenumi}{\theenumi}
%\renewcommand{\theenumii}{\roman{enumii}}
