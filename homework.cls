\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[6666/66/66 Problem Sets]

\LoadClass{article}

% Smaller margins
\RequirePackage[margin=2.5cm]{geometry}

% New environment variables.
\def\@course{}
\newcommand{\course}[1]{\def\@course{#1}}
\def\@instructor{}
\newcommand{\instructor}[1]{\def\@instructor{#1}}

% Custom header and footer.
\def\ps@homework{%
  \def\@oddfoot{%
    $\overline{\makebox[\textwidth]{\@course\hfill\thepage}}$%
  }%
  \let\@evenfoot\@oddfoot%
  \def\@oddhead{%
    \textsc{\@title}\hfill\textit{\@author}%
    \aftergroup\hrule%
  }%
  \let\@mkboth\markboth%
}
\pagestyle{homework}

% Title page header for class information.
\renewcommand{\maketitle}{%
  % \thispagestyle{titlehomework}%
  \noindent%
  \fboxsep=6pt%
  \fbox{%
    \begin{tabular}{@{}ll@{}}
      \textbf{Name:}       & \@author \\
      \textbf{Instructor:} & \@instructor \\
      \textbf{Date:}       & \@date \\[-3pt]
    \end{tabular}%
  }
  \bigbreak
  {\centering\huge\scshape \@title\par}
  \bigbreak
}

% Make title by default.
\AtBeginDocument{\maketitle}

% Custom problem declaration.
\newcommand{\problem}[1]{%
  \medbreak\noindent\textbf{{\large #1}}\smallbreak%
}
