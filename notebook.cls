\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notebook}[6666/66/66 Notes]

\LoadClass{book}

%%% Required packages.
\RequirePackage[margin=2.5cm]{geometry}
\RequirePackage[colorlinks=true]{hyperref}

%%% Page styles.

% Standard page style; section title in top right with chapter in bottom left
% and page number in bottom right.
\def\ps@normal{%
  \def\@oddfoot{\leftmark\hfill\thepage}%
  \let\@evenfoot\@oddfoot%
  \def\@oddhead{\hfill\rightmark}%
  \let\@evenhead\@oddhead%
  \let\@mkboth\markboth%
  }
\pagestyle{normal}

% More bare page style for large pages; only page number in bottom right.
\def\ps@numbered{%
  \def\@oddfoot{\hfill\thepage}%
  \let\@evenfoot\@oddfoot%
  \let\@oddhead\@empty\let\@evenhead\@empty%
  \let\@mkboth\markboth%
  }

% Make chapter mark \leftmark as "N | CHAPTER TITLE" where N is chapter number.
\renewcommand{\chaptermark}[1]{%
  \markboth{\MakeUppercase{\if@mainmatter\thechapter~\textbar~\fi#1}}{}%
  }

% Make section mark \rightmark as "SECTION TITLE".
\renewcommand{\sectionmark}[1]{\markright{\MakeUppercase{#1}}}

%%% Sectioning.

% Title page.
\renewcommand{\maketitle}{%
  \thispagestyle{empty}%
  \noindent%
  \\[0.4\textheight]%
  {\huge\scshape\@title}%
  \\[2em]%
  {\large\scshape\@date}%
  \\[2em]%
  {\large\scshape\@author}%
  \clearpage%
  \setcounter{page}{1}%
  }

% Chapters.
\def\chapter{%
  \clearpage%
  \thispagestyle{numbered}%
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\@chapter\@schapter
  }
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  { \parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth > \m@ne
      \if@mainmatter
        \Huge\bfseries\thechapter~\textbar~%
      \fi
    \fi
    \interlinepenalty\@M
    \Huge\bfseries #1\par\nobreak
    \vskip 40\p@
  }}
