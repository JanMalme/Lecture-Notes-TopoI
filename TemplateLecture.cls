
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TemplateLecture}

%%%% PERSONALIZATION %%%%

\newcommand{\mName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}mName\}\{<Name(s)>\}}}
\newcommand{\Semester}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}Semester\}\{<Semester>\}}}
\newcommand{\LectureName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}LectureName\}\{<Lecture>\}}}
\newcommand{\ProfName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}ProfName\}\{<Prof>\}}}


\LoadClass[11pt,a4paper]{scrartcl}

%%%% PACKAGES %%%%
\RequirePackage{acronym}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amstext}
\RequirePackage{amsthm}
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage{booktabs}
\RequirePackage[english]{babel}
\RequirePackage{calc}
\RequirePackage{color}
\RequirePackage{dsfont}
\RequirePackage{enumerate}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{environ}
\RequirePackage{etoolbox}
\RequirePackage{float}
\RequirePackage[T1]{fontenc}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{imakeidx}
\RequirePackage[utf8]{inputenc}
\RequirePackage{listings}
\RequirePackage{lmodern}
\RequirePackage{mathrsfs}
\RequirePackage{mathtools}
\RequirePackage{nicefrac}
\RequirePackage{nicematrix}
\RequirePackage{pifont}
\RequirePackage{pgf,tikz}
\RequirePackage{pgfplots}
\RequirePackage{qrcode}
\RequirePackage{scrextend}
\RequirePackage[headsepline]{scrlayer-scrpage}
\RequirePackage{selinput}
\RequirePackage{setspace}
\RequirePackage{soul}
\RequirePackage{stmaryrd}
\RequirePackage{tabularx}
\RequirePackage[most]{tcolorbox}
\usetikzlibrary{calc}
\usetikzlibrary{cd, babel}
\RequirePackage{tkz-euclide}
\RequirePackage[
  %colorlinks=true, 
  urlcolor=black, linkcolor=black]{hyperref}
\RequirePackage{cleveref}
\geometry{a4paper, top=25mm, left=30mm, right=30mm, bottom=25mm, headsep=5mm, footskip=12mm}
% \usetkzobj{all}
\setlist{listparindent=\parindent}

\usepackage{footnote}
\BeforeBeginEnvironment{tcolorbox}{\savenotes}
\AfterEndEnvironment{tcolorbox}{\spewnotes}



%%%% LAYOUT %%%%

%%%% LAYOUT %%%%

\setlength\parindent{0pt}
\setlength\parskip{5pt plus1pt minus1pt}

\AtBeginDocument{
\begin{titlepage}\pagenumbering{Roman}
  \centering
  \vspace{1cm}
  {\scshape Universität Bonn \par}
  \vspace{5cm}
    {\large Mitschrift zur Vorlesung \par}
    \vspace{.5cm}
  {\huge \textbf{\LectureName{}} \par}
  \vspace{2cm}
    {\large gehalten von \par}
    \vspace{.5cm}
  {\huge \textbf{\ProfName{}} \par}
  \vspace{8cm}
    {\large in digitaler Form übertragen von \par}
    \vspace{.5cm}
  {\Large \mName{} \par}
    \vfill
    {\large \Semester{} \par}
\end{titlepage}
}

\AtEndDocument{
\pagebreak
\pagenumbering{Alph}
\printindex
}

\ifoot{\Semester}
\ohead{\LectureName}
\cfoot{\thepage}
\ihead{\ProfName}
\ofoot{\mName}

% \title{\vspace{-1cm} \einheit}
\author{}
\date{}

\makeindex[columns=2, title=Index, intoc]


%%%% MACROS %%%%

\DeclarePairedDelimiter\ceil{\lceil}{\rceil}
\DeclarePairedDelimiter\floor{\lfloor}{\rfloor}
\DeclarePairedDelimiter\set{ \{ }{ \} }
\DeclarePairedDelimiter{\intervalcc}{[}{]}
\DeclarePairedDelimiter{\intervalco}{[}{)}
\DeclarePairedDelimiter{\intervaloc}{(}{]}
\DeclarePairedDelimiter{\intervaloo}{(}{)}
\DeclarePairedDelimiter{\abs}{\lvert}{\rvert}
\DeclarePairedDelimiter{\norm}{\lVert}{\rVert}
\DeclarePairedDelimiter{\klam}{(}{)}
\DeclarePairedDelimiter{\skal}{\langle}{\rangle}

