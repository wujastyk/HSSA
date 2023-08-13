%\section{Documentation for authors using \LaTeX } 
%
% If you are writing with \LaTeX\ please observe 
% the following guidelines:
%
%\begin{itemize}
%\item Use Unicode encoding for your files (i.e., for Xe\LaTeX\ or Lua\TeX)
%\item Use the standard features of \LaTeX\ as documented in the standard manual, 
%\emph{\LaTeX: A Document Preparation System} by Leslie Lamport, or in
% \emph{The Very Short Guide to Typesetting with \LaTeX} by Peter Flynn and Silmaril 
% Consultants (part of the \TeX live distribution and at
%\href{http://ctan.mirror.colo-serv.net/info/latex-veryshortguide/veryshortguide-A4-imposed.pdf}{CTAN}).
%\item Use logical markup, not presentational markup. That means you mark things as 
%\verb"\chapter{xxx}", \verb"\footnote{xxx}", \verb"\sanskrit{xxx}", \verb"\title{xxx}", etc., 
% and not \verb"\textbf{xxx}", 
%\verb"\vspace{5ex}".
%\item Do not use \verb"\newcommand" or \verb"\def" to make private commands. If this 
%appears to be 
%unavoidable, please contact the journal editor before proceeding.
%\item Provide your bibliography entries in Bib\TeX\ format. The journal uses Bib\LaTeX, 
%which 
%is flexible. So please do not use any special formatting commands or non-standard bst files. 
%Just use \verb"\cite{xxx}" etc. in the simplest manner.
%\item If you have tables, keep them simple and don't spend time putting in many horizontal 
%and vertical lines. They will be reformatted for the journal, in any case.
%\end{itemize}
%The above advice is also given on the \href{https://hssa-journal.org}{HSSA 
%website}.

%\newpage

%\section{Documentation for \LaTeX\ hackers converting incoming files to HSSA}
%
%\subsection{Prelims}
% Start off each HSSA article \LaTeX\ file with the following macros:
%\begin{verbatim}
%\RequirePackage{snapshot}
%\documentclass{hssa}
%\usepackage{hssa,
%	hssa-biblatex}
%\addbibresource{\jobname.bib} 
%\end{verbatim}
% Note that the article's bibliography should have the same name as the article, with the 
% extension \verb".bib".

%\subsubsection{Metadata}
%Next, use the following commands to capture the metadata for this article:
%\begin{verbatim}
%\HSSAissuenum{999}
%\HSSAissuedate{2999}
%\HSSAarticletitle{A Title}
%\HSSAauthorname{A. N. Author}
%\HSSAauthoraddress{University of University}
%\HSSAfirstpage{000}
%\HSSAlastpage{999}
%\DOI{1.2/3.4.5} 
%\end{verbatim}
%
% These commands generate the right text for the front page, the copyright page and 
% the article's title and running header.  
% 
% If the running header is too long (author's love long titles), use
% \begin{verbatim}
% \HSSAshortarticletitle{An abbreviated title}
% \end{verbatim}

%\subsection{HSSA user macros}
% Here follow various commands for use in HSSA articles that aren't part of standard
% \LaTeX.
%\subsubsection{AD, BC, etc.}
%\DescribeMacro{\CE}
%\DescribeMacro{\BCE}
%There are shortcuts for expressing the eras CE and BCE.  These macros also get the fonts 
%right.  There are synonyms: use any of the following and the output will look right:
%\begin{verbatim}
%\bce
%\BC
%\BCE
%%
%\ce
%\CE
%\AD
%\end{verbatim}
% Don't forget to handle the space after these macros appropriately.

%\DescribeMacro{\q}
% Use this to make a loud, obnoxious marginal note in bright yellow box. Use it to annotate
% the PDF proofs for communicating with the author.
%
% \verb"\q{}" stands for “query,” and is a tailord version of \verb"todonotes".  In addition 
% to the yellow box in the margin, it can also build a page index of the notes that you can 
% print at the end of the article with \verb"\listoftodos".

% \subsubsection{Environments for ślokas and mini-editions}
%\DescribeEnv{miniedition}
% An environment for making apparatus notes to a single śloka or two.

%\DescribeEnv{sloka}
% An environment for typesetting Sanskrit verses; pretty much the same as \verb”verse”.

% \subsubsection{Citing manuscripts}
%\DescribeMacro{\MScite}
% Cite your manuscripts using the pattern “City, Library, accession number.”  The
% \verb"\MScite" macro will print the right thing in your text, while also writing an 
% entry to an alphabetical index of manuscripts that appears at the end of your article.
% Saying \verb"\MScite{London, Wellcome, $\alpha$999}" will print “MS London, Wellcome 
% $\alpha$ 999 in your text.

%\DescribeMacro{\MS}
% \verb"\MS" is a synonym for \verb"\MScite"

%\DescribeMacro{\MSnocite}
% If you want to put an entry in your index of manuscripts, but you don't want 
% the entry printed in the main text where you're writing, use \verb"\MSnocite".

%\DescribeMacro{\MSsilent}
% A synonym for \verb"\MSnocite".

%\subsubsection{Making a lexical index}
%\DescribeMacro{\saneng}
% If you say \verb"\saneng{pūpa}{cake}" then you'll get “cake (\emph{pūpa})” printed in 
% your main text.  Also, an entry will be written to a lexical page index, both Sanskrit-English
% and English-Sanskrit.
%
%\DescribeMacro{\ssaneng}
% \verb"\ssaneng" is a silent version of the same macro that writes the index entries but
% puts nothing in the main text.

%\subsubsection{Language-switching}
%\DescribeMacro{\textgreek}
%\DescribeMacro{\textenglish}
%\DescribeMacro{\textsanskrit}
% See the documentation for
% \href{https://ctan.org/pkg/polyglossia?lang=en}{Polyglossia} for details of how 
% these are used.
% These macros switch to the respective languages and scripts (e.g., Devanagari for
% \verb"\textsanskrit{}").
%
% \DescribeMacro{\dev}
%  \verb"\dev" is just an abbreviation for the \verb"\textsanskrit" macro.
% 
% \DescribeMacro{\cjk}
%  This is just a switch, so say \verb”{\cjk X}” where X is a Chinese character.

%\subsubsection{Citation commands}
%HSSA uses the Bib\LaTeX\ macros, and the Oxref style for formatting according to the 
%Oxford Hart's Rules guidelines.  The NatBib conventions are also loaded, so you can use 
%\verb"\cite", \verb"\citep" \verb"\citet" in the standard ways, as well as Bib\LaTeX's 
%\verb"\footcite", \verb"\cites", \verb"\parencites", etc.

%\subsubsection{Bibliography and index outputs}
%Say \verb"\printbibliography" at the end of the document.  
%
%Here are examples from the end of Speziale's 2019 paper that do more 
%elaborate things.
% \paragraph{Index prologue}
%\begin{verbatim}
%\setlength{\shorthandwidth}{.25\textwidth}
%
%\indexprologue{\centering\emph{References are to page numbers in this 
% article.}} 
%
%\end{verbatim}

% \paragraph{Index of manuscripts}
% As indexed using \verb"\MScite" etc.
%\begin{verbatim}
%\printindex[manuscripts] % ditto for manuscripts
%
%\printshorthands % uses features of biblatex-manuscripts-philology
%[title=Primary Sources in Manuscripts,
%type=manuscript,
%%  env=details,
%%sorting=special,
%]
%\end{verbatim}

% \paragraph{Index of editions}
%\begin{verbatim}
%\printshorthands %
%[title=Primary Sources in Printed Editions,
%keyword=edition, % flagged as such in the bib file
%%prenote=blurb01,
%%sorting=special,
%]
%
%\end{verbatim}

% \paragraph{Index of references}
%\begin{verbatim}
%\printbibliography
%[title=Secondary Sources and Translations,
%sorting=nyt,
%%keyword=secondary,
%notkeyword=edition,
%nottype=manuscript,
%] % keep the editions in the Text Editions section only
%\end{verbatim}

%\subsubsection{Miscellaneous}
%\DescribeMacro{\diatop}
% Puts more than one accent over a letter.  This isn't available in standard \LaTeX, but we 
% philologists sometimes need it.  Say, for example, \verb”\diatop[\'|{ō}]” to 
% get \diatop[\'+ō].
%
%\DescribeMacro{\PreliminaryNote}
% For that zeroth footnote at the beginning of an article that gives acknowledgments or 
% abbreviations.  I prefer to put this material at the end of an article, in a section called
% “Acknowledgements.”
%
% \subsubsection{Rotating pages for big tables and figures}
%\DescribeEnv{rotating}
% That's pretty much it.\\
%  You might want to add \verb"\usepackage[figuresright]{rotating}" 
% if you have some tables to go sideways.  

%\subsection{Standard \LaTeX\ sectioning and similar commands}
%
%\DescribeMacro{\section}
% Just use the normal \verb"\section{}" commands, down to \verb"\paragraph".
%
%\DescribeMacro{\lettrine}
% The first line after a \verb"section" is formatted with an initial drop-cap and small caps, 
% using \verb"\lettrine".  The three arguments are 1.\ line-drop and over height (always the 
% same), 2.\ the drop-capital itself, and  3.\ the remaining letters of the word and some more 
% words up to the end of a phrase.  For example
% \begin{verbatim}
% \lettrine[lines=2,loversize=.1]{T}{he} object of this contribution is ...
% \end{verbatim}
% How much you include in the phrase is up to you. E.g., 
% \begin{verbatim}
% \lettrine[lines=2,loversize=.1]{T}{he object of this contribution} is ...
% \end{verbatim}
% Note that \emph{all} the letters of the phrase should be lowercase.  They will be turned 
% into small caps, and uppercase letters won't look right.  E.g.,
% \begin{verbatim}
% \lettrine[lines=2,loversize=.1]{T}{he mahābhārata and the rāmāyana both feature kṛṣṇa 
%%% ... 
% \end{verbatim}


%\subsection{What you get for nothing}
%In addition to setting up the above commands, 
% the class and style files below will handle the 
%\begin{itemize}
%    \item colour and layout of the front and back matter, 
%    \item the title and section headings, 
%    \item the running headers and footers,
%    \item the two-column footnotes
%    \item the use of \TeX\ Gyre Pagella or other Unicode font in \TeX\ math mode.
%\end{itemize}

% \newpage

% \section{Macros in the class file for the HSSA journal: hssa.cls}
% This is \verb"hssa.cls" by Dominik Wujastyk, a class file for the HSSA journal.
%
% This documentation is created by running \verb"hssa-documentation.dtx", which 
% calls \verb"hssa.cls" and \verb"hssa.sty", etc.
%
% See \url{http://tug.org/pracjourn/2005-3/asknelly/} for a nice statement of the 
% difference between .cls and .sty files.  Here in \verb"hssa.cls", I'm keeping
% the code that is part of the core of HSSA's design.  I would not expect to 
% change things here much after 2019.  

%\begin{macro}{\NeedsTeXFormat}
% Declare that we are using the main \LaTeX2e format.
%    \begin{macrocode}
\NeedsTeXFormat{LaTeX2e}
%    \end{macrocode}
%\end{macro}

%  \begin{macro}{\LoadClass}
% HSSA is based on an 11pt article style:
%    \begin{macrocode}
\LoadClass[11pt]{article}
%    \end{macrocode}
%  \end{macro}
%
%  \begin{macro}{\RequirePackage}
% Here come the packages that HSSA assumes are present.
%    \begin{macrocode}
\usepackage{hssa-indexing} % has to be loaded before hyperref
\RequirePackage{ %
    graphicx,
    amsmath,
    amsfonts,
    amssymb,
    textcomp, % arcane LaTeX/NFSS system for subsetting encodings.  Needed for Sigma.
    wasysym,
    polyglossia,
    hyperxmp, % to embed XMP metadata in the PDF
    hyperref, 
    geometry,
    array,
    longtable,
    polyglossia,  % polyglossia calls fontspec
    multicol,
    booktabs, % better table spacing, \toprule etc.
    textcase, % to get \MakeTextLowercase for tweaking the running footer
    fancyhdr
}
%    \end{macrocode}
%  \end{macro}

%  \begin{macro}{xcolor}
% Settings for the \verb"xcolor" package
%    \begin{macrocode}
\RequirePackage[xetex,
    dvipdfmx,
    hyperref,
    svgnames,
    table]
    {xcolor}
%    \end{macrocode}
%  \end{macro}

%  \begin{macro}{enumitem}
% To control the spacing around itemized lists.
%    \begin{macrocode}
\usepackage{enumitem} 		% supersedes mdwlist: does it globally
\setlist{noitemsep,
    %labelindent=\parindent,
    %leftmargin=*,
}
%    \end{macrocode}
%  \end{macro}

% \begin{macro}{\q}
% Issue notes to the author in the margins of the page proofs.  
%  It uses the \verb|todonotes| package.
%
% Define \verb"\q" to be \verb"\empty" for the final run 
% to suppress the display of notes.
% Put a \verb"\newpage" \verb"\listoftodos" just before \verb"\end{document}" 
% to help the author with an indexed list to the marginal notes.
%    \begin{macrocode}
\setlength{\marginparwidth}{2cm} %todonotes manual, section 1.6.5
\usepackage[colorinlistoftodos,
%    disable,
textsize=tiny,
loadshadowlibrary,
shadow,
backgroundcolor=yellow]{todonotes}
\setuptodonotes{fancyline} 
%
\newcommand{\q}[1]{{}\todo{#1}{}}
%    \end{macrocode}
% \end{macro}

%\begin{macro}{\PreliminaryNote}
% A preliminary numberless "footnote" for abbreviations,
% grant references, and other general initial statements.
% But commonly, put this in a little ``Acknowledgements'' 
% section at the end of the paper.
%
%    \begin{macrocode}
\newcommand{\PreliminaryNote}[1]{%
    {\def\thefootnote{\relax }%
        \footnotetext{\hspace*{-2.3em} %only if not using \hangfootnotes
            #1}}}
%
%DW ?
\skip\footins=24pt
%DW ?
%    \end{macrocode}
%\end{macro}
%
%
% \subsection{Set the geometry for the pages}
%\begin{macro}{geometry}
% Set the geometry for the pages
%DW 
%    \begin{macrocode}
 \geometry{twoside,
  paperwidth=210mm,
  paperheight=297mm,
  textheight=562pt,
  textwidth=384pt,
  centering,
  headheight=30pt,
  headsep=18pt,
  footskip= 42pt, %24pt,
  footnotesep=24pt plus 2pt minus 12pt,
 }
%    \end{macrocode}
%\end{macro}

% 	\subsection{Front matter}
%
% 	\DescribeMacro{\title}
% 	\DescribeMacro{\author}
% 	\DescribeMacro{\date}
% I thought about doing something like this:\\
% \verb"\newenvironment{frontmatter}{}{\maketitle}"\\
% but then gave that up.
%\begin{macro}{\title}
%    \begin{macrocode}
\title{\LARGE \@HSSAarticletitle }
%    \end{macrocode}
%\end{macro}
%\begin{macro}{\author}
% Put the author's address in a parbox because it may have hard linebreaks
% (\verb"\\") that can cause trouble.  This happened in Speziale 2019.  I still don't know
% why the linebreak is allowed after the authorname but not in the address.
%    \begin{macrocode}
\author{\@HSSAauthorname\\ [1ex]
    \parbox{\textwidth}{\small\centering\emph{\@HSSAauthoraddress}}
}
%    \end{macrocode}
%
%\begin{macro}{\date}
%No date.
%    \begin{macrocode}
\date{\relax }
%    \end{macrocode}
%\end{macro}

%	\subsection{Running headers and footers}
%
%\begin{macro}{\HSSAfooter}
% Variable that collects the text for the footer. 
%    \begin{macrocode}
\def\HSSAfooter#1 %*%
    {\gdef\@HSSAfooter{#1}}
%    \end{macrocode}
%\end{macro}
% 
%\begin{macro}{\@HSSAtitle}
% Define the title for use on the title page. 
%    \begin{macrocode}
\newcommand{\@HSSAtitle}{History of Science in South Asia}
%    \end{macrocode}
%\end{macro}

%\begin{macro}{\HSSAverso}
% Variable that collects the page header of the verso pages.
%    \begin{macrocode}
\def\HSSAverso#1{\gdef\@HSSAverso{#1}}
%    \end{macrocode}
%\end{macro}

% 	 \begin{macro}{\HSSArecto}
% Ditto for the recto, and initialize them both to nothing.
%    \begin{macrocode}    
\def\HSSArecto#1{\gdef\@HSSArecto{#1}}
\let\@HSSAverso\@empty
\let\@HSSArecto\@empty
%    \end{macrocode}
%\end{macro}

% Now the HSSA journal running headers, footers and cover citation.
% Set the shorttitle to be the same as \verb"\HSSAverso" unless the author
% redefines it in the document preamble.
%    \begin{macrocode}
\HSSAverso{\@HSSAarticletitle }
  \let\HSSAshorttitle\HSSAverso 
\HSSArecto{\@HSSAauthorname }
%    \end{macrocode}
%\end{macro}

%\begin{macro}{\@HSSAheaderfooterfont}
% Set up the font that will be used for running headers and footers.  Small caps,
% and a bit of extra space, 7\%, of the font's point size, 
% between each letter (LetterSpace is from fontspec).
%    \begin{macrocode}
\def\@HSSAheaderfooterfont{\scshape\addfontfeature{LetterSpace=7}}
%    \end{macrocode}
%\end{macro}

%\begin{macro}{\HSSAfooter}
% Use the \verb"\MakeTextLowercase" macro from the \verb"textcase" package 
%and construct the running footer for each page.
%    \begin{macrocode}
\HSSAfooter{\MakeTextLowercase{\@HSSAtitle}\ \@HSSAissuenum\ 
    (\@HSSAissuedate) \thefirstpage--\thelastpage}
%    \end{macrocode}

% \subsection{Fancy headers and footers}
% Now the fancy header setup, which should be done after the geometry setup.
%    \begin{macrocode}
%\usepackage{fancyhdr} % after the geometry setup
\pagestyle{fancy}
\fancyhead{}
\fancyhead[CO]{\textenglish{\@HSSAheaderfooterfont\MakeTextLowercase{\@HSSArecto}}}
\fancyhead[CE]{\textenglish{\@HSSAheaderfooterfont\MakeTextLowercase{\@HSSAverso}}}
\fancyhead[RO]{\textenglish{\@HSSAheaderfooterfont\thepage}}
\fancyhead[LE]{\textenglish{\@HSSAheaderfooterfont\thepage}}
\fancyfoot[L]{}
\fancyfoot[C]{\textenglish{\@HSSAheaderfooterfont\@HSSAfooter}}
\fancyfoot[R]{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
%    \end{macrocode}
%\end{macro}

%  \subsection{Fancy-plus-DOI style}
%\begin{macro}{\fancypage}
% Make a style for the first page that has the DOI in the bottom right
%    \begin{macrocode}
\fancypagestyle{fancy-plus-DOI}{%
\fancyhead{}
\fancyhead[R]{}
\fancyfoot[L]{\copy\cclogobox\\ \tiny\textenglish{\@HSSAheaderfooterfont 
    \href{http://doi.org/\@DOI}{doi: \@DOI}}}
\fancyfoot[C]{\textenglish{\@HSSAheaderfooterfont\@HSSAfooter}}
\fancyfoot[R]{}
}
%    \end{macrocode}
%\end{macro}

% \subsection{Link colours}
%\begin{macro}{\definecolor}
% This is the colour that will be used for the URL links; it's dark, so that it
% doesn't disturb the reading as much as the standard blue would do.
% It depends on the \verb|xcolor| package.
%    \begin{macrocode}
\definecolor{darkbrown}{rgb}{0.4, 0.26, 0.13} % from http://latexcolor.com/
%    \end{macrocode}
%\end{macro}

%  \subsection{Output the preliminary matter}
% These commands depend on \verb|hyperref|, but that is always loaded
% so there's no need to check.
%\begin{macro}{\AtBeginDocument}
%    \begin{macrocode}
\AtBeginDocument{%
    \coverpage
    \copyrightspage
    %
    \setcounter{page}{0}
    \maketitle
    \thispagestyle{fancy-plus-DOI}
    \setcounter{page}{\thefirstpage}
%
    \def\@linkcolor{darkbrown}
    \def\@anchorcolor{darkbrown}
    \def\@citecolor{darkbrown}
    \def\@filecolor{darkbrown}
    \def\@urlcolor{darkbrown}
    \def\@menucolor{darkbrown}
    \def\@pagecolor{darkbrown}
%
    \selectbackgroundlanguage{english}
}
%    \end{macrocode}
%    It would have been convenient to \verb|\input{sanskrit-hyphenations}| at this 
%  too, but for some reason this doesn't work. 
%  These hyphenations have to be \verb|\input| after \verb|\begin{document}|.
%\end{macro}

%  \subsection{Output the final pages that come after the article}
%\begin{macro}{\AtEndDocument}
%    \begin{macrocode}
\AtEndDocument{%
    \newpage
    \coverlastpage 
}
%    \end{macrocode}
%\end{macro}
%
%  \subsection{Arrange the appendix}
%\begin{macro}{appendix}
%    \begin{macrocode}
% Consider using \RequirePackage[title]{appendix}
%
\def\appendixname{Appendix}
\renewcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{equation}{0}
  \addtocontents{toc}{\string\let\string\numberline\string\tmptocnumberline}{}{}
}
%    \end{macrocode}
%\end{macro}

%\begin{macro}{Last page}
% Define the last page number and set it to 100
%
%    \begin{macrocode}
\def\LastPage#1{\gdef\@LastPage{#1}}
\LastPage{100}
%    \end{macrocode}
%\end{macro}

%  \subsection{Set up the alignment and fonts of title and author names}
%\begin{macro}{\aufont,\titlefont,\footerfont,\footeraddress}
%    \begin{macrocode}
\def\titlealign#1{\gdef\@titlealign{#1}}
\let\@titlealign\centering
\def\aualign#1{\gdef\@aualign{#1}}
\let\@aualign\centering
\def\titlefont#1{\gdef\@titlefont{#1}}
\def\aufont#1{\gdef\@aufont{#1}}
\def\@titlefont{\fontsize{20}{24}}
\def\@aufont{\fontsize{10}{12}}
%
% Footer font
% 
\def\footerfont#1{\gdef\@footerfont{#1}}
\footerfont{\fontsize{7}{8}}
%
% Footer address
% 
\def\footeraddress#1{\gdef\@footeraddress{#1}}
\let\@footeraddress\@empty
%    \end{macrocode}
%
%\end{macro}

%  \subsection{The content of the cover page}
%\begin{macro}{\coverpage}
%    \begin{macrocode}
\long\def\coverpage{%
    \thispagestyle{empty}
    \begingroup
    \parindent0pt
    \pagecolor{pagecolor}
    \color{Maroon!20}
    \hspace*{-.05\linewidth}%
    \begin{minipage}{1.1\linewidth}%
        \vspace*{-18pt}%
        \includegraphics[width=50mm]{logo.eps}\par
        \vskip-12pt
        \fontsize{30}{36}\selectfont
        History of Science in South Asia\par\medskip
        \footnotesize\itshape
        A journal for the history of all forms of scientific thought and
        action, ancient and modern, in all regions of South Asia\par
    \end{minipage}
    \par
    \vfill
    \begin{minipage}{\linewidth}
        \raggedright
        \LARGE
        \@HSSAspecialissuedetails
    \end{minipage}
    \par
    \vfill
    \par
    \begin{minipage}{\linewidth} % Here's the main title and author and affiliation
        \raggedright
        \LARGE
        \@HSSAarticletitle
        \par\vspace*{10mm}
        \large
        \@HSSAauthorname\par
        \vspace{.8\baselineskip}
        \normalsize
        \emph{\@HSSAauthoraddress}
        \par\vspace*{10mm}
    \end{minipage}
    \par
    \vfill
    \par
    \hspace*{-.05\linewidth}%
    \begin{minipage}{1.1\linewidth}
        \rule{\linewidth}{.1pt}
        \footnotesize 
        {\tiny MLA} style citation form:  \thecovercitation \\[3pt]
        Online version available at: {\def\@urlcolor{Maroon!20}%
            \href{http://hssa-journal.org}{http://hssa-journal.org}}
    \end{minipage}
  \endgroup
    \vspace{-10mm}
    \newpage
} % end coverpage
%    \end{macrocode}
%\end{macro}

%  \subsection{The the content of the copyright page}
%\begin{macro}{\copyrightspage}
%    \begin{macrocode}
\long\def\copyrightspage{%
    \begingroup
    \pagecolor{white}
    \normalcolor
    \thispagestyle{empty}
    \footnotesize
    \begin{minipage}[t][.98\textheight][t]{\linewidth}
        {\addfontfeature{LetterSpace=8}\bfseries
            HISTORY OF SCIENCE IN SOUTH ASIA}\\
        A journal for the history of all forms of scientific thought and action, 
        ancient and modern, in all regions of South Asia, published online 
        at \href{http://hssa-journal.org}{http://hssa-journal.org} 
        
        \vfill
        
        ISSN 2369-775X
        
        \vfill
        
        \textit{Editorial Board:}\\
        \begin{itemize}
            \leftmargini=1em
            \item Dominik Wujastyk, University of Alberta, Edmonton, Canada
            \item Kim Plofker, Union College, Schenectady, United States
           % \item Dhruv Raina, Jawaharlal Nehru University, New Delhi, India
            \item Clemency Montelle, University of Canterbury, 
                Christchurch, New Zealand
            \item Fabrizio Speziale, School of Advanced Studies in the 
                Social Sciences (EHSS), Paris, France
            \item Michio Yano, Kyoto Sangyo University, Kyoto, Japan
            \item Gudrun Bühnemann, University of Wisconsin-Madison, USA
            \item Anuj Misra, University of Copenhagen, Denmark            
            \item Aditya Kolachana, Indian Institute of Technology, Madras, India
            \item Dagmar Wujastyk, University of Alberta, Edmonton, Canada
        \end{itemize}
        
        \medskip
        
        \textit{Publisher:}\\[4pt]
            History of Science in South Asia
        
        \medskip
        
        \textit{Principal Contact:}\\[4pt]
        Dominik Wujastyk, Editor, University of Alberta\\
        Email: $\langle$wujastyk@ualberta.ca$\rangle$
        
        \medskip
        
        \textit{Mailing Address:}\\[4pt]
        History of Science in South Asia,\\
        Department of History, Classics and Religion,\\ 
        2--81 HM Tory Building,\\ 
        University of Alberta,\\ 
        Edmonton, AB, T6G 2H4\\
        Canada
        
        \medskip
        
        This journal provides immediate open access to its content on the
        principle that making research freely available to the public supports
        a greater global exchange of knowledge.
        
        \medskip
        
        Copyrights of all the articles rest with the respective authors and
        published under the provisions of
        \href{http://www.creativecommons.org/licenses/by-sa/4.0/}{Creative Commons 
            Attribution-ShareAlike 4.0} License.
        
        \medskip
        
        The electronic versions were generated from sources marked up in  
        \href{http://www.latex-project.org}{\LaTeX}{} in a computer running 
        \textsc{gnu/linux} operating system. \textsc{pdf} was typeset 
        using \href{http://tug.org/xetex/}{\XeTeX}{} from
        \href{http://tug.org/texlive/}{\TeX Live}.  
        The base font used for Latin script and oldstyle numerals  was
        \href{http://www.gust.org.pl/projects/e-foundry/tex-gyre/pagella}{\TeX{}
            Gyre Pagella}  developed by
        \href{http://www.gust.org.pl}{\textsc{gust}}, the Polish 
        \TeX{} Users Group. 
    \end{minipage}
    \endgroup
    
    \pagecolor{white}
    \normalcolor
} % end \copyrightpage
%    \end{macrocode}
%\end{macro}

%  \subsection{The content of the back cover page}
%\begin{macro}{\coverlastpage}
%    \begin{macrocode}
\long\def\coverlastpage{\newpage\parindent=0pt
    \thispagestyle{empty}
    \pagecolor{pagecolor}
    \parskip=0pt
    \mbox{}
    \vfill
    \par
    \color{endscriptcolor}
    \colorlet{urlcolor}{endurlcolor}
    \rule[3pt]{\textwidth}{.2pt}
    {\normalfont\scriptsize\raggedright Please write to 
        \href{mailto:wujastyk@ualberta.ca}
            {\color{white}$\langle$wujastyk@ualberta.ca$\rangle$}
        to file bugs/problem reports, feature requests and to get involved. \\
        %   \addfontfeature{LetterSpace=6}%
        \href{http://hssa-journal.org}
            {\color{white}The History of Science in South Asia} 
        \textbullet\   
        Department of History and Classics, 
        2--81 HM Tory Building, University of Alberta, 
        Edmonton, AB, T6G 2H4, 
        Canada.}%
    \vspace*{-20pt}
}
%    \end{macrocode}
%\end{macro}

%  \subsection{Tweak captions $\rightarrow$ footnotesize}
%\begin{macro}{\@makecaption}
%    \begin{macrocode}
% originally for Speziale
\long\def\@makecaption#1#2{%
    \vskip\abovecaptionskip
    \footnotesize % added footnotesize
    \sbox\@tempboxa{#1: #2}%
    \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
    \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
    \fi
    \vskip\belowcaptionskip}
%    \end{macrocode}
%\end{macro}

%  \subsection{Page layout dimensions}
% %DW can this be superseded by the geometry package?
%\begin{macro}{pagelayout}
%    \begin{macrocode}
\renewcommand\topfraction{1}
\renewcommand\bottomfraction{.8}
\renewcommand\textfraction{0}
\renewcommand\floatpagefraction{.8}    % 0.95 better ????
\renewcommand\dbltopfraction{1}
\renewcommand\dblfloatpagefraction{.8}
\renewcommand\topfraction{1}
\renewcommand\bottomfraction{.8}
\renewcommand\textfraction{0.1}
\renewcommand\floatpagefraction{0.95}  % was 0.8 changed 1
%    \end{macrocode}
%\end{macro}



% \subsection{Misc layout settings}
%    \begin{macrocode}
\lefthyphenmin=3
\righthyphenmin=3
%\RequirePackage[hang]{footmisc}
%\setlength\footnotemargin{.8em}

%\geometry{footskip=42pt}

\RequirePackage{lettrine}
\RequirePackage[normalem]{ulem}
%    \end{macrocode}

% \subsection{Journal-specific user-facing macros}

% \begin{macro}{\HSSAspecialissuedetails}
% Only for for guest-edited single-theme issues.
%    \begin{macrocode}
\def\HSSAspecialissuedetails#1{\gdef\@HSSAspecialissuedetails{#1}}
\HSSAspecialissuedetails{\empty }
%    \end{macrocode}
% \end{macro}
%
% \begin{macro}{\HSSAissuenum}
% Provide user command \verb"\HSSAissuenum".
%    \begin{macrocode}
\def\HSSAissuenum#1{\gdef\@HSSAissuenum{#1}}
\HSSAissuenum{999}
%    \end{macrocode}
% \end{macro}
%
% \begin{macro}{\HSSAarticletitle}
% Provide user command \verb"\HSSAarticletitle"
%    \begin{macrocode}
\def\HSSAarticletitle#1{\gdef\@HSSAarticletitle{#1}\hypersetup{pdftitle=#1}}
\HSSAarticletitle{My Life}
%    \end{macrocode}
% \end{macro}
%
% Provide user command \verb"\HSSAauthorname"
%    \begin{macrocode}
\def\HSSAauthorname#1{\gdef\@HSSAauthorname{#1}\hypersetup{pdfauthor=#1}}
\HSSAauthorname{Joe Bloggs}
%    \end{macrocode}
%
% Provide user command \verb"\HSSAissuedate"
%    \begin{macrocode}
\def\HSSAissuedate#1{\gdef\@HSSAissuedate{#1}}
\HSSAissuedate{1900}
%    \end{macrocode}
%
% Provide user command \verb"\HSSAauthoraddress"
%    \begin{macrocode}
\def\HSSAauthoraddress#1{\gdef\@HSSAauthoraddress{#1}}
\HSSAauthoraddress{Timbuktu}
%    \end{macrocode}
% Collect DOI info when ready and print it in covercitation
% Provide DOI when we have it.
%    \begin{macrocode}
\def\DOI#1{\gdef\@DOI{#1}}
\gdef\@DOI{\empty}
%%\newtoks\DOI 
\newcommand{\printDOI}{\ifx\@DOI\empty\relax
    \else
    {\def\@urlcolor{Maroon!20}
        \textsc{doi:} \href{https://doi.org/\@DOI}{\@DOI}.\fi }
}
%    \end{macrocode} 
% Say \verb"\DOI{xxx}", and then later \verb"\printDOI" where you want it printed.
%
%	\begin{macro}{\covercitation}
% Gather the required information for the MLA cover citation and format it for output
%    \begin{macrocode}
\def\covercitation#1{\gdef\thecovercitation{#1}}
%
\covercitation{\@HSSAauthorname.  “\@HSSAarticletitle.” 
    \emph{\@HSSAtitle}, \@HSSAissuenum\ (\@HSSAissuedate): 
    \thefirstpage--\thelastpage. \printDOI }
%/DW
%    \end{macrocode}
%    \end{macro}

%    \begin{macrocode}
\def\fspace#1{\addfontfeature{LetterSpace=#1}}
%    \end{macrocode}

% \subsection{Customizing the sectioning commands}
% \begin{macro}{\section}
%    \begin{macrocode}
\setcounter{secnumdepth}{1}
\renewcommand\section{\@startsection {section}{1}{\z@}%
    {-18\p@ \@plus 6\p@ \@minus 3\p@}%
    {9\p@ \@plus 6\p@ \@minus 3\p@}%
    {\normalfont\centering\fspace{10}\MakeUppercase}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
    {-15\p@ \@plus 6\p@ \@minus 3\p@}%
    {6\p@ \@plus 6\p@ \@minus 3\p@}%
    %           {\normalfont\footnotesize\fspace{10}\centering\MakeUppercase}}
    {\normalfont\large\scshape\fspace{8}\centering\MakeLowercase}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
    {-15\p@ \@plus 6\p@ \@minus 3\p@}%
    {\p@}%
    {\normalfont\normalsize\itshape\centering}}
%    \end{macrocode}
%\end{macro}

% \subsection{Collecting the page-number information}
%    \begin{macrocode}
\def\HSSAfirstpage#1{\gdef\thefirstpage{#1}}
\def\HSSAlastpage#1{\gdef\thelastpage{#1}}
% Initialize the values:
\HSSAfirstpage{000}
\HSSAlastpage{999}
%    \end{macrocode}

% \subsection{Creative Commons logo}
%    \begin{macrocode}
\newbox\cclogobox
\global\setbox\cclogobox=\hbox{%
    \includegraphics[width=10mm]{/home/dom/Dropbox/localtexmf/tex/HSSA/cc-by-sa.eps}}
%    \end{macrocode}

% \subsection{Tweak tabular layout}
%    \begin{macrocode}
\newcommand\arraybslash{\let\\\@arraycr}
\setlength\tabcolsep{1mm}
\renewcommand\arraystretch{1.3}
%    \end{macrocode}

%    \begin{macrocode}
\RequirePackage{xltxtra}
\emergencystretch=.1\columnwidth 
%    \end{macrocode}

% \subsection{Not used}
% Legacy code to be thought about and probably weeded out.
%    \begin{macrocode}
%\HSSAjournalAbbrev{Hist.~Sci.~South Asia} 
\definecolor{bg}{HTML}{600000}
\colorlet{pagecolor}{bg}
\colorlet{urlcolor}{black!50}
\colorlet{endurlcolor}{pagecolor!30}
\colorlet{linkcolor}{black!50}
\colorlet{endscriptcolor}{pagecolor!20}
%    \end{macrocode}

% \subsection{PDF metadata}
% Commented out because it interferes with other stuff.
%    \begin{macrocode}
%    \pdfstringdef{\@temppdftitle}{\@HSSAarticletitle}
%    \pdfstringdef{\@temppdfauthor}{\@HSSAauthorname}
%    \pdfinfo{%
%        % copying out title because of macro expansion problems
%              /Title (\@temppdftitle)
%              /Author (\@temppdfauthor)
%        /Keywords (DOI: https://doi.org/\@DOI)
%    }
%}
%    \end{macrocode}
% The \verb"pdfx" package clashes with using \verb"\hypersetup" to embed XMP 
%data. Commented out.
%    \begin{macrocode}
%\usepackage[a-1b]{pdfx} % get an archival PDF
% optionally, create a file \jobname.xmpdata with \Author{} \Title{} \Copyright{} 
% \CopyrightURL{} \Keywords{}
%    \end{macrocode}

% \subsection{Hypertext links}
%  \begin{macro}{\hypersetup}
% Settings for hypertext links, used by \verb"hyperref".  These settings also include
% \verb"hyperxmp" settings to embed XMP metadata in the PDF.
% The \verb"\@" macros don't expand at the right time.  A problem for another day.  
% In any case, hyperxmp seems to get more or less the right data 
% from \verb"\author" etc.
%    \begin{macrocode}
\hypersetup{colorlinks=true, 
    bookmarksopen=false,
    pdfpagescrop={39 62 554 759},
    % now hyperxmp settings:
%    pdfauthor={\@HSSAauthorname},
%    pdftitle={\@HSSAarticletitle},
    pdfcopyright={\copyright\ The Author},
%    pdfdoi={\@DOI },
%    pdfurl={https://doi.org/\@DOI},
    pdfissn={2369-775X},
    pdflicenseurl={https://creativecommons.org/licenses/by-sa/4.0/},
    pdfpublication={History of Science in South Asia},
    pdfcaptionwriter={Dominik Wujastyk},
    pdfurl={https://journals.library.ualberta.ca/hssa/},
    pdfpublisher={University of Alberta Library},
    pdfpubtype={journal},
    pdfpubstatus={VoR}, % Version of Record
}
%    \end{macrocode}
%  \end{macro}

% \subsection{Simple indented, environment for Sanskrit verses}
%	\begin{macro}{\begin{sloka}}
%    \begin{macrocode}
%\newenvironment{sloka}
% {\list{}{\rightmargin\leftmargin}%
%    \item\relax}
%{\endlist}
%
\newenvironment{sloka} % tweaked from verse
{\let\\\@centercr
    \parindent 1em
    \leavevmode \hskip-.03em
    %    \rightmargin \leftmargin
    %    \advance \leftmargin 10em
    %   \advance\leftskip 2em
    %    \advance\rightskip 2em
    %\narrower 
}
{\relax }
%    \end{macrocode}
%	\end{macro}

%\subsection{Diatop}
% \begin{macro}{\diatop}
% \verb"\diatop", used for r underdot overbar (ṝ, F6, 246)
% See Conference Proceedings, \emph{TeXniques} no.\,5, p.\,11.
%    \begin{macrocode}
    \def\diatop[#1|#2]{\leavevmode{\setbox1=\hbox{{#1{}}}\setbox2=\hbox{{#2{}}}%
        \dimen0=\ifdim\wd1>\wd2\wd1\else\wd2\fi%
        \dimen1=\ht2\advance\dimen1by-1ex%
        \setbox1=\hbox to1\dimen0{\hss#1\hss}%
        \rlap{\raise1\dimen1\box1}%
        \hbox to1\dimen0{\hss#2\hss}}}%
%    \end{macrocode}
%E.g. of use: \verb/\diatop[\'|{\=o}]/ gives o macron acute.
%	\end{macro}
%

% \subsubsection{Unknown}
% Again, what's this?
% ``get rid of the alphabetic headers''?
%    \begin{macrocode}
    \newcommand{\lettergroup}[1]{\smallskip } 
%    \end{macrocode}

% \subsection{Mini edition environment}
%
%	\begin{macro}{miniedition}
% Documented at 
%\href{https://cikitsa.blogspot.com/2017/08/mini-edition-environment-for-latex.html}{the
% Cikitsā blog.}
% 
% First make a hanging footnote setup to use for these minipage notes:
%    \begin{macrocode}
% nice hanging-indent footnotes.  LaTeX Companion, p.73:
\def\hangfootnotes{%
    \renewcommand{\@makefntext}[1]{\setlength{\parindent}{0pt}%
              \begin{list}{}{\setlength{\labelwidth}{1.5em}%
                \setlength{\leftmargin}{\labelwidth}%
                \setlength{\labelsep}{3pt}\setlength{\itemsep}{0pt}%
                \setlength{\parsep}{0pt}\setlength{\topsep}{0pt}%
                \footnotesize}\item[\hfill\@makefnmark]##1%
    \end{list}}%
}
%    \end{macrocode}
%    \begin{macrocode}
\newenvironment{miniedition}
    {\begin{quote} 
            \addtolength{\textwidth}{-2\rightmargin} % width of the quote environment
            \begin{minipage}{\textwidth}
                \let\footnoterule\relax  % if you want a rule, comment out this line.
                \hangfootnotes
               % \let\footnote\originalfootnote 
            }
            {\end{minipage}
        \end{quote}
    }
%    \end{macrocode}
% Resetting \verb"\footnote" to \verb"\originalfootnote" is no longer needed. 
% Standard non-reledmac \LaTeX\ footnotes are now 
% restored by the \verb"\@minipagerestore" hook in the file 
% \verb"hssa-reledmac.sty".
%	\end{macro}

%  \subsection{Index of Manuscripts}
%
%    \begin{macro}{\MScite} 
% The command \verb"\MScite" is defined in \verb"hssa-indexing.sty" that
% is loaded earlier in this file.
% 
%Usage:
%
%\begin{verbatim}
% \MScite{City Library Accession no.}
% \MScite{London Wellcome Indic alpha 23}            
% \printindex[manuscripts]
%\end{verbatim}
%    \end{macro}

\endinput
