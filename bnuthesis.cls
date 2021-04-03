%%
%% This is file `bnuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% bnuthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2005-2018 by Ruini Xue <xueruini@gmail.com>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{bnuthesis}
[2018/05/17 5.4.5 Beijing Normal University Thesis Template]
\hyphenation{bnu-Thesis}
\def\bnuthesis{\textsc{bnuThesis}}
\def\version{5.4.5}

\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=bnu,
  prefix=bnu@,
  setkeys=\kvsetkeys}
\newif\ifbnu@bachelor
\newif\ifbnu@master
\newif\ifbnu@doctor
\newif\ifbnu@postdoctor
\define@key{bnu}{degree}{%
  \bnu@bachelorfalse
  \bnu@masterfalse
  \bnu@doctorfalse
  \bnu@postdoctorfalse
  \expandafter\csname bnu@#1true\endcsname}
\define@key{bnu}{type}{%
  \ClassError{bnuthesis}{'type' is deprecated, \MessageBreak
                         please use 'degree=#1' instead}{}}
\def\bnu@deprecated@degree@option{%
  \ClassError{bnuthesis}{Option '\CurrentOption' is deprecated, \MessageBreak
                         please use 'degree=\CurrentOption' instead}{}}
\DeclareVoidOption{bachelor}{\bnu@deprecated@degree@option}
\DeclareVoidOption{master}{\bnu@deprecated@degree@option}
\DeclareVoidOption{doctor}{\bnu@deprecated@degree@option}
\DeclareVoidOption{postdoctor}{\bnu@deprecated@degree@option}
\DeclareBoolOption{secret}
\DeclareBoolOption{arialtoc}%后来加
%GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG
%\DeclareBoolOption{tocarialchapter}
%\DeclareBoolOption{tocarialchapterentry}
%\DeclareBoolOption{tocarialchapterpage}
%
%\DeclareBoolOption{tocarialsection}
%\DeclareBoolOption{tocarialsectionentry}
%\DeclareBoolOption{tocarialsectionpage}
%
%\DeclareBoolOption{tocarialsubsection}
%\DeclareBoolOption{tocarialsubsectionentry}
%\DeclareBoolOption{tocarialsubsectionpage}
%
%\DeclareBoolOption{tocarialsubsubsection}
%\DeclareBoolOption{tocarialsubsubsectionentry}
%\DeclareBoolOption{tocarialsubsubsectionpage}

\DeclareBoolOption{raggedbottom}
\DeclareBoolOption{pifootnote}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\kvsetkeys{bnu}{%
  raggedbottom}
\ProcessKeyvalOptions*
\ifbnu@bachelor\relax\else
  \ifbnu@master\relax\else
    \ifbnu@doctor\relax\else
      \ifbnu@postdoctor\relax\else
        \ClassError{bnuthesis}%
                   {Please specify thesis degree in option: \MessageBreak
                    degree=[bachelor | master | doctor | postdoctor]}{}
      \fi
    \fi
  \fi
\fi
\PassOptionsToPackage{no-math}{fontspec}
\LoadClass[a4paper,openany,UTF8,zihao=-4,scheme=plain]{ctexbook}
\RequirePackage{etoolbox}
\RequirePackage{ifxetex}
\RequirePackage{xparse}
\RequirePackage{amsmath}
\RequirePackage[defaultsups]{newtxtext}
\RequirePackage{newtxmath}
\RequirePackage{courier}
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{pdfpages}
\includepdfset{fitpaper=true}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{environ}
\RequirePackage{titlesec}%后来加
\RequirePackage{titletoc}%后来加
\ifbnu@raggedbottom
  \RequirePackage[bottom,perpage,hang]{footmisc}
  \raggedbottom
\else
  \RequirePackage[perpage,hang]{footmisc}
\fi
\ifbnu@pifootnote
  \RequirePackage{pifont}
\fi
\RequirePackage{CJKfntef}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage[sort&compress]{natbib}
\RequirePackage{hyperref}
\ifxetex
  \hypersetup{%
    CJKbookmarks=true}
\else
  \hypersetup{%
    unicode=true,
    CJKbookmarks=false}
\fi
\hypersetup{%
  linktoc=all,
  bookmarksnumbered=true,
  bookmarksopen=true,
  bookmarksopenlevel=1,
  breaklinks=true,
  colorlinks=false,
  plainpages=false,
  pdfborder=0 0 0}
\urlstyle{same}
\RequirePackage{geometry}
\geometry{
  a4paper, % 210 * 297mm
  hcentering,
  ignoreall,
  nomarginpar}
\ifbnu@bachelor
  \geometry{
    lmargin=25mm,
    rmargin=20mm,
    tmargin=25mm,
    bmargin=20mm,
    headheight=5mm,
    headsep=5mm,
    footskip=12mm}
\else
  \geometry{
    left=30mm,
    headheight=5mm,
    headsep=5mm,
    textheight=237mm,
    bottom=29mm,
    footskip=6mm}
\fi
\RequirePackage{fancyhdr}
\RequirePackage{notoccite}
\let\bnu@cleardoublepage\cleardoublepage
\newcommand{\bnu@clearemptydoublepage}{%
  \clearpage{\pagestyle{bnu@empty}\bnu@cleardoublepage}}
\let\cleardoublepage\bnu@clearemptydoublepage
\renewcommand\frontmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse
  \pagenumbering{Roman}
  \pagestyle{bnu@empty}}
\renewcommand\mainmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  \pagenumbering{arabic}
  \ifbnu@bachelor\pagestyle{bnu@plain}\else\pagestyle{bnu@headings}\fi}
\renewcommand\backmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue}
\newcommand\bnu@fontset{\csname g__ctex_fontset_tl\endcsname}

%-----------Windows下字体设置
\ifthenelse{\equal{\bnu@fontset}{windows}}{
  \ifxetex
    \setCJKsansfont{SimHei}
  \else
    \setCJKsansfont{simhei.ttf}
    \csname ctex_punct_map_family:nn\endcsname{\CJKsfdefault}{zhhei}
  \fi
}{}
%-----------Mac下字体设置
\ifthenelse{\equal{\bnu@fontset}{mac}}{
  \setCJKmainfont[
         UprightFont = * Light,
            BoldFont = * Bold,
          ItalicFont = Kaiti SC,
      BoldItalicFont = Kaiti SC Bold
    ]{Songti SC}
  \setCJKsansfont{Heiti SC}
  \setCJKfamilyfont{zhsong}[
         UprightFont = * Light,
            BoldFont = * Bold,
    ]{Songti SC}
  \setCJKfamilyfont{zhhei}{Heiti SC}
  \setCJKfamilyfont{zhkai}{Kaiti SC}
}{}

%----------------字号设置
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{20bp}%
  \abovedisplayskip=12bp \@plus 2bp \@minus 2bp
  \abovedisplayshortskip=12bp \@plus 2bp \@minus 2bp
  \belowdisplayskip=\abovedisplayskip
  \belowdisplayshortskip=\abovedisplayshortskip}
\def\bnu@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
\bnu@def@fontsize{chuhao}{42bp}
\bnu@def@fontsize{xiaochu}{36bp}
\bnu@def@fontsize{yihao}{26bp}
\bnu@def@fontsize{xiaoyi}{24bp}
\bnu@def@fontsize{erhao}{22bp}
\bnu@def@fontsize{xiaoer}{18bp}
\bnu@def@fontsize{sanhao}{16bp}
\bnu@def@fontsize{xiaosan}{15bp}
\bnu@def@fontsize{sihao}{14bp}
\bnu@def@fontsize{banxiaosi}{13bp}
\bnu@def@fontsize{xiaosi}{12bp}
\bnu@def@fontsize{dawu}{11bp}
\bnu@def@fontsize{wuhao}{10.5bp}
\bnu@def@fontsize{xiaowu}{9bp}
\bnu@def@fontsize{liuhao}{7.5bp}
\bnu@def@fontsize{xiaoliu}{6.5bp}
\bnu@def@fontsize{qihao}{5.5bp}
\bnu@def@fontsize{bahao}{5bp}
\fancypagestyle{bnu@empty}{%
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{bnu@plain}{%
  \fancyhead{}
  \fancyfoot[C]{\xiaowu\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{bnu@headings}{%
  \fancyhead{}
  \fancyhead[C]{\wuhao\normalfont\leftmark}
  \fancyfoot{}
  \fancyfoot[C]{\wuhao\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}}
\ctexset{%
  punct=quanjiao,
  space=auto,
  autoindent=true}
\setlist{nosep}
\def\bnu@textcircled#1{%
  \ifnum\value{#1} >9
    \ClassError{bnuthesis}%
      {Too many footnotes in this page.}{Keep footnote less than 10.}
  \fi
  \ifbnu@pifootnote%
    \ding{\the\numexpr\value{#1}+171\relax}%
  \else%
    \textcircled{\xiaoliu\arabic{#1}}%
  \fi}
\renewcommand{\thefootnote}{\bnu@textcircled{footnote}}
\renewcommand{\thempfootnote}{\bnu@textcircled{mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\let\bnu@footnotesize\footnotesize
\renewcommand\footnotesize{\bnu@footnotesize\xiaowu[1.5]}
\footnotemargin1.5em\relax
\let\bnu@makefnmark\@makefnmark
\def\bnu@@makefnmark{\hbox{{\normalfont\@thefnmark}}}
\pretocmd{\@makefntext}{\let\@makefnmark\bnu@@makefnmark}{}{}
\apptocmd{\@makefntext}{\let\@makefnmark\bnu@makefnmark}{}{}
\allowdisplaybreaks[4]
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\def\make@df@tag{\@ifstar\bnu@make@df@tag@@\make@df@tag@@@}
\def\bnu@make@df@tag@@#1{\gdef\df@tag{\bnu@maketag{#1}\def\@currentlabel{#1}}}
\iffalse
\ifbnu@bachelor
  \def\bnu@maketag#1{\maketag@@@{%
    (\ignorespaces\text{\equationname\hskip0.5em}#1\unskip\@@italiccorr)}}
  \def\tagform@#1{\maketag@@@{%
    (\ignorespaces\text{\equationname\hskip0.5em}#1\unskip\@@italiccorr)\equcaption{#1}}}
\fi
\fi
\def\bnu@maketag#1{\maketag@@@{(\ignorespaces #1\unskip\@@italiccorr)}}
\def\tagform@#1{\maketag@@@{(\ignorespaces #1\unskip\@@italiccorr)\equcaption{#1}}}
\renewcommand{\eqref}[1]{\textup{(\ref{#1})}}
\setlength{\floatsep}{20bp \@plus4pt \@minus1pt}
\setlength{\intextsep}{20bp \@plus4pt \@minus2pt}
\setlength{\textfloatsep}{20bp \@plus4pt \@minus2pt}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\ifbnu@bachelor
  \g@addto@macro\appendix{\renewcommand*{\thefigure}{\thechapter-\arabic{figure}}}
  \g@addto@macro\appendix{\renewcommand*{\thetable}{\thechapter-\arabic{table}}}
\fi
\let\old@tabular\@tabular
\def\bnu@tabular{\dawu[1.5]\old@tabular}
\DeclareCaptionLabelFormat{bnu}{{\dawu[1.5]\normalfont #1~#2}}
\DeclareCaptionLabelSeparator{bnu}{\hspace{1em}}
\DeclareCaptionFont{bnu}{\dawu[1.5]}
\captionsetup{labelformat=bnu,labelsep=bnu,font=bnu,skip=6bp}
\captionsetup[table]{position=top}
\captionsetup[figure]{position=bottom}
\captionsetup[sub]{font=bnu}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\let\bnu@LT@array\LT@array
\def\LT@array{\dawu[1.5]\bnu@LT@array} % set default font size
\def\hlinewd#1{%
  \noalign{\ifnum0=`}\fi\hrule \@height #1 \futurelet
    \reserved@a\@xhline}
