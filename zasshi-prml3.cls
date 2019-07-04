% zasshi-prml3.cls
% 雑誌会資料クラスファイル by Yasui Takumi (June 30, 2015)
%  (based on zasshi-prml2.cls updated by mine :April 16, 2008)
%
% 変更：jarticle から ujarticle に。
% EUC-JP から UTF-8 に変更。
% (June 30. 2015)
%
% タイトルを
% 第 (回数) 回 -------> 第 (年度)--(回数) 回 
% に変更 (May 24, 2002)
%
% 追加読み込みのパッケージを追加 (May 20, 1998)
% + subfigure
% + amsmath
% + site
%
% タイトルを雑誌会の資料から雑誌会資料へ変更 (Sep 29, 1998)
% 信学論対策 D-II は \vol で、No. は \num で記述する (Sep 29, 1998)
%
% 雑誌会資料用コマンド
%
% I. 論文紹介 R. 自身の研究紹介　Q. 複数の研究をまとめて紹介 
%
% \zasshi{#}      : 雑誌会の回数(必須 in IRQ)  
% \nendo{#}       : 雑誌会の年度(必須 in IRQ)
% \title{str}     : 表題(必須 in IRQ)
% \date{str}      : 日付(必須 in IRQ)
% \place{str}     : 発表場所(省略可。省略時は10-21)
% \presenter{str} : 発表者(必須 in IRQ)
% \abstract{str}  : 概要(必須 in IRQ)
% \journal{str}   : 雑誌名(必須　in IQ)
% \vol{str}       : 雑誌の volume(省略可)
% \num{str}       : 雑誌の number(省略可)
% \year{str}      : 雑誌の発行年(必須 in IQ)
% \page{str}      : 論文の掲載ページ(必須 in IQ)
% \author{str}    : 論文の著者(必須 in IQ)
%
% \ptitle{str}     : 主要文献題名(必須 in IQ)　雑誌に関する上記コマンドも記載
% \anote{str}      : 補足コメント(省略可)
%
%  ７つの質問に関する回答（全て必須）
% Q.1 この論文（研究）の扱っているテーマは何か？
% \ansfirst{} : 答えA.1
% Q.2 何故、この論文（研究）を取り上げたか？　また、自分の研究との関連についても述べよ。
% \anssecond{} : 答えA.2
% Q.3 これまでこのテーマに関する方法論の問題点は何か？
% \ansthird{} : 答えA.3
% Q.4 提案する方法論の独自性は何処にあり、どの点で有利と著者らは言ってい
% るか（と思うか）？また、どの点は不十分あるいは劣っているか？
% \ansfourth{} : 答えA.4
% Q.5 発表者の視点でこの論文を評価した場合、どこに利点があると思うか？
% \ansfifth{} : 答えA.5
% Q.6 発表者の視点でこの論文を評価した場合、どういう点が不十分であると思うか？
% \anssixth{} : 答えA.6
% Q.7 この論文（研究）を発展させる方向はどの辺にあるか？（できれば具体的なアイディアを述べよ）
% \ansseventh{} : 答えA.7
%
% ※以上のコマンドは必ずプリアンブルで設定すること。
%   また、省略可というのは TeX compile に関してであって、
%   雑誌会資料においても省略可であるとは限らない。
% \Cite{str}      : 文献の参照
% ※ #: 整数  str: 文字列

\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{zasshi-prml3}[2008/4/17 Classfile for Zasshikai in PRML Lab]

\def\@pt{10pt}
\DeclareOption{12pt}{\def\@pt{12pt}}
\DeclareOption{11pt}{\def\@pt{11pt}}
\DeclareOption{10pt}{\def\@pt{10pt}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ujarticle}}
\ProcessOptions
\PassOptionsToClass{a4paper,\@pt,fleqn}{ujarticle}
\LoadClass{ujarticle}
%\RequirePackage[dvips]{graphics}
%\RequirePackage{subfigure}
%\RequirePackage{amsmath}
%\RequirePackage{cite}
\RequirePackage{ascmac}

\setlength{\textheight}{45\baselineskip}
\setlength{\textwidth}{6.27in} %width of A4paper = 8.27in
\oddsidemargin0pt
\evensidemargin0pt
\topmargin0pt
\voffset-12pt
\pagestyle{empty}

\def \ansfirst#1{\gdef \@ansfirst{#1}}
\def \anssecond#1{\gdef \@anssecond{#1}}
\def \ansthird#1{\gdef \@ansthird{#1}}
\def \ansfourth#1{\gdef \@ansfourth{#1}}
\def \ansfifth#1{\gdef \@ansfifth{#1}}
\def \anssixth#1{\gdef \@anssixth{#1}}
\def \ansseventh#1{\gdef \@ansseventh{#1}}

\def \@mksevenquestions
{
\begin{itembox}{\large{Seven questions to be answered}}
\small 
  \begin{enumerate}
  \item[Q.1] \textbf{この論文（研究）の扱っているテーマは何か？}\\
\@ansfirst
  \item[Q.2] \textbf{何故、この論文（研究）を取り上げたか？　また、自分の研究との
	関連についても述べよ。}\\	
\@anssecond
	  \item[Q.3] \textbf{これまでこのテーマに関する方法論の問題点は何か？}\\ 
\@ansthird
  \item[Q.4] \textbf{提案する方法論の独自性は何処にあり、どの点で有利と著者ら
      は言っているか（と思うか）？また、どの点は不十分あるいは劣っているか？}\\
\@ansfourth
  \item[Q.5] \textbf{発表者の視点でこの論文を評価した場合、どこに利点があると
      思うか？}\\
\@ansfifth
  \item[Q.6] \textbf{発表者の視点でこの論文を評価した場合、どういう点が不十分
      であると思うか？}\\
\@anssixth
  \item[Q.7] \textbf{この論文（研究）を発展させる方向はどの辺にあるか？（でき
	れば具体的なアイディアを述べよ）}\\
\@ansseventh
  \end{enumerate}
\end{itembox}
}

\def \@mktitle
{
  \newlength{\tmpw}
  \newlength{\tmph}
  \settowidth{\tmpw}{\@title}
  \ifdim\tmpw<15cm
%  \underline{\@title}
  {\Large\bf \@title}
  \else
  \settoheight{\tmph}{\parbox{15cm}{\@title}}
  \addtolength{\tmpw}{-15cm}
  \makebox[0pt][l]{\parbox[t]{15cm}{\@title}}\parbox[t]{15cm}{
    \underline{\makebox[15cm]{}}
    \underline{\makebox[\tmpw]{}}
    }
  \fi
  }

\def \@zasshi
{
  \let \footnotesize \small
  \let \footnoterule \relax
  \setcounter{page}{1}

\begin{flushright}
{\small
{\sc 情報認識学研究室}\\
第 \thenendoc\ -- \thezasshic\ 回雑誌会\\
\copyright \@presenter
}
\end{flushright}
\noindent{\bf  \hrulefill}
\begin{flushleft}

  \begin{description}
  \item[表\zsp 題：] \@mktitle
    \ifptitle
    \begin{description}
       \item[主な参考文献：] \@ptitle
     \ifjournal
       \item[雑誌名：] \textit{\@journal}\ifvol, \textbf{\@vol}\fi
       \ifnumber, \@num\fi\ifpar(\else, \fi\@year\ifpar)\fi\ifpage , \@page\fi .
       \item[著\zsp 者：] \@author
     \fi
    \end{description}
    \else
     \ifjournal
        \item[雑誌名：] \textit{\@journal}\ifvol, \textbf{\@vol}\fi
        \ifnumber, \@num\fi\ifpar(\else, \fi\@year\ifpar)\fi\ifpage , \@page\fi .
        \item[著\zsp 者：] \@author
       \fi
    \fi
  \item[日\zsp 時：] \@date
  \item[場\zsp 所：] \ifplace\@place\else 10-21\fi
  \item[発表者：] \@presenter
  \item[概\zsp 要：] \@abstract 
    \ifanote
  \item[補\zsp 足：] \@anote
    \fi
  \end{description}
\end{flushleft}
{\bf  \hrulefill}
%-----------------------------------------------------------
\par
\vfil
\@mksevenquestions % 7 questions

  \newpage
  }

\newif\ifjournal
\newif\ifvol
\newif\ifnumber
\newif\ifpar
\newif\ifpage
\newif\ifplace
\newif\ifptitle
\newif\ifanote

\journalfalse
\volfalse
\numberfalse
\parfalse
\pagefalse
\placefalse
\ptitlefalse
\anotefalse

\newcounter{zasshic}
\newcounter{nendoc}
\def \zasshi#1{\setcounter{zasshic}{#1}}
\def \nendo#1{\setcounter{nendoc}{#1}}
\def \presenter#1{\gdef \@presenter{#1}}
\def \place#1{\gdef \@place{#1} \placetrue}
\def \abstract#1{\gdef \@abstract{#1}}
\def \journal#1{\gdef \@journal{#1} \journaltrue}
\def \vol#1{\gdef \@vol{#1} \voltrue\partrue}
\def \num#1{\gdef \@num{#1} \numbertrue\partrue}
\def \page#1{\gdef \@page{#1} \pagetrue}
\def \year#1{\gdef \@year{#1}}
\def \ptitle#1{\gdef \@ptitle{#1} \ptitletrue}
\def \anote#1{\gdef \@anote{#1} \anotetrue}

\def\zsp{\hspace{1zw}}
\let\@begindocumenthook=\@zasshi

% ポチパッチ
\def\thepart{\Roman{part}}
\def\thesection {\arabic{section}.}
\def\thesubsection {\thesection\arabic{subsection}.}
\def\thesubsubsection {\thesubsection\arabic{subsubsection}.}
\def\theparagraph {\thesubsubsection\arabic{paragraph}.}
\def\thesubparagraph {\theparagraph\arabic{subparagraph}.}
%
% bunken.sty
%
\renewcommand{\refname}{文献}
\newcommand{\Cite}[1]{\raisebox{1ex}[0pt][0pt]{\footnotesize\cite{#1}}}

\long\def\@makecaption#1#2{
  \vskip 10pt 
  \setbox\@tempboxa\hbox{#1. #2}
  \ifdim \wd\@tempboxa >\hsize \unhbox\@tempboxa\par \else \hbox
  to\hsize{\hfil\box\@tempboxa\hfil} 
  \fi}

% convenient command for subfigure:-)
\newcommand{\gap}{%
  \hspace{\subfigtopskip}%
  \hspace{\subfigbottomskip}}

% ヘッダーとフッター
\usepackage{fancyhdr}  
% --------- 変更点　: Mine
\pagestyle{fancyplain}
\fancyhead{}
%\fancyhead[RO,RE]{\rightmark}
%\fancyhead[RO,RE]{\thepage}
%\fancyhead[LO,LE]{\leftmark}
\fancyhead[RO,RE]{第 \thenendoc\ -- \thezasshic\ 回}
\fancyhead[LO,LE]{\@presenter}

\cfoot{}
\rfoot{\thepage}

\def\thebibliography#1{\section*{文献\markboth
 { 文 献}{ 文 献}}\list
 {[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
 \advance\leftmargin\labelsep
 \usecounter{enumi}}
 \def\newblock{\hskip .11em plus .33em minus .07em}
 \sloppy
 \sfcode`\.=1000\relax}
\let\endthebibliography=\endlist

