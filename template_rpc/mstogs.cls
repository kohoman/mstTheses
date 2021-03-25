%%
%% This is file `mstogs.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% theses.dtx  (with options: `mstogs')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from mstogs.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file theses.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mstogs}[2018/08/07 v4.0 %
   Missouri S&T Office of Graduate Studies Thesis/Dissertation Class]
\RequirePackage{ifthen}[2001/05/26]
\newboolean{timesfree}
\newboolean{timescomm}
\newboolean{double}
\newboolean{onehalf}
\newboolean{firstThesisOnlyChapter}
\newboolean{lofHeading}
\newboolean{lotHeading}
\DeclareOption{10pt}{%
\PassOptionsToClass{10pt}{report}%
}

\DeclareOption{11pt}{%
\PassOptionsToClass{11pt}{report}%
}

\DeclareOption{12pt}{%
\PassOptionsToClass{12pt}{report}%
}

\DeclareOption{times}{%
  \setboolean{timesfree}{true}%
}

\DeclareOption{timesmtp}{%
  \setboolean{timescomm}{true}%
}

\DeclareOption{doublespace}{%
  \setboolean{double}{true}
}

\DeclareOption{onehalfspace}{%
  \setboolean{onehalf}{true}%
}

\newif\ifchap  % true for chap option
  \chapfalse   % false by default
\DeclareOption{chap}{\chaptrue} % option to print "Chapter" at each new chapter

\ProcessOptions
\LoadClass{report}

\ifthenelse{\boolean{timescomm}}{%
  \RequirePackage{newtxtext}[2015/02/12]
  \RequirePackage{newtxmath}[2015/02/13]
}{}

\ifthenelse{\boolean{timesfree}}{%
  \RequirePackage{newtxtext}[2015/02/12]
  \RequirePackage{newtxmath}[2015/02/13]
}{}
\RequirePackage{geometry}[2008/12/21]
\geometry{letterpaper,total={6in,8.995in}}
\geometry{top=1.03125in,headheight=0.125in,headsep=0.3125in,left=1.515in}

\RequirePackage[american]{babel}[2008/07/06]
\RequirePackage{setspace}[2000/12/01]
\RequirePackage{amsmath}[2000/07/18] % ,amssymb
\RequirePackage{indentfirst}[1995/11/23]
\RequirePackage[noprefix]{nomencl}[2005/09/22]

\RequirePackage{titlesec}[2019/10/16]
\titleformat{\chapter}{\singlespacing\center\normalsize\bfseries\uppercase}%
  {\thechapter.}{.5em}{}[\doublespacing]
\titlespacing{\chapter}{0pt}{-0.4375in}{0.4375in}
\titleformat{\section}{\singlespacing\normalsize\bfseries\uppercase}%
  {\thesection.}{.5em}{}[\doublespacing]
\titlespacing{\section}{0pt}{3.5ex plus 1ex minus .2ex}{1.5ex plus .2ex}
\titleformat{\subsection}[runin]{\normalsize\bfseries}%
  {\thesubsection.}{0.5em}{}[.\hspace{0.5em}~]
\titlespacing{\subsection}{\parindent}{\parskip}{0pt}
\titleformat{\subsubsection}[runin]{\normalsize\bfseries}%
  {\thesubsubsection.}{0.5em}{}[.\hspace{0.5em}~]
\titlespacing{\subsubsection}{\parindent}{\parskip}{0pt}
\titleformat{\paragraph}[runin]{\normalsize\itshape}%
  {\theparagraph.}{0.5em}{}[.\hspace{0.5em}~]
\titlespacing{\paragraph}{\parindent}{\parskip}{0pt}

\RequirePackage[titles]{tocloft}[2017/08/31]
\RequirePackage{etoolbox}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{}\chead{}\rhead{\thepage}
\lfoot{}\cfoot{}\rfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

 %\RequirePackage[authoryear,sort]{natbib}[2000/07/24]

\RequirePackage[labelsep=period]{caption}[2011/11/02]
\RequirePackage[defaultlines=3,all]{nowidow}

\ifthenelse{\boolean{double}}%
{\newcommand{\paperbodysettings}{\doublespacing}}%
{\newcommand{\paperbodysettings}{}}

\ifthenelse{\boolean{onehalf}}%
{\renewcommand{\paperbodysettings}{\onehalfspacing}}%
{\renewcommand{\paperbodysettings}{}}

\def\nopagenumber{%
\thispagestyle{empty}%
}
\setlength{\parindent}{0.5in}

