\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{academic}[6666/66/66 Academic Articles]

\LoadClass[twocolumn]{article}

% Allow for extra whitespace at the ends of pages
\raggedbottom

% Smaller margins
\RequirePackage[margin=2.5cm]{geometry}

% Creates centered article title bounded by lines with an author block
\renewcommand{\maketitle}{
  \twocolumn[
    \centering
    \rule{\textwidth}{2pt}
    {\Huge
     \bf
     \@title
     \par}
    \rule{\textwidth}{2pt}
    \medskip

    {\begin{tabular}[t]{c}
     \@author
     \end{tabular}
     \par}
    \bigskip
  ]
}

% Small, centered abstract with narrower width
\renewenvironment{abstract}{
  \small
  {\centering
   \bfseries
   \abstractname
   \vspace{-0.5em}
   \vspace{0pt}
   \par}
  \quotation
} {
  \endquotation
}
