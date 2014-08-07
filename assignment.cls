\LoadClass{article}

\renewcommand{\normalsize}{\fontsize{10pt}{13pt}\selectfont}

% Default paper size letter
\usepackage[letterpaper, margin=1.25cm]{geometry}

% Set margins
\oddsidemargin .5in    %   Note \oddsidemargin = \evensidemargin
\evensidemargin .5in
\marginparwidth 0.07 true in
%\marginparwidth 0.75 true in
%\topmargin 0 true pt           % Nominal distance from top of page to top of
%\topmargin 0.125in
\topmargin -0.625in
\addtolength{\headsep}{0.25in}
\textheight 9.0 true in       % Height of text (including footnotes & figures)
\textwidth 5.5 true in        % Width of text line.
\widowpenalty=10000
\clubpenalty=10000

% Title bars
\def\toptitlebar{\hrule height4pt\vskip .25in\vskip-\parskip}
\def\bottomtitlebar{\vskip .29in\vskip-\parskip\hrule height1pt\vskip.09in} %

\def\@maketitle{\vbox{\hsize\textwidth
    \linewidth\hsize \vskip 0.1in \toptitlebar \centering
    {\LARGE\bf \@title\par}  \bottomtitlebar % \vskip 0.1in %  minus
    \def\And{\end{tabular}\hfil\linebreak[0]\hfil
        \begin{tabular}[t]{c}\bf\rule{\z@}{24pt}\ignorespaces}% 
    \def\AND{\end{tabular}\hfil\linebreak[4]\hfil
        \begin{tabular}[t]{c}\bf\rule{\z@}{24pt}\ignorespaces}% 
    \begin{tabular}[t]{c}\bf\rule{\z@}{24pt}\@author\end{tabular}% 
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
