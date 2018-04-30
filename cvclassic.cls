\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cvclassic}[6666/66/66 Curriculum Vitae]

\LoadClass{article}

% Smaller margins
\RequirePackage[margin=1cm]{geometry}
% Title formatting
\RequirePackage{titlesec}

% No page numbers
\pagestyle{empty}

% Format sections
\titleformat{\section}
  {\large\scshape\raggedright}
  {}{0em}
  {}
  [\vspace{-0.1em}\titlerule\vspace{-0.5em}]

\titleformat{\subsection}
  {\raggedright}
  {}{0em}
  {}
  [\vspace{-0.5em}]

% CV header
\newcommand{\cvheader}[4]{%
  {\centering\huge\scshape #1\par}%
  \smallskip
  {\centering #2 {\Large\textperiodcentered} #3\par}%
  {\centering #4\par}%
}

% General CV entries
\newcommand{\cventry}[2]{%
  \subsection[#1]{%
    {\bfseries #1}%
    \hfill
    {#2}
  }
}
% Organization - Position - Location - Date
\newcommand{\cventryx}[4]{%
  \subsection[#1]{%
    {\bfseries #1}%
    \hfill
    {#4}
  }
  {\itshape #2}, {#3}
  \vspace{-0.5em}
}

% General CV entry items
\newenvironment{cvlist}[1][--]{
  \begin{itemize}
  \renewcommand{\labelitemi}{#1}
  \setlength{\itemindent}{-1.5em}
  \setlength{\itemsep}{0em}
  \setlength{\parskip}{0em}
  \setlength{\parsep}{0em}
} {
  \end{itemize}
  \vspace{-2em}
}