\setcounter{tocdepth}{3}
\addtocounter{secnumdepth}{2}

\newcommand{\ThesisAdvisor}[1]{\advisor{#1}}
\newcommand{\ThesisCommittee}[1]{\committee{#1}}

\newenvironment{ThesisTitlePage}[1]{%
  \ifthenelse{\equal{#1}{ms}}%
     {\thesistype{1}\GraduateDegree{MASTER OF SCIENCE}}%
     {\thesistype{2}\GraduateDegree{DOCTOR OF PHILOSOPHY}}}%
{\titlepage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \def\thesistitle#1{\gdef\@thesistitle{#1}}
 \def\author#1{\gdef\@author{#1}}
 % ... added koh, 2017/03/15 ...
 \def\advisor#1{\gdef\@advisor{#1}}
 \def\committee#1{\gdef\@committee{#1}}
 \newcount\numdeg \numdeg=1
 \def\thesistype#1{\numdeg=#1}
 % ... end of added commands (koh, 2017/03/15) ...
 \def\GraduateDegree#1{\gdef\@GraduateDegree{#1}}
 \def\department#1{\gdef\@department{#1}}
 \def\copyrightyear#1{\gdef\@copyrightyear{#1}} \copyrightyear{\the\year}
 \def\graddate#1{\gdef\@graddate{#1}}

\newcount\numcount

\def\titlepage{%

  \ifnum\numdeg<2 \typeout{---------------Masters Thesis----------}

     \thispagestyle{empty}
     \mbox{}\vspace*{\fill}
     \begin{singlespace}
     \begin{center}
         \parindent=0pt
         \vspace*{-0.25in} % ... koh (2011/09/06) ...
        \begin{doublespace}
        {\uppercase\expandafter{\@thesistitle}}\\ [24pt]
         by \\ [24pt]
         {\uppercase\expandafter{\@author}}\\ [24pt]
         \end{doublespace}
         A THESIS \\[12pt]
         Presented to the Graduate Faculty of the\\ [18pt]
         MISSOURI UNIVERSITY OF SCIENCE AND TECHNOLOGY\\ [18pt]
         In Partial Fulfillment of the Requirements for the Degree\\[24pt]
         \uppercase\expandafter{\@GraduateDegree}\\[18pt]
         ~in~\\[18pt]%
         \uppercase\expandafter{\@department} \\[18pt]
         \@graddate\\[18pt]
         Approved by:\\
     \vspace*{0.375in}
     \end{center}
     \begin{center}
        \begin{minipage}{5in}
          \begin{center}\begin{onehalfspacing}
          \@advisor\\
          \@committee\\
          \end{onehalfspacing}\end{center}
        \end{minipage}
     \end{center}
     \end{singlespace}
     \vspace*{\fill}
     \newpage
     \pagestyle{myheadings}
     \pagenumbering{roman}
     \setcounter{page}{2}

  \else  \typeout{---------------Doctoral Thesis----------}

     \thispagestyle{empty}
     \mbox{}\vspace*{\fill}
     \begin{singlespace}
     \begin{center}
         \parindent=0pt
         \vspace*{-0.25in}
        \begin{doublespace}
        {\uppercase\expandafter{\@thesistitle}}\\ [20pt]
         by \\ [20pt]
         {\uppercase\expandafter{\@author}}\\ [20pt]
         \end{doublespace}
         A DISSERTATION \\[18pt]
         Presented to the Graduate Faculty of the\\ [18pt]
         MISSOURI UNIVERSITY OF SCIENCE AND TECHNOLOGY\\ [18pt]
         In Partial Fulfillment of the Requirements for the Degree\\[24pt]
         \uppercase\expandafter{\@GraduateDegree}\\[18pt]
         ~in~\\[18pt]%
         \uppercase\expandafter{\@department} \\[18pt]
         \@graddate\\[18pt]
         Approved by:\\
     \vspace*{0.3in}
     \end{center}
        \begin{center}
        \begin{minipage}{5in}
          \begin{center}\begin{onehalfspacing}
          \@advisor\\
          \@committee\\
          \end{onehalfspacing}\end{center}
        \end{minipage}
        \end{center}
      \end{singlespace}
     \vspace*{\fill}
     \newpage
     \pagestyle{myheadings}
     \pagenumbering{roman}
     \setcounter{page}{2}

  \fi
  }

\newcommand{\ThesisDissertationType}{thesis}

\newcommand{\ThesisCopyrightPage}[1]{%
  \ifthenelse{\equal{#1}{true}}%
    {\copyrightpage}%
  {\thispagestyle{empty}\vspace*{1in}\vfill\eject}%
}

\newenvironment{ThesisPublicationOption}[1]{%
  \ifthenelse{\equal{#1}{ms}}%
    {\chapter*{Publication Thesis Option}%
      \addcontentsline{toc}{chapter}{PUBLICATION THESIS OPTION}}%
    {\chapter*{Publication Dissertation Option}
      \addcontentsline{toc}{chapter}{PUBLICATION DISSERTATION
        OPTION}
      \renewcommand{\ThesisDissertationType}{dissertation}}%
}{}

\newenvironment{ThesisAbstract}{%
  \chapter*{ABSTRACT}%
  \addcontentsline{toc}{chapter}{ABSTRACT}%
}{}

\newenvironment{ThesisAcknowledgment}{%
  \chapter*{ACKNOWLEDGMENTS}%
  \addcontentsline{toc}{chapter}{ACKNOWLEDGMENTS}%
}{}

\newenvironment{ThesisFrontMatter}{}{%
  \addtocontents{toc}{\protect\vspace{4ex}}%
  \addtocontents{toc}{\hbox to \textwidth{{}{SECTION\ \hfill}}}%
}

\def\copyrightpage{
    \hbox{ }
    \thispagestyle{empty}
    \vfill
    \begin{center}
     Copyright \@copyrightyear \\
    \@author \\
    All Rights Reserved \\ [12pt]
    \end{center}
    \clearpage}

\patchcmd{\l@section}{#1}{\MakeUppercase{#1}}{}{}

\renewcommand{\cftdotsep}{1}
\newlength{\msttocindent}
\setlength{\msttocindent}{0.5in}
\addtolength{\cftchapindent}{\msttocindent}
\renewcommand{\cftchapaftersnum}{.}
\renewcommand{\cftsecaftersnum}{.}
\renewcommand{\cftsubsecaftersnum}{.}
\renewcommand{\cftsubsubsecaftersnum}{.}
\renewcommand{\cftfigaftersnum}{.}
\renewcommand{\cfttabaftersnum}{.}

%% ... added (2021/02/18,koh) - begin ...

\renewcommand{\cftchapafterpnum}{\vskip10pt}
\renewcommand{\cftsecafterpnum}{\vskip10pt}
\renewcommand{\cftsubsecafterpnum}{\vskip10pt}
\renewcommand{\cftsubsubsecafterpnum}{\vskip10pt}
\renewcommand{\cftfigafterpnum}{\vskip10pt}
\renewcommand{\cfttabafterpnum}{\vskip10pt}

%% ... end (2021/02/18,koh) ...

\cftsetrmarg{0.5in}

\newcommand{\Thesistocentry}[1]{%
\addtocontents{toc}{\protect\vspace{4ex}}
\addtocontents{toc}%
{\hbox to \textwidth{{} \hspace*{-2mm}{{#1} \ \hfill}}}
}

\renewcommand{\tableofcontents}{%
  \renewcommand{\contentsname}{TABLE OF CONTENTS}
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{\contentsname
      \@mkboth{\uppercase{\contentsname}}{\uppercase{\contentsname}}}
  \vspace*{-0.375in}
  \hbox to \textwidth{{} \hspace*{-2mm}{\ \hfill Page}}
  \singlespacing\setlength{\parskip}{10\p@}
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi
  \setlength{\parskip}{0pt}\doublespacing% ... added by koh ...
  }

\setlength{\cftfigindent}{0pt}
\setlength{\cfttabindent}{0pt}

\renewcommand{\listoffigures}{%
  \newpage%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \addcontentsline{toc}{chapter}{LIST OF ILLUSTRATIONS}
  \renewcommand{\listfigurename}{LIST OF ILLUSTRATIONS}
  \chapter*{\listfigurename
    \@mkboth{\uppercase{\listfigurename}}%
            {\uppercase{\listfigurename}}}%
  \vspace*{-0.375in}
  \hbox to \textwidth{{} \hspace*{-2mm}{Figure \ \hfill Page}}
  \singlespacing\setlength{\parskip}{10\p@}
  \@starttoc{lof}%
  \if@restonecol\twocolumn\fi
  \setlength{\parskip}{0pt}\doublespacing% ... added by koh ...
  }

\renewcommand{\listoftables}{%
  \newpage%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \addcontentsline{toc}{chapter}{LIST OF TABLES}
  \renewcommand{\listtablename}{LIST OF TABLES}
  \chapter*{\listtablename
    \@mkboth{\uppercase{\listtablename}}{\uppercase{\listtablename}}}%
  \vspace*{-0.375in}
  \hbox to \textwidth{{} \hspace*{-2mm}{Table \ \hfill Page}}
  \singlespacing\setlength{\parskip}{10\p@}
  \@starttoc{lot}%
  \if@restonecol\twocolumn\fi
  \setlength{\parskip}{0pt}\doublespacing% ... added by koh ...
  }

\newcommand{\listofsymbols}{%
  \newpage%
  \addcontentsline{toc}{chapter}{NOMENCLATURE}%
  \renewcommand{\nomname}{NOMENCLATURE}%
  \printnomenclature%
}

\newenvironment{ThesisBody}{%
  \newpage%
  \pagenumbering{arabic}%
  \setcounter{page}{1}
  \addtolength{\textfloatsep}{+0.28125in}%
}{}

\newenvironment{ThesisPublications}%
  {\Thesistocentry{PAPER}%
  \renewcommand*{\thesection}{\arabic{section}}
  \renewcommand{\thefigure}{\arabic{figure}}
  \renewcommand{\thetable}{\arabic{table}}
  \renewcommand{\theequation}{\arabic{equation}}
\titleformat{\section}{\singlespacing\center\normalsize\bfseries\uppercase}%
  {\thesection.}{.5em}{}[\doublespacing]
\titleformat{\subsection}{\singlespacing\normalsize\bfseries}%
  {\thesubsection.}{0.5em}{}[\doublespacing]
\titlespacing{\subsection}{0pt}{3.5ex plus 1ex minus .2ex}{1.5ex plus .2ex}
\titleformat{\subsubsection}[runin]{\normalsize\bfseries}%
  {\thesubsubsection.}{0.5em}{}[.\hspace{0.5em}~]
\titlespacing{\subsubsection}{\parindent}{\parskip}{0pt}
\titleformat{\paragraph}[runin]{\normalsize\bfseries}%
  {\theparagraph.}{0.5em}{}[.\hspace{0.5em}~]
\titlespacing{\paragraph}{\parindent}{\parskip}{0pt}
  }%
  {\newpage\addtocontents{toc}{\protect\vspace{4ex}}%
  \addtocontents{toc}{\hbox to \textwidth{{}\hspace*{-2mm}%
    {SECTION\ \hfill}}}
\titleformat{\section}{\singlespacing\normalsize\bfseries\uppercase}%
  {\thesection.}{.5em}{}[\doublespacing]
\titlespacing{\section}{0pt}{3.5ex plus 1ex minus .2ex}{1.5ex plus .2ex}
\titleformat{\subsection}[runin]{\normalsize\bfseries}%
  {\thesubsection.}{0.5em}{}[.\hspace{0.5em}~]
\titlespacing{\subsection}{\parindent}{\parskip}{0pt}
\titleformat{\subsubsection}[runin]{\normalsize\bfseries}%
  {\thesubsubsection.}{0.5em}{}[.\hspace{0.5em}~]
\titlespacing{\subsubsection}{\parindent}{\parskip}{0pt}
\titleformat{\paragraph}[runin]{\normalsize\itshape}%
  {\theparagraph.}{0.5em}{}[.\hspace{0.5em}~]
\titlespacing{\paragraph}{\parindent}{\parskip}{0pt}
}

\newenvironment{ThesisOnlyChapters}[2]{%
   \setboolean{lofHeading}{#1}%
   \setboolean{lotHeading}{#2}%
   \ifthenelse{\boolean{lofHeading}}{%
     \ThesisListofEntry{lof}{SECTION}%
     \addtocontents{lof}{\protect\addvspace{10\p@}}% (2021/02/20,koh)
   }{}%
   \ifthenelse{\boolean{lotHeading}}{%
     \ThesisListofEntry{lot}{SECTION}%
     \addtocontents{lot}{\protect\addvspace{10\p@}}% (2021/02/20,koh)
   }{}%
   \setboolean{firstThesisOnlyChapter}{true}}{}

\newcommand{\ThesisListofEntry}[2]{%
\addtocontents{#1}{\protect\vspace{2ex}}
\addtocontents{#1}%
{\hbox to \textwidth{{} \hspace*{-2mm}{{#2} \ \hfill}}}
}
\newcommand{\PaperManuscript}[2]{%
  \ifthenelse{\equal{#1}{I}}
    {\chapter*{PAPER \\ \ \\ \ \\ \ \\ \ \\#1. #2}}
    {\chapter*{#1. #2}}%
    \addcontentsline{toc}{chapter}{\protect\numberline{#1.}#2}%
    \addtocontents{toc}{\protect\addvspace{10\p@}}% (2021/02/20,koh)
    \ThesisListofEntry{lof}{PAPER #1}%
    \addtocontents{lof}{\protect\addvspace{10\p@}}% (2021/02/20,koh)
    \ThesisListofEntry{lot}{PAPER #1}%
    \addtocontents{lot}{\protect\addvspace{10\p@}}% (2021/02/20,koh)
    \setcounter{section}{0}
    \setcounter{figure}{0}
    \setcounter{table}{0}
    \setcounter{equation}{0}
}
\newcommand{\ThesisPaperAuthor}[1]{%
  \begin{center}\singlespacing#1\end{center}}
\newcommand{\ThesisPaperKeywords}[1]{\noindent\textbf{Keywords:} #1}
\newcommand{\ThesisPaperReferences}[1]{\bibliography{#1}}
\newenvironment{ThesisPaperAbstract}%
   {\vspace*{0.25in}\begin{center}\textbf{ABSTRACT}\end{center} %\\
    \addcontentsline{toc}{section}{ABSTRACT}
    \hspace{\parindent}}%
   {}

\newcommand{\ThesisBodyChapter}[1]{%
  \ifthenelse{\boolean{firstThesisOnlyChapter}}%
   {\titleformat{\chapter}[display]
      {\singlespacing\center\normalsize\bfseries}
      {\MakeUppercase{SECTION}}
      {3\baselineskip} % ... desired spacing (2021/03/12,koh)
      {\normalsize\thechapter. }
    \titleformat{name=\chapter,numberless}[display]
      {\singlespacing\center\normalsize\bfseries\uppercase}
      {}
      {0pt}
      {\normalsize}
    \chapter{\MakeUppercase{#1}}}
   {\chapter{#1}}% ... end of ifthenelse block ...
  \setboolean{firstThesisOnlyChapter}{false}
  \titleformat{\chapter}{\singlespacing\center\normalsize\bfseries\uppercase}%
    {\thechapter.}{.5em}{}[\doublespacing]
  \titlespacing{\chapter}{0pt}{-0.4375in}{0.4375in}
}

\newcommand{\ThesisAppendixChapter}[1]{\chapter{#1}}

\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                         {\protect\numberline{\thechapter.}#1}%
      \addtocontents{toc}{\protect\addvspace{10\p@}}% (2021/02/20,koh)
                    \else
                    \addcontentsline{toc}{chapter}{#1}%
      \addtocontents{toc}{\protect\addvspace{10\p@}}% (2021/02/20,koh)
                    \fi
                    \chaptermark{#1}%
                    \ifthenelse{\value{page}=1}{\thispagestyle{empty}}{}
                    %\addtocontents{lof}{\protect\addvspace{10\p@}}%
                    %\addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}

\renewcommand*{\l@chapter}[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@tocrmarg
      \parfillskip -\@tocrmarg
      \leavevmode %\bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
    \uppercase{#1}\nobreak \dotfill \nobreak\hbox to\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}



\newenvironment{ThesisAppendix}[3]{%
  \newpage%
  \captionsetup{list=no}
  \renewcommand{\thefigure}{\arabic{figure}}
  \renewcommand{\thetable}{\arabic{table}}
  \renewcommand{\theequation}{\arabic{equation}}
  \setboolean{lofHeading}{#2}
  \setboolean{lotHeading}{#3}
  \ifthenelse{\boolean{lofHeading}}{\ThesisListofEntry{lof}{APPENDIX}}{}%
  \ifthenelse{\boolean{lotHeading}}{\ThesisListofEntry{lot}{APPENDIX}}{}%
  \ifthenelse{\equal{#1}{one}}%
 % ... single chapter appendix ...
    {\setcounter{secnumdepth}{3}%
     \addcontentsline{toc}{chapter}{\MakeUppercase{Appendix}}%
     \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}%
     \titleformat{\chapter}{\center\normalsize\bfseries\uppercase}%
        {}{.5em}{APPENDIX  \\ \vspace*{0.125in}\ \\ \center}%
     \titlespacing{\chapter}{0pt}{-0.59375in}{0.4375in}%
     \renewcommand{\thesection}{\arabic{section}}%
     \titleformat{\section}{\normalsize\bfseries\uppercase}%
        {\thesection.}{.5em}{}%
     \titleformat{\subsection}[runin]{\normalsize\bfseries}%
        {\thesection.\arabic{subsection}.}{0.5em}%
        {}[.\hspace{0.5em}~]%
     \titlespacing{\subsection}{0pt}{3.5ex plus 1ex minus .2ex}{1.5ex plus .2ex}
     \titleformat{\subsubsection}[runin]%
       {\normalsize\bfseries}%
       {\thesection.\arabic{subsection}.\arabic{subsubsection}.}%
       {0.5em}{}[.\hspace{0.5em}~]}%
 % ... multiple chapter appendix ...
    {\addtocontents{toc}{\protect\setcounter{tocdepth}{0}}%
     \titleformat{\chapter}%[block]%
       {\vspace*{\stretch{1}}\center\normalsize\bfseries\uppercase}%
       {APPENDIX \thechapter.}{0em}%
 %      {\\~\\\nopagenumber}[\vspace*{\stretch{1}}\newpage]
       {\\ \nopagenumber}[\vspace*{\stretch{1}}\newpage] %(2021/03/25,koh)
 %      {\\~\\\hspace{-1in}\nopagenumber}[\vspace*{\stretch{1}}\newpage]
     %\titlespacing{\chapter}{0pt}{-0.5in}{0.6875in}
     \setcounter{secnumdepth}{4}% ... 4 = number paragraph headings ...
     \renewcommand{\thesection}{\arabic{section}}%
     \titleformat{\section}%
       {\singlespacing\center\normalsize\bfseries\uppercase}%
       {\thesection.}{.5em}{}[\doublespacing]%
     \titleformat{\subsection}%
       {\singlespacing\normalsize\bfseries\uppercase}%
       {\thesubsection.}{0.5em}{}[\doublespacing]%
     \titlespacing{\subsection}{0pt}{3.5ex plus 1ex minus .2ex}{1.5ex plus .2ex}
     \titleformat{\subsubsection}[runin]{\normalsize\bfseries}%
       {\thesubsubsection.}{0.5em}{}[.\hspace{0.5em}~]%
     \titlespacing{\subsubsection}{\parindent}{\parskip}{0pt}
     \titleformat{\paragraph}[runin]{\normalsize\bfseries}%
       {\theparagraph.}{0.5em}{}[.\hspace{0.5em}~]
     \titlespacing{\paragraph}{\parindent}{\parskip}{0pt}
     \Thesistocentry{APPENDICES}
     \appendix}%
}%
{\addtocontents{toc}{\protect\setcounter{tocdepth}{4}}%
}


\newenvironment{ThesisBibliography}[1]{%
  \renewcommand{\bibname}{REFERENCES}
  %\chapter*{#1} % ... added by koh ...
  \clearpage\addcontentsline{toc}{chapter}{#1}%
}{}

\newenvironment{ThesisPaperBibliography}[1]{%
  \renewcommand{\bibname}{REFERENCES}
  \titlespacing{\section}{0pt}{3.5ex plus 1ex minus .2ex}{3.5ex plus .2ex}
  %\section*{#1} % ... added by koh ...
      \addcontentsline{toc}{section}{#1}%
}{}

\renewenvironment{thebibliography}[1]
     {\@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \singlespacing\setlength{\parskip}{2pt} % ... added by koh ...
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist
      \doublespacing % ... added by koh, 2011/10/20 ...
}

\newenvironment{Vita}{%
  \chapter*{Vita}%
  \addcontentsline{toc}{chapter}{VITA}}{}

\renewcommand{\ps@plain}{%
  \renewcommand{\@oddhead}{\hfill\textrm{\thepage}}%
  \renewcommand{\@evenhead}{\@oddhead}%
  \renewcommand{\@evenfoot}{}%
  \renewcommand{\@oddfoot}{}}

\newcommand{\psplainreset}{\renewcommand{\ps@plain}{%
  \renewcommand{\@oddhead}{\hfill\textrm{\thepage}}%
  \renewcommand{\@evenhead}{\@oddhead}%
  \renewcommand{\@evenfoot}{}%
  \renewcommand{\@oddfoot}{}}
}


\renewcommand\@dotsep{4.5}

\endinput
%%
%% End of file `mstogs.cls'.
