\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{academic}[6666/66/66 Academic Articles]

\LoadClass[12pt]{article}

%%% Required packages.
\RequirePackage[margin=2.5cm]{geometry}
\RequirePackage{hyperref}
\hypersetup{
  colorlinks=true,
  citecolor=red,
  linkcolor=red
}

% Creates centered article title bounded by lines with an author block
\renewcommand{\maketitle}{
  {\centering
   \Huge
   \@title
   \par}
  \bigskip

  {\centering
   \begin{tabular}[t]{c}
   \@author
   \end{tabular}
   \par}
  \bigskip
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
