%% hgbthesis.cls
%% Autor: Wilhelm Burger (wilhelm.burger@fh-hagenberg.at)
%% Diese Datei ist Teil des hagenberg-Package zur Erstellung von 
%% Bachelor- und Diplomarbeiten.

\NeedsTeXFormat{LaTeX2e}
%\newcommand{\hgbthesisVersion}{}  	%Versionsnummer (obsolete)
\newcommand{\hgbthesisDate}{2010/06/15} %Versionsdatum
\ProvidesClass{hgbthesis}[\hgbthesisDate\space LaTeX-Vorlage fuer Diplomarbeiten, Masterabeiten, Bachelorarbeiten etc.]

\RequirePackage{ifthen}

\newcommand{\hgb@MainLanguage}{german}	% also referenced in hgb.sty
\newcommand{\@matitelseiten}{}
\newcommand{\@datitelseiten}{}
\newcommand{\@batitelseiten}{}
\newcommand{\@prtitelseiten}{}
\newcommand{\@maketitlepages}{\@datitelseiten}  %default: Diplomarbeit


%% begin class options ---------------------------------------------
\DeclareOption{master}{\renewcommand{\@maketitlepages}{\@matitelseiten}}
\DeclareOption{diplom}{\renewcommand{\@maketitlepages}{\@datitelseiten}}
\DeclareOption{bachelor}{\renewcommand{\@maketitlepages}{\@batitelseiten}}
\DeclareOption{praktikum}{\renewcommand{\@maketitlepages}{\@prtitelseiten}}
\DeclareOption{english}{\renewcommand{\hgb@MainLanguage}{english}}
\DeclareOption{german}{\renewcommand{\hgb@MainLanguage}{german}}
\DeclareOption*{\ClassWarning{hgbthesis}{Unknown document option "\CurrentOption"}}
\ProcessOptions
%% end class options ---------------------------------------------
 
\LoadClass[a4paper,11pt,oneside]{book}
 
\RequirePackage{hgb}[2009/11/27]	% load associated style file hgb.sty


%-------------- Setup für Seiten im Front-Teil --------------------



