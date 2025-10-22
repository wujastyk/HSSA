% This class file has just the minimum page setup with no frills.  This is
% for use with parts of a document that will be typeset separately
% from the main document and then included using pdfpages.
%
% Extracts from hssa.cls:
%
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
\usepackage{xelatex-glossaries}
\RequirePackage{ %
    graphicx,
    amsmath,
    amsfonts,
    amssymb,
    textcomp, % arcane LaTeX/NFSS system for subsetting encodings.  Needed 
    %for 
    % Sigma.
    metalogox, % for the XeTeX logo etc.
    wasysym,
    hyperref, 
    %hyperxmp, % to embed XMP metadata in the PDF;removed because too 
    %%pernickety
    geometry,
    array,
    longtable,
    polyglossia,  % polyglossia calls fontspec
    multicol,
    booktabs, % better table spacing, \toprule etc.
    textcase, % to get \MakeTextLowercase for tweaking the running footer
    fancyhdr,
    hssa-biblatex, % bibliography management and formatting
}
%    \end{macrocode}
%  \end{macro}
%
%  \begin{macro}{xcolor}
% Settings for the \verb"xcolor" package
%    \begin{macrocode}
\RequirePackage[xetex,
dvipdfmx,
svgnames,
table]
{xcolor}
%    \end{macrocode}
%  \end{macro}%\font\largefont = cmr10 scaled \magstep5   
%
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
%
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
%textsize=small,
loadshadowlibrary,
shadow,
backgroundcolor=yellow]{todonotes}
\setuptodonotes{fancyline} 
%
\newcommand{\q}[1]{{}\todo{\footnotesize #1}{}}
%    \end{macrocode}
% \end{macro}
%
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
% (\verb"\\") that can cause trouble.  This happened in Speziale 2019.  I still 
%don't know
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
%
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
%
%\begin{macro}{\HSSAverso}
% Variable that collects the page header of the verso pages.
%    \begin{macrocode}
\def\HSSAverso#1{\gdef\@HSSAverso{#1}}
%    \end{macrocode}
%\end{macro}
%
% 	 \begin{macro}{\HSSArecto}
% Ditto for the recto, and initialize them both to nothing.
%    \begin{macrocode}    
\def\HSSArecto#1{\gdef\@HSSArecto{#1}}
\let\@HSSAverso\@empty
\let\@HSSArecto\@empty
%    \end{macrocode}
%\end{macro}
%
% Now the HSSA journal running headers, footers and cover citation.
% Set the shorttitle to be the same as \verb"\HSSAverso" unless the author
% redefines it in the document preamble.
%    \begin{macrocode}
\HSSAverso{\@HSSAarticletitle }
\let\HSSAshorttitle\HSSAverso 
\HSSArecto{\@HSSAauthorname }
%    \end{macrocode}
%\end{macro}
%
%\begin{macro}{\@HSSAheaderfooterfont}
% Set up the font that will be used for running headers and footers.  Small caps,
% and a bit of extra space, 7\%, of the font's point size, 
% between each letter (LetterSpace is from fontspec).
%    \begin{macrocode}
\def\@HSSAheaderfooterfont{\scshape\addfontfeature{LetterSpace=7}}
%    \end{macrocode}
%\end{macro}
%
%\begin{macro}{\HSSAfooter}
% Use the \verb"\MakeTextLowercase" macro from the \verb"textcase" package 
%and construct the running footer for each page.
%    \begin{macrocode}
\HSSAfooter{\MakeTextLowercase{\@HSSAtitle}\ \@HSSAissuenum\ 
    (\@HSSAissuedate) \thefirstpage--\thelastpage}
%    \end{macrocode}
%
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
    \fancyfoot[L]{\copy\cclogobox \tiny\textenglish{\@HSSAheaderfooterfont \\
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
%
% skip the cover and intro page stuff from hssa.cls
% then continue:
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
% skip more stuff
%
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%% now setup stuff from hssa.sty
%
% \subsubsection{British English, Greek, Sanskrit}
%    \begin{macrocode}
\setdefaultlanguage[variant=british]{english}
%\setotherlanguage{japanese} % still experimental in Polyglossia
\setotherlanguage{greek}
\setotherlanguage{sanskrit}
\setotherlanguage{arabic}
%    \end{macrocode}
%
% \subsubsection{\TeX\ Gyre Pagella, the default roman font for HSSA}
%    \begin{macrocode}
\setmainfont[Ligatures=TeX,
Mapping=tex-text,
Numbers=OldStyle]{TeX Gyre Pagella}
%\setmainfont[Scale=1.05]{Alegreya} % quite nice; superscripts not smaller
%\setmainfont{Libertinus Serif} % looks good; does math
%    \end{macrocode}
%
% \subsubsection{Sanskrit input in Devanagari script}
%    \begin{macrocode}
\newfontfamily\sanskritfont[Script=Devanagari,
%Mapping=RomDev,
FakeStretch=1.08, % improves Sanskrit 2003
AutoFakeBold=1.5,
]
{Sanskrit 2003} 
%  {Murty Sanskrit}
\let\dn\sanskritfont %for legacy Velthuis-encoded documents
%    \end{macrocode}
%
% \subsubsection{Sanskrit input in IAST script, output in Devanagari}
%    \begin{macrocode}% Sanskrit input in IAST
\newfontfamily\devanagarifont[Script=Devanagari,
Mapping=RomDev,
FakeStretch=1.08, % improves Sanskrit 2003
AutoFakeBold=2.5,
]
%  {Murty Sanskrit}
{Sanskrit 2003} 
\newcommand{\dev}[1]{{\devanagarifont#1}}
%\newcommand{\dev}[1]{\textdevanagari{#1}}
\newcommand{\largesloka}[1]{{\raggedright \devanagarifont\large #1\par}}
%    \end{macrocode}
%
% \subsubsection{Chinese}
%    \begin{macrocode}
\newfontfamily\cjk[Script=CJK,Mapping=tex-text,Scale=MatchLowercase]
%{IPAexMincho} % missing 說
%{TakaoPGothic}
{Yu Mincho}
%
%    \end{macrocode}
%
% \subsubsection{Arabic}
%    \begin{macrocode}
\newfontfamily\arabicfont[Script=Arabic,
Scale=MatchLowercase]
{Noto Naskh Arabic}
%
%    \end{macrocode}
%
% \subsubsection{Greek font}
%    \begin{macrocode}% Greek
\newfontfamily\greekfont[Script=Greek,
%    Mapping=tex-text,
AutoFakeBold=1.5,
Scale=MatchUppercase]
{GFS Porson}
%{GFS Didot}
%    \end{macrocode}
% See 
%\href{https://tex.stackexchange.com/questions/127222/fonts-for-polytonic-greek}{Stackexchange
% about Greek fonts}.
%
%\bigskip
% \subsection{Local generic author-facing macros}
% \begin{macro}{\bce, \ce, \BCE, \CE}
%    \begin{macrocode}
\def\bce{\textsc{bce}} % I took out the final \xspace 
% because it's behaviour is hard to predict - DW
\def\ce{\textsc{ce}} % ditto.
\let\BC\bce \let\BCE\bce \let\AD\ce \let\CE\ce
%    \end{macrocode}
% \end{macro}
% \subsection{Simple indented, environment for Sanskrit verses}
%	\begin{environment}{sloka}
%    \begin{macrocode}
%\newenvironment{sloka}
% {\list{}{\rightmargin\leftmargin}%
%    \item\relax}
%{\endlist}
%
\newenvironment{sloka} % tweaked from verse
{\let\\\@centercr
    \parindent 1em
    \leavevmode 
    \indent
    \hskip-.04em
    %    \rightmargin \leftmargin
    %    \advance \leftmargin 10em
    %   \advance\leftskip 2em
    %    \advance\rightskip 2em
    %\narrower 
}
{\relax }
%    \end{macrocode}
%	\end{environment}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Now from incremental-SS-translation.sty
% Make a new environment for the translation with tweaked spacing,
% the enumitem way:
%    \begin{macrocode}
\newlist{translation}{enumerate}{2}
\setlist[translation]{%
    label=\textbullet,
    noitemsep,
    left=0pt .. \parindent}
%    \end{macrocode}
%  \end{environment}
%
% \subsection{Marking differences}
%  \begin{macro}{\diff}
% Mark significant differences in the translation of the 
% Nepalese text.
%    \begin{macrocode}
\newcommand{\diff}[1]{\textcolor{red}{#1}}
%    \end{macrocode}
%    \end{macro}
%
%   \begin{macro}{\Su}
% This creates references to the \emph{Suśrutasaṃhitā} vulgate text, like this:
% 
% \begin{quote}
%  \verb|\Su{2.5}{564}| generates “2.5 (Su 1938: 564)”
% \end{quote}%
% \noindent 
% \#1 = the canonical reference (sthāna, adhyāya, verse)\\
% \#2 = page number in Ācārya's third edition
%
% Later, when we've got our own numbers for our Nepalese edition, 
% we may decide to add them as a third argument.
%
% Here's the definition:
%    \begin{macrocode}
\newcommand{\Su}[2]{#1 \parencite[#2]{vulgate}}
%    \end{macrocode}
%  \end{macro}
%
%  \begin{macro}{\As, \Ah, \Cakra, \Dalhana, \Ka}
% The same idea, for the \emph{Aṣṭāṅgasaṅgraha} vulgate by Aṭhāvale 
% and other standard editions:
%    \begin{macrocode}
\newcommand{\As}[2]{#1a \citep[#2]{atha-1980}} 
%    \end{macrocode}
% \noindent \#1 = canonical
% \\ \#2 = page of Aṭhāvale's edition
%
%    \begin{macrocode}
\newcommand{\Ah}[2]{#1 \citep[#2]{kunt-1939}} % references to the 
%\emph{Hṛdaya}, 
%    \end{macrocode}
% \noindent  \#1 = canonical
% \\ \#2 = page of Kunte and Navare's 6th edition
%
%    \begin{macrocode}
\newcommand{\Cakra}[2]{Cakrapāṇidatta on #1 \citep[#2]{acar-1939}} % 
%    \end{macrocode}
% references to the 1939 ed, \emph{Bhānumatī} 
% \\ \#1 = canonical
% \\ \#2 = page of edition
%
%    \begin{macrocode}
\newcommand{\Dalhana}[2]{Ḍalhaṇa on #1 \citep[#2]{vulgate}} 
%    \end{macrocode}
% references to the 1938$^2$ ed, 
% \\ \#1 = canonical
% \\ \#2 = page of edition
%    \begin{macrocode}
\newcommand{\Ka}[2]{#1 \citep[#2]{hema-1938}} 
%    \end{macrocode}
% \noindent \#1 = canonical
% \\ \#2 = page of Hemarājaśarman's edition
%    \end{macro}
%
% \subsection{Names of works}
%  \begin{macro}{\AH, \AS, \SS, \AHS}
% Some simple shortcuts for the names of texts.
%    \begin{macrocode}
\providecommand{\SS}{\emph{Suśrutasaṃhitā}}
\providecommand{\AS}{\emph{Aṣṭāṅgasaṅgraha}}
\providecommand{\AHS}{\emph{Aṣṭāṅgahṛdayasaṃhitā}}
\providecommand{\AH}{\emph{Aṣṭāṅgahṛdayasaṃhitā}}
\providecommand{\CS}{\emph{Carakasaṃhitā}}
%    \end{macrocode}
%    \end{macro}
%
% \subsection{Citing Sanskrit words in the text}
%  \begin{macro}{\se, \sed, \seEngOnly}
% The main commands \verb|\saneng| and \verb|\sanengdev| are 
% defined elsewhere.  In xelatex-indexing-xindex.sty.  What we're doing
% here is just making some convenient shortcuts, \verb|\se| (“Sanskrit-English”)
% and \verb|\sed| “Sanskrit-English-Use Devanagari”.  These commands print
% the English word followed by the Sanskrit in parentheses.  
%
% They are used like this:
%\begin{quote}
%    \verb|\se{vāta}{wind}| generates “wind (\emph{vāta})”\\
%    \verb|\sed{vāta}{wind}| generates “wind (\dev{वात})”
%\end{quote}
%    \begin{macrocode}
\let\se\saneng  % just make typing a bit quicker
\newcommand{\sepl}[2] % crude pluralization, based on saneng in 
%xelatex-indexing-xelatex.sty
{#2s (\emph{#1})%
    \index[lexical]{#2@\MakeLowercase{#2}!#1@\emph{#1}}%
    \index[lexical]{#1@\emph{#1}!#2@\MakeLowercase{#2}}}
% crude pluralization
\let\sed\sanengdev % puts the Skt. in the text into Devanagari.
\providecommand{\seEngOnly}[2]{#2} % just print the English
%    \end{macrocode}
% Incidentally, they also send
% the words to the index at the back of the book.
% This is set up in the file xelatex-indexes.sty. 
%  \end{macro}



\setmainfont{TeX Gyre Pagella}