\newcommand{\mN}{\mathbb{N}}
\newcommand{\mZ}{\mathbb{Z}}
\newcommand{\mQ}{\mathbb{Q}}
\newcommand{\mR}{\mathbb{R}}
\newcommand{\mC}{\mathbb{C}}
\newcommand{\IN}{\mathbb{N}}
\newcommand{\IZ}{\mathbb{Z}}
\newcommand{\IQ}{\mathbb{Q}}
\newcommand{\IR}{\mathbb{R}}
\newcommand{\IC}{\mathbb{C}}
\newcommand{\IP}{\mathbb{P}}
\newcommand{\IK}{\mathbb{K}}
\newcommand{\IL}{\mathbb{L}}
\newcommand{\IF}{\mathbb{F}}
\newcommand{\IV}{\mathbb{V}}
\newcommand{\IS}{\mathbb{S}}
\newcommand{\IE}{\mathbb{E}}
\newcommand{\cK}{\mathcal{K}}
\newcommand{\cL}{\mathcal{L}}
\newcommand{\cM}{\mathcal{M}}
\newcommand{\cS}{\mathcal{S}}
\newcommand{\cU}{\mathcal{U}}
\newcommand{\cA}{\mathcal{A}}
\newcommand{\cP}{\mathcal{P}}
\newcommand{\cQ}{\mathcal{Q}}
\newcommand{\cB}{\mathcal{B}}
\newcommand{\cC}{\mathcal{C}}
\newcommand{\mb}[1]{\mathbb{#1}}
\newcommand{\mc}[1]{\mathcal{#1}}
\newcommand{\f}[2]{\frac{#1}{#2}}
\newcommand{\ad}{^\mathrm{ad}}
\newcommand{\rang}{\mathrm{rang}}
\newcommand{\cmark}{\text{\ding{51}}}
\newcommand{\xmark}{\text{\ding{55}}}
\newcommand{\ggT}{\mathrm{ggT}}
\newcommand{\kgV}{\mathrm{kgV}}
\newcommand{\charac}{\mathrm{char}}
\newcommand{\BLF}{\mathrm{BLF}}
\newcommand{\range}{\mathrm{range}}
\newcommand{\rd}{\mathrm{rd}}
\newcommand{\eps}{\mathrm{eps}}
\newcommand{\Eig}{\mathrm{Eig}}
\newcommand{\Hau}{\mathrm{Hau}}
\newcommand{\enquote}[1]{\glqq{}#1\grqq{}}
\newcommand{\Tensor}{\bigotimes\nolimits}
\newcommand{\Mor}{\mathrm{Mor}}
\newcommand{\Hom}{\mathrm{Hom}}
\newcommand{\End}{\mathrm{End}}
\newcommand{\Abb}{\mathrm{Abb}}
\newcommand{\Ker}{\mathrm{Ker}}
\newcommand{\Img}{\mathrm{Im}}
\newcommand{\Inkl}{\mathrm{Inkl}}
\newcommand{\const}{\mathrm{const}}
\newcommand{\inner}[1]{\mathring{#1}}

\newcommand{\kdot}{\cdot_k}%{\mathbin{\raisebox{2pt}{\(\divdot\)}}}
\newcommand{\bij}{\mathrel{\overset{\sim}{\to}}}
\newcommand{\surj}{\twoheadrightarrow}
\newcommand{\inj}{\hookrightarrow}
\newcommand{\iso}{\cong}
\newcommand{\id}{\mathrm{id}}
\newcommand{\Id}{\mathrm{Id}}
\newcommand{\rg}{\mathrm{rg}}
\newcommand{\dist}{\mathrm{dist}}
\newcommand{\diag}{\mathrm{diag}}
\newcommand{\Gl}{\mathrm{Gl}}
\newcommand{\Bij}{\mathrm{Bij}}
\newcommand{\ord}{\mathrm{ord}}
\newcommand{\sgn}{\mathrm{sgn}}
\newcommand{\spn}{\mathrm{span}}
\newcommand{\chark}{\mathrm{char}}
\newcommand{\Bilin}{\mathrm{Bilin}}
\newcommand{\transp}[1]{\begin{pmatrix}\begin{smallmatrix}#1\end{smallmatrix}\end{pmatrix}}
\newcommand{\EV}{\mathrm{EV}}
\newcommand{\EW}{\mathrm{EW}}
\newcommand{\idx}{\mathrm{index}}
\newcommand{\NST}{\mathrm{NST}}
\newcommand{\tr}{\mathrm{tr}}
\newcommand{\Unif}{\mathrm{Unif}}
\newcommand{\Lin}{\mathrm{Lin}}
\newcommand{\Bin}{\mathrm{Bin}}
\newcommand{\Pf}{\mathrm{Pf}}
\newcommand{\Sp}{\mathrm{Sp}}
\newcommand{\Sl}{\mathrm{Sl}}
\newcommand{\Var}{\mathrm{Var}}
\newcommand{\Vol}{\mathrm{Vol}}
\newcommand{\Sym}{\mathrm{Sym}}
\newcommand{\1}{\mathds{1}}
\newcommand{\epi}{\mathrm{epi}}
\newcommand{\SO}{\mathrm{SO}}
\newcommand{\SU}{\mathrm{SU}}
\newcommand{\Ob}{\mathrm{Ob}}
\newcommand{\Coker}{\mathrm{Coker}}
\newcommand{\Coim}{\mathrm{Coim}}
\newcommand{\supp}{\mathrm{supp}}
\newcommand{\Lip}{\mathrm{Lip}}
\newcommand{\dd}{\mathrm{d}}
\newcommand{\ee}{\mathrm{e}}
\newcommand{\grad}{\triangledown}
\newcommand{\ra}{\rightarrow}
\newcommand{\Ra}{\Rightarrow}
\newcommand{\la}{\leftarrow}
\newcommand{\La}{\Leftarrow}
\newcommand{\lra}{\leftrightarrow}
\newcommand{\Lra}{\Leftrightarrow}

\newcommand{\konj}[1]{\overline{#1}}
\newcommand{\tra}[1]{\prescript{t}{}{#1}}
\renewcommand{\Re}{\mathrm{Re}}


\newcommand{\breakline}[1]{%
    \begingroup%
        \par\centering\bfseries%
        \rule[0.6ex]{1.5cm}{1pt} #1 \rule[0.6ex]{1.5cm}{1pt}\par%
    \endgroup%
}


%%%% THEOREMS %%%%
% \theoremstyle{theorem}
\newtheorem{lemma}{Lemma}[section]
% \theoremstyle{theorem}
% \newtheorem{satz}[lemma]{Satz}
% \theoremstyle{theorem}
\newtheorem{proposition}[lemma]{Proposition}
\newtheorem{korollar}[lemma]{Korollar}
\newtheorem*{Korollar}{Korollar}
\theoremstyle{definition}
\newtheorem{frage}[lemma]{Frage}
\newtheorem{definition}[lemma]{Definition}
\newtheorem*{beispiel}{Example}
\newtheorem{bsp}[lemma]{Example}
\newtheorem*{example}{example}
\newtheorem{aufgabe}{Aufgabe}
\newtheorem{behauptung}[lemma]{Behauptung}
\newtheorem*{bemerkung}{Bemerkung}
\newtheorem{bem}[lemma]{Bemerkung}
\newtheorem{axiom}[lemma]{Axiom}
\newtheorem{problem}{Aufgabe}
\newtheorem*{construction}{Construction}
\newtheorem{Construction}[lemma]{Construction}
\newtheorem*{notation}{Notation}




\tcbset{
  defstyle/.style={fonttitle=\bfseries\upshape, %fontupper=\slshape,
  colback=blue!5!white,colframe=blue!75!black},
  theostyle/.style={fonttitle=\bfseries\upshape, fontupper=\slshape,
  colback=red!10!white,colframe=red!75!black},
  lemstyle/.style={fonttitle=\bfseries\upshape, fontupper=\slshape,
  colback=green!5,colframe=green!35!black}
  }
  
  
\newtcbtheorem[use counter*=lemma,crefname={lemma}{lemmas}]{lem}{Lemma}%
{lemstyle}{lem}
\newtcbtheorem[use counter*=lemma,crefname={definition}{definitions}]{defi}{Definition}%
{defstyle}{def}
\newtcbtheorem[use counter*=lemma,crefname={theorem}{theorems}]{thm}{Theorem}%
{theostyle}{thm}



%%%% MISC %%%%

\pgfplotsset{compat=1.15}

\usetikzlibrary{arrows}
\usetikzlibrary{shapes, arrows.meta, positioning}
\SelectInputMappings{
  adieresis={ä},
  germandbls={ß}
}
\usetikzlibrary{cd}

\makeatletter
\def\namedlabel#1#2{\begingroup
   \def\@currentlabel{#2}%
   \label{#1}\endgroup
}
\makeatother


\setcounter{MaxMatrixCols}{20}



\numberwithin{equation}{section}

\algrenewcommand\algorithmicrequire{\textbf{Input:}}
\algrenewcommand\algorithmicensure{\textbf{Output:}}
% \algnewcommand\algorithmicappend{\textpf{append}}