\AtBeginDocument{%
  \pagestyle{bnu@empty}
  \renewcommand{\chaptermark}[1]{\@mkboth{\CTEXthechapter\hskip\ccwd#1}{}}}
\newcommand\bnu@chapter@titleformat[1]{%
  \ifbnu@bachelor #1\else%
    \ifthenelse%
      {\equal{#1}{\eabstractname}}%
      {\bfseries #1}%
      {#1}%
  \fi}
\ctexset{%
  chapter={
    afterindent=true,
    pagestyle={\ifbnu@bachelor bnu@plain\else bnu@headings\fi},
    beforeskip={\ifbnu@bachelor 15bp\else 9bp\fi},
    aftername=\hskip\ccwd,
    afterskip={\ifbnu@bachelor 20bp\else 24bp\fi},
    format={\centering\bfseries\sanhao[1]},
    nameformat=\relax,
    numberformat=\relax,
    titleformat=\bnu@chapter@titleformat,
    lofskip=0pt,
    lotskip=0pt,
  },
  section={
    afterindent=true,
    beforeskip={\ifbnu@bachelor 25bp\else 24bp\fi\@plus 1ex \@minus .2ex},
    afterskip={\ifbnu@bachelor 12bp\else 6bp\fi \@plus .2ex},
    %format={\sffamily\ifbnu@bachelor\sihao[1.286]\else\sihao[1.429]\fi},
    format={\bfseries\xiaosan},
  },
  subsection={
    afterindent=true,
    beforeskip={\ifbnu@bachelor 12bp\else 16bp\fi\@plus 1ex \@minus .2ex},
    afterskip={6bp \@plus .2ex},
    %format={\sffamily\ifbnu@bachelor\xiaosi[1.25]\else\banxiaosi[1.538]\fi},
    format={\bfseries\sihao},
    numberformat={\sffamily\ifbnu@bachelor\banxiaosi[1.154]\else\banxiaosi[1.538]\fi},
  },
  subsubsection={
    afterindent=true,
    beforeskip={\ifbnu@bachelor 12bp\else 16bp\fi\@plus 1ex \@minus .2ex},
    afterskip={6bp \@plus .2ex},
    format={\sffamily\ifbnu@bachelor\xiaosi[1.25]\else\xiaosi[1.667]\fi},
  },
  paragraph/afterindent=true,
  subparagraph/afterindent=true}
\newcounter{bnu@bookmark}
\NewDocumentCommand\bnu@chapter{s o m o}{
  \IfBooleanF{#1}{%
    \ClassError{bnuthesis}{You have to use the star form: \string\bnu@chapter*}{}
  }%
  \if@openright\cleardoublepage\else\clearpage\fi\phantomsection%
  \IfValueTF{#2}{%
    \ifthenelse{\equal{#2}{}}{%
      \addtocounter{bnu@bookmark}\@ne
      \pdfbookmark[0]{#3}{bnuchapter.\thebnu@bookmark}
    }{%
      \addcontentsline{toc}{chapter}{#3}
    }
  }{%
    \addcontentsline{toc}{chapter}{#3}
  }%
  \ifbnu@bachelor \ctexset{chapter/beforeskip=25bp} \fi
  \chapter*{#3}%
  \ifbnu@bachelor \ctexset{chapter/beforeskip=15bp} \fi
  \IfValueTF{#4}{%
    \ifthenelse{\equal{#4}{}}
    {\@mkboth{}{}}
    {\@mkboth{#4}{#4}}
  }{%
    \@mkboth{#3}{#3}
  }
}

%-------------------设置计数器---------------
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
%----------------------------------------------------------------------------------------
%定义目录格式
%\renewcommand\tableofcontents{%
%  \bnu@chapter*[]{\sanhao\contentsname}
%  \@starttoc{toc}\normalsize}
%%----------------------------------------------------------------------------------------
%\def\@pnumwidth{2em}
%\def\@tocrmarg{\@pnumwidth}
%\def\@dotsep{1}
%%定义一级标题格式
%\ifbnu@tocarialchapter
%  \bnu@tocarialchapterentrytrue\bnu@tocarialchapterpagetrue
%\fi
%\def\bnu@toc@chapter@entry@font{\ifbnu@tocarialchapterentry\heiti\sanhao\fi}
%\def\bnu@toc@chapter@page@font{\ifbnu@tocarialchapterpage\heiti\sanhao\fi}
%%定义二级标题格式
%\ifbnu@tocarialsection
%  \bnu@tocarialsectionentrytrue\bnu@tocarialsectionpagetrue
%\fi
%\def\bnu@toc@section@entry@font{\ifbnu@tocarialsectionentry\songti\xiaosan\fi}
%\def\bnu@toc@section@page@font{\ifbnu@tocarialsectionpage\songti\xiaosan\fi}
%%定义三级标题格式
%\ifbnu@tocarialsubsection
%  \bnu@tocarialsubsectionentrytrue\bnu@tocarialsubsectionpagetrue
%\fi
%\def\bnu@toc@subsection@entry@font{\ifbnu@tocarialsubsectionentry\heiti\sihao\fi}
%\def\bnu@toc@subsection@page@font{\ifbnu@tocarialsubsectionpage\heiti\sihao\fi}
%%定义四级标题格式
%\ifbnu@tocarialsubsubsection
%  \bnu@tocarialsubsubsectionentrytrue\bnu@tocarialsubsubsectionpagetrue
%\fi
%\def\bnu@toc@subsubsection@entry@font{\ifbnu@tocarialsubsubsectionentry\xiaosi\songti\fi}
%\def\bnu@toc@subsubsection@page@font{\ifbnu@tocarialsubsubsectionpage\xiaosi\songti\fi}
%%----------------------------------------------------------------------------------
%\renewcommand*\l@chapter[2]{%
%  \ifnum \c@tocdepth >\m@ne
%    \addpenalty{-\@highpenalty}%
%    \ifbnu@bachelor\vskip 6bp\else\vskip 4bp\fi \@plus\p@
%    \setlength\@tempdima{4em}%
%    \begingroup
%      \parindent \z@ \rightskip \@pnumwidth
%      \parfillskip -\@pnumwidth
%      \leavevmode
%      \advance\leftskip\@tempdima
%      \hskip -\leftskip
%      {\bnu@toc@chapter@entry@font #1}%
%      \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill%
%      \nobreak{\bnu@toc@chapter@page@font #2}\par
%      \penalty\@highpenalty
%    \endgroup
%  \fi}
%  
%\patchcmd{\@dottedtocline}{\hb@xt@\@pnumwidth}{\hbox}{}{}
%
%\renewcommand*\l@section{%
%  \@dottedtocline{1}{\ccwd}{2.1em}}
%  
%\renewcommand*\l@subsection{%
%  \@dottedtocline{2}{\ifbnu@bachelor 1.5\ccwd\else 2\ccwd\fi}{3em}}
%  
%\renewcommand*\l@subsubsection{%
%  \@dottedtocline{3}{\ifbnu@bachelor 2.4em\else 3.5em\fi}{3.8em}}
%直接调用新的目录格式
\renewcommand\tableofcontents{%
  \bnu@chapter*[]{\contentsname}
  \sanhao[1.5]\@starttoc{toc}\normalsize
}
\ifbnu@arialtoc
  \def\bnu@toc@font{\sffamily}
\fi
%\def\@pnumwidth{2em} % 这个参数没用了
\def\@tocrmarg{2em}
\def\@dotsep{1} % 目录点间的距离
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
    \parindent #2\relax\@afterindenttrue
    \interlinepenalty\@M
    \leavevmode
    \@tempdima #3\relax
    \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
    {\heiti \csname bnu@toc@font \endcsname #4}\nobreak
    \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{$\cdot$}\mkern \@dotsep mu$}\hfill
    \nobreak{\normalsize \normalcolor #5}%
    \par}%
  \fi}

\titlecontents{chapter}[0em]
{\vspace{.05\baselineskip}\heiti}
{\sanhao[0.0]{\thecontentslabel}~\hspace{.5em}} {}
{\dotfill\contentspage[{\makebox[0pt][r]{\thecontentspage}}]}
[\vspace{.05\baselineskip}]
\titlecontents{section}[1em]
{\vspace{.05\baselineskip}\heiti}
{\xiaosan[0.0]{\thecontentslabel}~\hspace{.5em}} {}
{\dotfill\contentspage[{\makebox[0pt][r]{\thecontentspage}}]}
[\vspace{.05\baselineskip}]
\titlecontents{subsection}[2em]
{\vspace{.05\baselineskip}\heiti}
{\sihao[0.0]{\thecontentslabel}~\hspace{.5em}} {}
{\dotfill\contentspage[{\makebox[0pt][r]{\thecontentspage}}]}
[\vspace{.05\baselineskip}]
\titlecontents{subsubsection}[3em]
{\vspace{.05\baselineskip}\heiti}
{\xiaosi[0.0]{\thecontentslabel}~\hspace{.5em}} {}
{\dotfill\contentspage[{\makebox[0pt][r]{\thecontentspage}}]}
[\vspace{.05\baselineskip}]
%------------------------上述为定义目录格式-------------------------------------------
%
\def\bnu@def@term#1{%
  \define@key{bnu}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname bnu@#1\endcsname{##1}}
  \csname #1\endcsname{}}
  

\bnu@def@term{secretlevel}
\bnu@def@term{secretyear}
\bnu@def@term{ctitle}
\bnu@def@term{etitle}
\bnu@def@term{cauthor}
\bnu@def@term{csupervisor}
\bnu@def@term{cassosupervisor}
\bnu@def@term{ccosupervisor}
\bnu@def@term{eauthor}
\bnu@def@term{esupervisor}
\bnu@def@term{eassosupervisor}
\bnu@def@term{ecosupervisor}
\bnu@def@term{cdegree}
\bnu@def@term{edegree}
\bnu@def@term{cdepartment}
\def\caffil{% for compatibility
  \ClassWarning{bnuthesis}
    {'\string\caffil' is deprecated, please use '\string\cdepartment' instead.}{}%
  \cdepartment}
\bnu@def@term{edepartment}
\def\eaffil{% for compability
  \ClassWarning{bnuthesis}
    {'\string\eaffil' is deprecated, please use '\string\edepartment' instead.}{}%
  \edepartment}
\bnu@def@term{cmajor}
\def\csubject{% for compatibility
  \ClassWarning{bnuthesis}
    {'\string\csubject' is deprecated, please use '\string\cmajor' instead.}{}%
  \cmajor}
\bnu@def@term{emajor}
\def\esubject{%for compability
  \ClassWarning{bnuthesis}
    {'\string\esubject' is deprecated, please use '\string\emajor' instead.}{}%
  \emajor}
\bnu@def@term{cdate}
\bnu@def@term{edate}
\bnu@def@term{id}
\bnu@def@term{udc}
\bnu@def@term{catalognumber}
\bnu@def@term{cfirstdiscipline}
\bnu@def@term{cseconddiscipline}
\bnu@def@term{postdoctordate}
\newcommand{\bnu@@cabstract}[1]{\long\gdef\bnu@cabstract{#1}}
\newenvironment{cabstract}{\Collect@Body\bnu@@cabstract}{}
\newcommand{\bnu@@eabstract}[1]{\long\gdef\bnu@eabstract{#1}}
\newenvironment{eabstract}{\Collect@Body\bnu@@eabstract}{}
\def\bnu@parse@keywords#1{
  \define@key{bnu}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname bnu@#1\endcsname{}
  \expandafter\gdef\csname #1\endcsname##1{
    \@for\reserved@a:=##1\do{
      \expandafter\ifx\csname bnu@#1\endcsname\@empty\else
        \expandafter\g@addto@macro\csname bnu@#1\endcsname{%
          \ignorespaces\csname bnu@#1@separator\endcsname}
      \fi
      \expandafter\expandafter\expandafter\g@addto@macro%
        \expandafter\csname bnu@#1\expandafter\endcsname\expandafter{\reserved@a}}}}
\bnu@parse@keywords{ckeywords}
\bnu@parse@keywords{ekeywords}
\def\bnusetup{\kvsetkeys{bnu}}
\newcommand\bnu@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newlength{\bnu@title@width}
\ifxetex % todo: ugly codes
  \newcommand{\bnu@put@title}[2][\bnu@title@width]{%
  \begin{CJKfilltwosides}[b]{#1}#2\end{CJKfilltwosides}}
\else
  \newcommand{\bnu@put@title}[2][\bnu@title@width]{%
  \begin{CJKfilltwosides}{#1}#2\end{CJKfilltwosides}}
\fi
\def\bnu@first@titlepage{%
  \ifbnu@postdoctor\bnu@first@titlepage@postdoctor\else\bnu@first@titlepage@other\fi}
\newcommand{\bnu@first@titlepage@postdoctor}{
  \begin{center}
    \setlength{\bnu@title@width}{3em}
    \vspace*{0.7cm}
    \begingroup\wuhao[1.5]%
    \bnu@put@title{\bnu@catalog@number@title}\bnu@underline\bnu@catalognumber\hfill%
    \bnu@put@title{\bnu@secretlevel}%
      \expandafter\bnu@underline\ifbnu@secret\bnu@secret@content\else\relax\fi\par
    \bnu@put@title{U D C}\bnu@underline\bnu@udc\hfill%
    \bnu@put@title{\bnu@id@title}\bnu@underline\bnu@id\par\vskip3cm\endgroup
    \begingroup\heiti
      {\xiaochu\ziju{1}\bnu@schoolname}\par\vskip2cm
      {\xiaoyi\ziju{1}\bnu@postdoctor@report@title}\par\vskip3cm
      {\sanhao[1.5]\bnu@ctitle}\par\vskip2cm
      {\xiaoer\bnu@cauthor}
    \endgroup
    \par\vskip3cm
    {\xiaosan[1.5]\ziju{1}\bnu@schoolname\par\vskip0.5em\CJK@todaysmall@short}
  \end{center}
  \cleardoublepage
  \begin{center}
    \vspace*{2cm}
    {\sihao\heiti\bnu@ctitle\par\bnu@etitle}\par
    \parbox[t][7cm][b]{\textwidth-6cm}{\sihao[1.5]%
      \setlength{\bnu@title@width}{11em}
      \setlength{\extrarowheight}{6pt}
      \ifxetex % todo: ugly codes
        \begin{tabular}{p{\bnu@title@width}@{}l@{\extracolsep{8pt}}l}
      \else
        \begin{tabular}{p{\bnu@title@width}l@{}l}
      \fi
          \bnu@put@title{\bnu@author@title}
            & \bnu@title@sep
            & \bnu@cauthor \\
          \bnu@put@title{\bnu@postdoctor@first@discipline@title}
            & \bnu@title@sep
            & \bnu@cfirstdiscipline\\
          \bnu@put@title{\bnu@postdoctor@second@discipline@title}
            & \bnu@title@sep
            & \bnu@cseconddiscipline\\
          \bnu@put@title{\bnu@supervisor@title}
            & \bnu@title@sep
            & \bnu@csupervisor\\
        \end{tabular}}
    \vskip2cm
    {\sihao\bnu@postdoctor@date@title\hskip1em\underline\bnu@postdoctordate}
  \end{center}}
%封面格式定义------------------------------------------------------
\newcommand{\bnu@first@titlepage@other}{
  \begin{center}
    \vspace*{-3cm}
    \parbox[b][2.4cm][t]{\textwidth}{%
      \ifbnu@secret{\heiti\sanhao\bnu@secretlevel\bnu@secret@content}\else\rule{1cm}{0cm}\fi}
    \ifbnu@bachelor
      \vskip1cm
      %{\ifcsname lishu\endcsname\yihao\lishu\ziju{0.5}\bnu@schoolname\else\includegraphics{tsinghua}\fi}
      {\includegraphics[width=300pt]{BNU}}
      \par\vskip1cm
      {\xiaochu\songti\ziju{0.1}\bnu@bachelor@subtitle}
      \vskip1.8cm\hskip0.8cm
      \noindent\heiti\sanhao\flushleft\textbf{\bnu@bachelor@title@pre\bnu@title@sep}
      \parbox[t]{\textwidth}{%
      \ignorespaces\erhao\songti\vskip1mm%
      \newcommand{\CJKunderlinebasesep}{0.25cm}%
      \renewcommand{\ULthickness}{1.3pt}%
      \ifxetex
        \xeCJKsetup{underline/format=\color{black}}%
      \else
        \def\CJKunderlinecolor{\color{black}}%
      \fi
      \CJKunderline*{\bnu@ctitle}}%
      \vskip1.3cm
    \else
      \vskip0.8cm
      \parbox[t][9cm][t]{\paperwidth-8cm}{
      \renewcommand{\baselinestretch}{1.3}
      \begin{center}
        \yihao[1.2]{\sffamily\bnu@ctitle}\par%
        \par\vskip 18bp%
        \xiaoer[1]\textrm{\bnu@apply}%
      \end{center}}
    \fi
    \ifbnu@bachelor
      \vskip0.75cm
      \ifx\bnu@cassosupervisor\@empty%
        \def\bnu@tempa{7.15cm}
      \else%
        \def\bnu@tempa{8.15cm}
      \fi%
      \parbox[t][\bnu@tempa][t]{\textwidth}{%
        {\songti\sihao[1.95]%
         \hspace*{1.9cm}
         \setlength{\bnu@title@width}{6em}
         \setlength{\extrarowheight}{6pt}
         \ifxetex % todo: ugly codes
           \begin{tabular}{p{\bnu@title@width}@{}l@{\extracolsep{8pt}}l}
         \else
           \begin{tabular}{p{\bnu@title@width}l@{}l}
         \fi
             \bnu@put@title{\bnu@department@title} & \bnu@title@sep
               & \bnu@cdepartment\\
             \bnu@put@title{\bnu@major@title}      & \bnu@title@sep
               & \bnu@cmajor\\
             \bnu@put@title{\bnu@author@title}     & \bnu@title@sep
               & \bnu@cauthor \\
             \bnu@put@title{\bnu@supervisor@title} & \bnu@title@sep
               & \bnu@csupervisor\\
             \ifx\bnu@cassosupervisor\@empty\else%
               \bnu@put@title{\bnu@assosuper@title} & \bnu@title@sep
               & \bnu@cassosupervisor\\
             \fi
           \end{tabular}
        }}
    \else
      \vskip 5bp
      \parbox[t][7.8cm][t]{\textwidth}{{\sanhao[1.5]
        \begin{center}\fangsong
          \setlength{\bnu@title@width}{5em}
          \setlength{\extrarowheight}{4pt}
          \ifxetex % todo: ugly codes
            \begin{tabular}{p{\bnu@title@width}@{}c@{\extracolsep{8pt}}l}
          \else
            \begin{tabular}{p{\bnu@title@width}c@{\extracolsep{4pt}}l}
          \fi
              \bnu@put@title{\bnu@department@title}  & \bnu@title@sep
                & {\ziju{0.1875}\bnu@cdepartment}\\
              \bnu@put@title{\bnu@major@title}       & \bnu@title@sep
                & {\ziju{0.1875}\bnu@cmajor}\\
              \bnu@put@title{\bnu@author@title}      & \bnu@title@sep
                & {\ziju{0.6875}\bnu@cauthor}\\
              \bnu@put@title{\bnu@supervisor@title}  & \bnu@title@sep
                & {\ziju{0.6875}\bnu@csupervisor}\\
              \ifx\bnu@cassosupervisor\@empty\else
                \bnu@put@title{\bnu@assosuper@title} & \bnu@title@sep
                & {\ziju{0.6875}\bnu@cassosupervisor}\\
              \fi
              \ifx\bnu@ccosupervisor\@empty\else
                \ifbnu@master
                  \hfill\makebox[0pt][r]{\bnu@cosuper@title} & \bnu@title@sep
                  & {\ziju{0.6875}\bnu@ccosupervisor}\\
                \fi
                \ifbnu@doctor
                  \bnu@put@title{\bnu@cosuper@title} & \bnu@title@sep
                  & {\ziju{0.6875}\bnu@ccosupervisor}\\
                \fi
              \fi
            \end{tabular}
        \end{center}}}
      \fi
     \begin{center}
       {\ifbnu@bachelor\vskip-1.0cm\xiaosi\else%
         \vskip-0.5cm\sanhao\fi%
         \songti\bnu@cdate}
     \end{center}
    \end{center}} % end of titlepage
    
%---------------------------------------------------------------------------------------------------
\newcommand{\bnu@engcover}{%
  \newif\ifbnu@professional\bnu@professionalfalse
  \ifbnu@master
    \ifthenelse{\equal{\bnu@edegree}{\bnu@master@art}}
      {\relax}
      {\ifthenelse{\equal{\bnu@edegree}{\bnu@master@sci}}
        {\relax}
        {\bnu@professionaltrue}}
  \fi
  \ifbnu@doctor
    \ifthenelse{\equal{\bnu@edegree}{\bnu@doctor@phi}}
      {\relax}
      {\bnu@professionaltrue}
  \fi
  \begin{center}
    \vspace*{-5pt}
    \parbox[t][5.2cm][t]{\paperwidth-7.2cm}{
      \renewcommand{\baselinestretch}{1.5}
      \begin{center}
        \erhao[1.1]\bfseries\sffamily\bnu@etitle%
      \end{center}}
    \parbox[t][][t]{\paperwidth-7.2cm}{
      \renewcommand{\baselinestretch}{1.3}
      \begin{center}
        \sanhao%
        \ifbnu@master Thesis \else Dissertation \fi
        Submitted to\\
        {\bfseries Beijing Normal University}\\
        in partial fulfillment of the requirement\\
        for the \ifbnu@professional professional \fi
        degree of\\
        {\bfseries\sffamily\bnu@edegree}%
        \ifbnu@professional\relax\else
          \\in\\[3bp]
          {\bfseries\sffamily\bnu@emajor}%
        \fi
      \end{center}}
    \parbox[t][][b]{\paperwidth-7.2cm}{
      \renewcommand{\baselinestretch}{1.3}
      \begin{center}
        \sanhao\sffamily by\\[3bp]
        \bfseries\bnu@eauthor%
        \ifbnu@professional
          \ifx\bnu@emajor\empty\relax\else
            \\(~\bnu@emajor~)%
        \fi\fi
      \end{center}}
    \par\vspace{0.9cm}
    \parbox[t][2.1cm][t]{\paperwidth-7.2cm}{
      \renewcommand{\baselinestretch}{1.2}
      \xiaosan\centering
      \begin{tabular}{rl}
        \ifbnu@master Thesis \else Dissertation \fi
        Supervisor : & \bnu@esupervisor\\
        \ifx\bnu@eassosupervisor\@empty
          \else Associate Supervisor : & \bnu@eassosupervisor\\\fi
        \ifx\bnu@ecosupervisor\@empty
          \else Cooperate Supervisor : & \bnu@ecosupervisor\\\fi
      \end{tabular}}
    \parbox[t][2cm][b]{\paperwidth-7.2cm}{
    \begin{center}
      \sanhao\bfseries\sffamily\bnu@edate
    \end{center}}
  \end{center}}
%-----------------------------------------------------------------------------------
\newcommand{\bnu@declare@mk}{%定义诚信声明页
\ifbnu@bachelor\vspace*{0.15cm}\else\vspace*{0.42cm}\fi
  \begin{center}\xiaosi\heiti\bnu@declarename\end{center}
  \ifbnu@bachelor\vskip5pt\else\vskip40pt\sihao[2.03]\fi\par
  \bnu@declaretext\par
  \ifbnu@bachelor\vskip0.7cm\else\vskip1.0cm\fi
  \ifbnu@bachelor
    \indent\mbox{\bnu@authorsig}\par
  \else
    \begingroup
      \parindent0pt\xiaosi
      \hspace*{1.5cm}\bnu@authorsig\bnu@underline[7em]\relax\hfill%
                     \bnu@teachersig\bnu@underline[7em]\relax\hspace*{1cm}\\[3pt]
      \hspace*{1.5cm}\bnu@frontdate\bnu@underline[7em]\relax\hfill%
                     \bnu@frontdate\bnu@underline[7em]\relax\hspace*{1cm}
    \endgroup
\fi}
%-----------------------------------------------------------------------------------
\newcommand{\bnu@authorization@mk}{%定义版权授权页
  \ifbnu@bachelor\vspace*{3cm}\else\vspace*{0.42cm}\fi % shit code!
  \begin{center}\xiaosi\heiti\bnu@authtitle\end{center}
  \ifbnu@bachelor\vskip5pt\else\vskip40pt\sihao[2.03]\fi\par
  \bnu@authorization\par
  \bnu@authorizationaddon\par
  \ifbnu@bachelor\vskip0.7cm\else\vskip1.0cm\fi
  \ifbnu@bachelor
    \indent\mbox{\bnu@authorsig}\par\vskip5mm
    \indent\mbox{\bnu@teachersig}
  \else
    \begingroup
      \parindent0pt\xiaosi
      \hspace*{1.5cm}\bnu@authorsig\bnu@underline[7em]\relax\hfill%
                     \bnu@teachersig\bnu@underline[7em]\relax\hspace*{1cm}\\[3pt]
      \hspace*{1.5cm}\bnu@frontdate\bnu@underline[7em]\relax\hfill%
                     \bnu@frontdate\bnu@underline[7em]\relax\hspace*{1cm}
    \endgroup
  \fi}
%-----------------------------------------------------------------------------------

\def\makecover{%开始打印封面
  \bnu@setup@pdfinfo\bnu@makecover}
\def\bnu@setup@pdfinfo{%
  \hypersetup{%
    pdftitle={\bnu@ctitle},
    pdfauthor={\bnu@cauthor},
    pdfsubject={\bnu@cdegree},
    pdfkeywords={\bnu@ckeywords},
    pdfcreator={\bnuthesis-v\version}}}
\NewDocumentCommand{\bnu@makecover}{o}{
  \phantomsection
  \pdfbookmark[-1]{\bnu@ctitle}{ctitle}
  \normalsize%
  \begin{titlepage}
    \bnu@first@titlepage
    \ifbnu@bachelor\relax\else
      \ifbnu@postdoctor\relax\else
        \cleardoublepage\bnu@engcover
    \fi\fi
    \ifbnu@postdoctor\relax\else%
      \ifbnu@bachelor\clearpage\else\cleardoublepage\fi%
      \IfNoValueTF{#1}{%
        \ifbnu@bachelor\bnu@declare@mk\bnu@authorization@mk\else%
          \begin{list}{}{%
            \topsep\z@%
            \listparindent\parindent%
            \parsep\parskip%
            \setlength{\leftmargin}{0.9mm}%
            \setlength{\rightmargin}{0.9mm}}%
          \item[]\bnu@declare@mk%
          \item[]\bnu@authorization@mk%
          \end{list}%
        \fi%
      }{%
        \includepdf{#1}%
      }%
    \fi
  \end{titlepage}
  \normalsize
  \bnu@makeabstract
  \let\@tabular\bnu@tabular}
\newbox\bnu@kw
\newcommand\bnu@put@keywords[2]{%
  \begingroup
    \setbox\bnu@kw=\hbox{#1}
    \ifbnu@bachelor\indent\else\noindent\hangindent\wd\bnu@kw\hangafter1\fi%
    \box\bnu@kw#2\par
  \endgroup}
%-----------------------------------------------------------------------------------------------------------
%中英文摘要
\newcommand{\bnu@makeabstract}{%
  \ifbnu@bachelor\clearpage\else\cleardoublepage\fi
%  \bnu@chapter*[]{\sanhao\bnu@ctitle \xiaosan\cabstractname} % no tocline
%-----------------------------------------------------------------------------------------------------------
%摘要
  \bnu@chapter*[]{\vskip-1cm\makebox{\sanhao\bnu@ctitle}\\ \vskip1cm \makebox{\xiaosan\cabstractname}} % no tocline
  \ifbnu@bachelor
    \pagestyle{bnu@plain}
  \else
    \pagestyle{bnu@headings}
  \fi
  \pagenumbering{Roman}
  \sihao\bnu@cabstract
  \ifbnu@doctor\vfill\else\vskip12bp\fi
  \bnu@put@keywords{\sihao\textbf\bnu@ckeywords@title}{\sihao\bnu@ckeywords}
%-----------------------------------------------------------------------------------------------------------
%ABSTRACT
  \bnu@chapter*[]{\vskip-1cm\makebox{\sanhao\bnu@etitle}\\ \vskip1cm \makebox{\xiaosan\eabstractname}} % no tocline
  \sihao\bnu@eabstract
  \ifbnu@doctor\vfill\else\vskip12bp\fi
  \bnu@put@keywords{%
    \textbf{\ifbnu@bachelor KEY WORDS:\else Key Words:\fi\enskip}}{\bnu@ekeywords}}
%-----------------------------------------------------------------------------------------------------------
\newenvironment{denotation}[1][2.5cm]{%
  \bnu@chapter*[]{\bnu@denotation@name} % no tocline
  \vskip-30bp\xiaosi[1.6]\begin{bnu@denotation}[labelwidth=#1]
}{%
  \end{bnu@denotation}
}
\newlist{bnu@denotation}{description}{1}
\setlist[bnu@denotation]{%
  nosep,
  font=\normalfont,
  align=left,
  leftmargin=!, % sum of the following 3 lengths
  labelindent=0pt,
  labelwidth=2.5cm,
  labelsep*=0.5cm,
  itemindent=0pt,
}
\NewDocumentEnvironment{acknowledgement}{o}{%
    \bnu@chapter*{\bnu@ackname}
  }
  {
%    \ifbnu@postdoctor\relax\else%
%      \IfNoValueTF{#1}{%
%        \bnu@chapter*{\bnu@declarename}
%        \par{\xiaosi\parindent2em\bnu@declaretext}\vskip2cm
%        {\xiaosi\hfill\bnu@signature\bnu@underline[2.5cm]\relax%
%         \bnu@backdate\bnu@underline[2.5cm]\relax}%
%      }{%
%        \includepdf[pagecommand={\thispagestyle{bnu@empty}%
%          \phantomsection\addcontentsline{toc}{chapter}{\bnu@declarename}%
%        }]{#1}%
%      }%
%    \fi
  }
\let\ack\acknowledgement
\let\endack\endacknowledgement
\def\bnu@starttoc#1{% #1: float type, prepend type name in \listof*** entry.
  \let\oldnumberline\numberline
  \def\numberline##1{\oldnumberline{\csname #1name\endcsname\hskip.4em ##1}}
  \@starttoc{\csname ext@#1\endcsname}
  \let\numberline\oldnumberline}
\def\bnu@listof#1{% #1: float type
  \@ifstar
    {\bnu@chapter*[]{\csname list#1name\endcsname}\bnu@starttoc{#1}}
    {\bnu@chapter*{\csname list#1name\endcsname}\bnu@starttoc{#1}}}
\renewcommand\listoffigures{\bnu@listof{figure}}
\renewcommand*\l@figure{\ifbnu@bachelor\relax\else\addvspace{6bp}\fi\@dottedtocline{1}{0em}{4em}}
\renewcommand\listoftables{\bnu@listof{table}}
\let\l@table\l@figure
\def\ext@equation{loe}
\def\equcaption#1{%
  \addcontentsline{\ext@equation}{equation}%
                  {\protect\numberline{#1}}}
\newcommand\listofequations{\bnu@listof{equation}}
\let\l@equation\l@figure
\newcommand\bibstyle@inline{\bibpunct{[}{]}{,}{n}{,}{,}}
\DeclareRobustCommand\inlinecite{\@inlinecite}
\def\@inlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
\let\onlinecite\inlinecite
\renewcommand\bibsection{\bnu@chapter*{\bibname}}
\renewcommand\bibfont{\ifbnu@bachelor\wuhao[1.619]\else\wuhao[1.5]\fi}
\setlength\bibhang{2\ccwd}
\addtolength{\bibsep}{-0.7em}
\setlength{\labelsep}{0.4em}
\def\@biblabel#1{[#1]\hfill}
\expandafter\newcommand\csname bibstyle@bnuthesis-numeric\endcsname{%
  \bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\expandafter\newcommand\csname bibstyle@bnuthesis-author-year\endcsname{%
  \bibpunct{(}{)}{;}{a}{,}{,}}
\patchcmd\NAT@citexnum{%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\NAT@cmt#2\fi
  }{}%
  \NAT@mbox{\NAT@@close}%
}{%
  \NAT@mbox{\NAT@@close}%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\textsuperscript{#2}\fi
  }{}%
}{}{}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa
  \if*#2*\else#2\NAT@spacechar\fi
\unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close\if*#3*\else#3\fi}%
   \else #1\fi\endgroup}
\patchcmd{\NAT@citex}{%
  \if*#2*\else\NAT@cmt#2\fi
  \if\relax\NAT@date\relax\else\NAT@@close\fi
}{%
  \if\relax\NAT@date\relax\else\NAT@@close\fi
  \if*#2*\else\textsuperscript{#2}\fi
}{}{}
\renewcommand\NAT@cite%
    [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
        #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
\patchcmd{\NAT@citexnum}{%
  \ifx\NAT@last@yr\relax
    \def@NAT@last@yr{\@citea}%
  \else
    \def@NAT@last@yr{--\NAT@penalty}%
  \fi
}{%
  \def@NAT@last@yr{-\NAT@penalty}%
}{}{}
\let\bnu@appendix\appendix
\renewenvironment{appendix}{%
  \let\title\bnu@appendix@title
  \bnu@appendix}{%
  \let\title\@gobble}
\let\title\@gobble
\newcommand{\bnu@appendix@title}[1]{%
  \begin{center}
    \xiaosi[1.667] #1
  \end{center}}
\newlist{translationbib}{enumerate}{1}
\setlist[translationbib]{label=[\arabic*],align=left,nosep,itemsep=6bp,
  leftmargin=10mm,labelsep=!,before=\vspace{0.5\baselineskip}\wuhao[1.3]}
\newenvironment{resume}[1][\bnu@resume@title]{%
  \bnu@chapter*{#1}}{}
\newcommand{\resumeitem}[1]{%
  \vspace{24bp}{\sihao\heiti\centerline{#1}}\par\vspace{6bp}}
\newcommand{\researchitem}[1]{%
  \vspace{32bp}{\sihao\heiti\centerline{#1}}\par\vspace{14bp}}
\newlist{publications}{enumerate}{1}
\setlist[publications]{label=[\arabic*],align=left,nosep,itemsep=8bp,
  leftmargin=10mm,labelsep=!,before=\xiaosi[1.26],resume}
\newlist{achievements}{enumerate}{1}
\setlist[achievements]{label=[\arabic*],align=left,nosep,itemsep=8bp,
  leftmargin=10mm,labelsep=!,before=\xiaosi[1.26]}
\def\publicationskip{\bigskip\bigskip}
\NewDocumentCommand{\shuji}{O{\bnu@ctitle} O{\bnu@cauthor}}{%
  \newpage\thispagestyle{empty}%
  \fangsong\ifxetex\addCJKfontfeatures*{RawFeature={vertical:}}\fi
  \xiaosan\ziju{0.4}%
  \noindent\hfill\rotatebox[origin=lt]{-90}{\makebox[\textheight]{#1\hfill#2}}}
\AtEndOfClass{\input{bnuthesis.cfg}}
\AtEndOfClass{\sloppy}
\endinput
%%
%% End of file `bnuthesis.cls'.