\newcommand{\@studiengang}{\@MissingArg{Studiengang??}}
\newcommand{\studiengang}[1]{%
	\renewcommand{\@studiengang}{#1}
}

\newcommand{\@studienort}{\@MissingArg{Studienort??}}
\newcommand{\studienort}[1]{%
	\renewcommand{\@studienort}{#1}
}

\newcommand{\@betreuer}{\@MissingArg{Betreuer??}}
\newcommand{\betreuer}[1]{%
	\renewcommand{\@betreuer}{#1}
}

\newcommand{\@nummer}{\@MissingArg{Arbeit Nummer??}}
\newcommand{\nummer}[1]{%
	\renewcommand{\@nummer}{#1}
}

\newcommand{\@gegenstand}{\@MissingArg{Gegenstand??}}
\newcommand{\gegenstand}[1]{%
	\renewcommand{\@gegenstand}{#1}
}

\newcommand{\@semester}{\@MissingArg{Semester??}}
\newcommand{\semester}[1]{%
	\renewcommand{\@semester}{#1}
}

\newcommand{\@abgabemonat}{\@MissingArg{Monat??}}
\newcommand{\damonat}[1]{%
	\renewcommand{\@abgabemonat}{#1}
}
\newcommand{\abgabemonat}[1]{%
	\renewcommand{\@abgabemonat}{#1}
}

\newcommand{\@abgabejahr}{\@MissingArg{Jahr??}}
\newcommand{\dajahr}[1]{%
\renewcommand{\@abgabejahr}{#1}
}
\newcommand{\abgabejahr}[1]{%
\renewcommand{\@abgabejahr}{#1}
}

\newcommand{\@firma}{\@MissingArg{Firma??}}
\newcommand{\firma}[1]{%
\renewcommand{\@firma}{#1}
}

\newcommand{\@firmenUrl}{\@MissingArg{www.???}}
\newcommand{\firmenUrl}[1]{%
\renewcommand{\@firmenUrl}{#1}
}

\newcommand{\@firmenTel}{\@MissingArg{Tel??}}
\newcommand{\firmenTel}[1]{%
\renewcommand{\@firmenTel}{#1}
}

%------------------ Titelseiten -------------------

%% deprecated - use \maketitle instead!
\newcommand{\titelseite}{ 
  \ClassWarning{hgbthesis}{\noexpand\titelseite is deprecated - use \noexpand\maketitle instead}
  \maketitle
} 

\newcommand{\@batitel}{%
\begin{titlepage}%
\rule{0mm}{1mm}
\vspace*{20mm}
%\noindent Left side \hfill right side\\
\begin{center}%
  \setlength{\unitlength}{1cm}
  \begin{picture}(12,4)
  %\thinlines\put(0,0){\framebox(12,4){}}
  \put(0,1.8){\parbox{12cm}{\centering\LARGE\bf%
    \setlength{\baselineskip}{20pt}%
    \@title}}
  \end{picture}
    \vskip 10mm%
    {\large\sc\@author}
    \vskip 40mm%
    {\Large B\,A\,C\,H\,E\,L\,O\,R\,A\,R\,B\,E\,I\,T}%
    \vskip 8mm%
    {\large\sf Nr.~\@nummer}
    \vskip 8mm%
    {\large eingereicht am} \vskip 1mm {Fachhochschul-Bachelorstudiengang}%
    \vskip 4mm%
    {\large\sc\@studiengang}%
    \vskip 4mm%
    {\large in \@studienort}%
    \vskip 16mm%
    {\large im \@abgabemonat\ \@abgabejahr}%
\end{center}\par
  \vfil\null
\end{titlepage}%
}

\newcommand{\@matitel}{%
\begin{titlepage}%
\rule{0mm}{1mm}
\vspace*{20mm}
%\noindent Left side \hfill right side\\
\begin{center}%
  \setlength{\unitlength}{1cm}
  \begin{picture}(12,4)
  %\thinlines\put(0,0){\framebox(12,4){}}
  \put(0,1.8){\parbox{12cm}{\centering\LARGE\bf%
    \setlength{\baselineskip}{20pt}%
    \@title}}
  \end{picture}
    \vskip 10mm%
    {\large\sc\@author}
    \vskip 40mm%
    {\Large M\,A\,S\,T\,E\,R\,A\,R\,B\,E\,I\,T}%
    \vskip 20mm%
    {\large eingereicht am} \vskip 1mm {Masterstudiengang}%
    \vskip 4mm%
    {\large\sc\@studiengang}%
    \vskip 4mm%
    {\large in \@studienort}%
    \vskip 16mm%
    {\large im \@abgabemonat\ \@abgabejahr}%
\end{center}\par
  \vfil\null
\end{titlepage}%
}

\newcommand{\@datitel}{%
\begin{titlepage}%
\rule{0mm}{1mm}
\vspace*{20mm}
%\noindent Left side \hfill right side\\
\begin{center}%
  \setlength{\unitlength}{1cm}
  \begin{picture}(12,4)
  %\thinlines\put(0,0){\framebox(12,4){}}
  \put(0,1.8){\parbox{12cm}{\centering\LARGE\bf%
    \setlength{\baselineskip}{20pt}%
    \@title}}
  \end{picture}
    \vskip 10mm%
    {\large\sc\@author}
    \vskip 40mm%
    {\Large D\,I\,P\,L\,O\,M\,A\,R\,B\,E\,I\,T}%
    \vskip 20mm%
    {\large eingereicht am} \vskip 1mm {Fachhochschul-Masterstudiengang}%
    \vskip 4mm%
    {\large\sc\@studiengang}%
    \vskip 4mm%
    {\large in \@studienort}%
    \vskip 16mm%
    {\large im \@abgabemonat\ \@abgabejahr}%
\end{center}\par
  \vfil\null
\end{titlepage}%
}

\newcommand{\@prtitel}{%
\begin{titlepage}%
\rule{0mm}{1mm}
\vspace*{20mm}
%\noindent Left side \hfill right side\\
\begin{center}%
  \setlength{\unitlength}{1cm}
  \begin{picture}(12,4)
  %\thinlines\put(0,0){\framebox(12,4){}}
  \put(0,1.8){\parbox{12cm}{\centering\LARGE\bf%
    \setlength{\baselineskip}{20pt}%
    Endbericht zum Berufspraktikum}}
  \end{picture}
    \vskip 10mm%
    {\large\sc\@author}
    \vskip 40mm%
    {\Large B\,A\,C\,H\,E\,L\,O\,R\,A\,R\,B\,E\,I\,T}%
    \vskip 8mm%
    {\large\sf Nr.~\@nummer}
    \vskip 8mm%
    {\large eingereicht am} \vskip 1mm {Fachhochschul-Bachelorstudiengang}%
    \vskip 4mm%
    {\large\sc\@studiengang}%
    \vskip 4mm%
    {\large in \@studienort}%
    \vskip 16mm%
    {\large im \@abgabemonat\ \@abgabejahr}%
\end{center}\par
  \vfil\null
\end{titlepage}%
}

%------------------ Copyright-Seite -------------------
\newcommand{\@copyrightseite}{%
\newpage
\setcounter{page}{2}
\thispagestyle{plain}
\rule{0mm}{1mm}
\vspace*{75mm}
\begin{center}
\ifthenelse{\equal{\hgb@MainLanguage}{german}}%
	{\copyright\ Copyright\ \@abgabejahr\ \@author\\
	\vspace{3mm} Alle Rechte vorbehalten}{}
\ifthenelse{\equal{\hgb@MainLanguage}{english}}%
	{\copyright\ Copyright\ \@abgabejahr\ \@author\\
	\vspace{3mm} All Rights Reserved}{}
%\vspace{75mm} \copyright\ Copyright\ \@author\ \@abgabejahr\\
\end{center}
}

%------------------ Firmen-Seite -------------------
\newcommand{\@firmenseite}{%
\newpage
\setcounter{page}{2}
\thispagestyle{plain}
\rule{0mm}{1mm}
\begin{center}
\vspace{25mm} 
{Praktikumsstelle:}
\\
\vspace{3mm}
{\Large\sf\@firma\\ \mbox{}}
\\
{\sf \@firmenTel}
\\
{\sf \@firmenUrl}
\\
\vspace{45mm} 
{Kontaktperson:}
\\
\vspace{3mm} 
{\Large\sf\@betreuer\\ \mbox{}}
\end{center}
}

%------------------ Betreuer-Seite -------------------
\newcommand{\@babetreuerseite}{%
\newpage
\setcounter{page}{2}
\thispagestyle{plain}
\rule{0mm}{1mm}
\begin{center}
%
\vspace{40mm} 
{Diese Arbeit entstand im Rahmen des Gegenstands}\\
\vspace{6mm} 
{\Large\sf \@gegenstand\\ \mbox{}}\\
\medskip
im\\
\bigskip
{\@semester}\\
%
\vspace{45mm} 
{Betreuer:}\\
\vspace{3mm} 
{\Large\sf \@betreuer\\ \mbox{}}
\end{center}
}

\newcommand{\@erklaerungsseite}{%
\chapter{Erklärung}
%\thispagestyle{empty}

\noindent
Hiermit erkläre ich an Eides statt, dass ich die vorliegende Arbeit
selbst\-ständig und ohne fremde Hilfe verfasst, andere als die
angegebenen Quellen und Hilfsmittel nicht benutzt und die aus anderen
Quellen entnommenen Stellen als solche gekennzeichnet habe.

\vspace{10mm}
\noindent
\@studienort, am 25. November 2001

\vspace{12mm}
\noindent
\@author
}

%------------ Struktur der Frontseiten -------------------

\renewcommand{\@matitelseiten}{
\@matitel
\@copyrightseite
\@erklaerungsseite
}
     
\renewcommand{\@datitelseiten}{
\@datitel
\@copyrightseite
\@erklaerungsseite
}

\renewcommand{\@batitelseiten}{
\@batitel
\@babetreuerseite
\@erklaerungsseite
}

\renewcommand{\@prtitelseiten}{
\@prtitel
\@firmenseite
\@erklaerungsseite
}

\renewcommand{\maketitle}{	%replace standard LaTeX-command
\hypersetup{
		pdftitle={\@title},
		pdfauthor={\@author},
		pdfsubject={\@studiengang, \@studienort},
		pdfcreator={LaTeX using class hgbthesis},
		pdfproducer={},
		pdfkeywords={}
}%
\@maketitlepages
}

%% Headings -------------------------------------------------------------

\RequirePackage{fancyhdr}
\pagestyle{fancy}

\@ifundefined{chapter}%
   {}%
	 {\renewcommand{\chaptermark}[1]{%
			\ifthenelse{\value{chapter} < 1}%
				{\markboth{#1}{}}%
				{\markboth{\thechapter.\ #1}{}}
		}}

\addtolength{\headheight}{\baselineskip}
\renewcommand{\headrulewidth}{0pt} %% thin line under header
%\renewcommand{\headrulewidth}{0.4pt} %% no line under header
\renewcommand{\footrulewidth}{0pt}
\fancyhf{}                            %% Clear all fields.
%\fancyhead[LE,RO]{\sffamily\thepage} %{\bf \rightmark}
%\fancyhead[LO,RE]{\sffamily\nouppercase{\leftmark}}  %{\slshape \leftmark}
\fancyhead[R]{\sffamily\thepage} %{\bf \rightmark}
\fancyhead[L]{\sffamily\nouppercase{\leftmark}}  %{\slshape \leftmark}

\fancypagestyle{plain}{%
	\fancyhf{} % clear all header and footer fields
	\fancyfoot[C]{\sffamily\thepage} % except the center
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
}

%%-------------------------------------------------------------



\endinput

