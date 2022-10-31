\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{tesisCNA}
              [2022/10/25 v5.2.overleaf
 Tesis del Programa de Doctorado en Ciencias Naturales y Aplicadas (Universidad de Navarra) LaTeX class]
\LoadClassWithOptions{book}

\def\nodedicatoria{\null}
\def\noindicealfabetico{\null}
\def\listatablasfiguras{\null}
\newcommand{\idiomadelatesis}[1]{\def\Ambitoidioma{#1}}
\newcommand{\nombrecompletodoctorando}[1]{\def\NombreTesista{#1}}
\newcommand{\titulodelatesis}[1]{\def\TituloTesis{#1}}
\newcommand{\nombrecompletodirector}[1]{\def\NombreDirector{#1}}
\newcommand{\nombrecompletocodirector}[1]{\def\NombreDirectorB{#1}}
\newcommand{\fechadelectura}[1]{\def\Fecha{#1}}
\RequirePackage{ifthen}
\newcommand{\dosdirectores}[1]{\ifthenelse{\equal{#1}{si}}{\def\Ambito{dosdir}}{\def\Ambito{undir}}}
\newcommand{\doctoradointernacional}[1]{\ifthenelse{\equal{#1}{si}}{\def\dint{si}}{\def\dint{no}}}
\newcommand{\sexodoctorando}[1]{\ifthenelse{\equal{#1}{mujer}}{\def\SexoTesista{a}}{\def\SexoTesista{\null}}}
\newcommand{\sexodeldirector}[1]{\ifthenelse{\equal{#1}{mujer}}{\def\SexoDirector{a}}{\def\SexoDirector{\null}}}
\newcommand{\sexodelcodirector}[1]{\ifthenelse{\equal{#1}{mujer}}{\def\SexoDirectorB{a}}{\def\SexoDirectorB{\null}}}

\input{formalism/datospersonales}
\ifthenelse{\equal{\Ambitoidioma}{english}}{\def\PD{Natural and Applied Sciences}}{\def\PD{Ciencias Naturales y Aplicadas}}

\def\numera{\null}
\def\nousafuentes{\null}
\DeclareOption{borrador}{\def\numera{1}}
\DeclareOption{sinfuentes}{\def\nousafuentes{1}}

\ExecuteOptions{a4paper}
\ProcessOptions
\RequirePackage{polyglossia}
\setmainlanguage{\Ambitoidioma}%
\ifthenelse{\equal{\Ambitoidioma}{english}}{\setotherlanguages{spanish}}{\setotherlanguages{english}}%
\selectlanguage{\Ambitoidioma}
\RequirePackage[usenames,dvipsnames,svgnames]{xcolor}
\RequirePackage{graphicx}
\RequirePackage{ae}
\RequirePackage{eurosym}
\RequirePackage{lineno}
\RequirePackage{fancyhdr}
\RequirePackage{ifpdf}
\RequirePackage{amsmath,amssymb,amsthm}
\RequirePackage{unicode-math}
\RequirePackage{fontspec}
\RequirePackage[%
pdfencoding=auto,%
pdfusetitle,%
%implicit=false,%
colorlinks=true,%
linkcolor=NavyBlue,%
urlcolor=NavyBlue%
]{hyperref}
\RequirePackage{caption}
\RequirePackage[square,comma,numbers,sort&compress]{natbib}
\setlength\paperheight {297mm}%
\setlength\paperwidth  {210mm}%
%\special{papersize=210mm,297mm}   %%%%% no se necesita con lualatex

\def\captionsenglish{%
   \def\prefacename{Preface}%
   \def\refname{References}%
   \def\abstractname{Abstract}%
   \def\bibname{Bibliography}%
   \def\chaptername{Chapter}%
   \def\appendixname{Appendix}%
   \def\contentsname{Contents}%
   \def\listfigurename{List of Figures}%
   \def\listtablename{List of Tables}%
   \def\indexname{Index}%
   \def\figurename{Figure}%
   \def\tablename{Table}%
   \def\partname{Part}%
   \def\enclname{encl}%
   \def\ccname{cc}%
   \def\headtoname{To}%
   \def\pagename{Page}%
   \def\seename{see}%
   \def\alsoname{see also}%
   \def\proofname{Proof}%
   \def\sectionname{Section}%
}%
\def\captionsspanish{%
  \def\prefacename{Prefacio}%
  \def\refname{Referencias}%
  \def\abstractname{Resumen}%
  \def\bibname{Bibliograf\'{\i}a}%
  \def\chaptername{Cap\'{\i}tulo}%
  \def\appendixname{Ap\'endice}%
  \def\contentsname{\'Indice general}%
  \def\listfigurename{\'Indice de figuras}%
  \def\listtablename{\'Indice de tablas}%
  \def\indexname{\'Indice alfab\'etico}%
  \def\figurename{Figura}%
  \def\tablename{Tabla}%
  \def\partname{Parte}%
  \def\enclname{Adjunto(s)}%
  \def\ccname{Copia a}%
  \def\headtoname{A}%
  \def\pagename{P\'agina}%
  \def\seename{v\'ease}%
  \def\alsoname{v\'ease tambi\'en}%
  \def\proofname{Prueba}%
  \def\glossaryname{Glosario}%
  \def\sectionname{Secci\'on}%
}%

%% FUENTES
%%%%%%%% FUENTES NO OBLIGATORIAS
\ifthenelse{\equal{\nousafuentes}{1}}{%
%
%%%%% fuentes mas estandar (para la opcion SINFUENTES ! )
%% fuente principal
\setmainfont[Ligatures=TeX,SmallCapsFont={* Caps}]{Latin Modern Roman}
%% fuente principal matematica
\setmathfont{Latin Modern Math}%
%% fuente principal monoespaciada ( verbatim !)
\setmonofont{Latin Modern Mono}%
}%
%
%%%%% fuentes sin la opción SINFUENTES
{%
%%%% fuentes estandar de uso (pueden cambiarse)
%% fuente principal
\setmainfont{IwonaLight-Regular}[
BoldFont = {Iwona-Bold},
ItalicFont = {IwonaLight-Italic},
BoldItalicFont = {Iwona-Italic},
SlantedFont={IwonaLight-Italic},
BoldSlantedFont={IwonaBold-Italic},
SmallCapsFont={Iwona},
SmallCapsFeatures={Letters=SmallCaps},]
%% fuente principal matemática
\setmathfont{TeX Gyre Pagella Math}
%\setmathfont{Asana Math}    %% si se descomenta esta linea hay que instalar la fuente correspondiente
%% fuente principal monoespaciada ( verbatim !)
\setmonofont{Latin Modern Mono}%
%
%%%% fuentes especiales usadas %%%% SE PUEDEN CAMBIAR SIN PROBLEMA
%% fuente epígrafe
\usepackage{aurical} % se usa con \Fontauri
\def\fuenteepigrafe{\Fontauri}
%% fuente dedicatoria
\newfontfamily\fuentededicatoria{LobsterTwo}
%
%%%% fuentes especiales NO usadas %%%% SE PUEDEN CAMBIAR SIN PROBLEMA
%% para utilizar puntualmente (pueden utilizarse, descomentandolas, cambiarse o añadir nuevas).
%% Previamente hay que instalarlas !!!!!
%\newfontfamily\fuenteA{texgyrechorus-mediumitalic}
%\newfontfamily\fuenteB{Kurier}[BoldFont={Kurier Heavy}] %tiene maths
%\newfontfamily\fuenteC{Libertinus Sans} 
%\newfontfamily\fuenteD{Chivo Light}
%\newfontfamily\fuenteE{Arial}
%\newfontfamily\fuenteF{Arial Narrow}
%\newfontfamily\fuenteG{Garamond}
%\newfontfamily\fuenteH{Times}
}

%%%%%%%% FUENTES OBLIGATORIAS UNAV
%%%% Necesarias  NO TOCAR !!!!
\newfontfamily\myfont{RotisSansSerifStd-Light}[Scale=1.155, Path=formats/]
\newfontfamily\myfontbold{RotisSansSerifStd-Bold}[Scale=1.155, Path=formats/]
%% fin FUENTES

\providecommand\phantomsection{}

\makeindex

\definecolor{granate}{cmyk}{0,0.91,0.72,0.235}
\definecolor{oscuro}{gray}{0.3}

\setlength{\textwidth}{162mm}
\setlength{\textheight}{230mm}
\setlength{\topmargin}{0pt}
\setlength{\oddsidemargin}{0pt}
\setlength{\evensidemargin}{0pt}
\setlength{\headheight}{13.2pt}

%%%%%%%%%% CABECERA %%%%%%%%%%
\newcommand{\cabecera}{%
\renewcommand{\baselinestretch}{1.2}\noindent%
\def\CIENCIAS{F\hspace{1mm}a\hspace{1mm}c\hspace{1mm}u\hspace{1mm}l\hspace{1mm}t\hspace{1mm}a\hspace{1mm}d\hspace{1mm}\ \hspace{1mm}d\hspace{1mm}e\hspace{1mm}\ \hspace{1mm}C\hspace{1mm}i\hspace{1mm}e\hspace{1mm}n\hspace{1mm}c\hspace{1mm}i\hspace{1mm}a\hspace{1mm}s}%
\def\SCIENCE{S\hspace{1mm}c\hspace{1mm}h\hspace{1mm}o\hspace{1mm}o\hspace{1mm}l\hspace{1mm}\ \hspace{1mm}o\hspace{1mm}f\hspace{1mm}\ \hspace{1mm}S\hspace{1mm}c\hspace{1mm}i\hspace{1mm}e\hspace{1mm}n\hspace{1mm}c\hspace{1mm}e}%
%%%%%%%%%%%%%%%%%%%%%%% 1 hoja anverso
\pagenumbering{Roman}\pagestyle{empty}%
\vspace*{-1.3cm}% (-3cm original)
\begin{center}\includegraphics[width=12cm]{figuras/marca1negro}\end{center}\vspace*{0mm}
\begin{center}
{\myfont\Huge\CIENCIAS}\\[42mm]%
\end{center}%
\begin{center}\openup=5pt%
{\myfontbold\LARGE\TituloTesis}\\[42mm]%
\end{center}%
\begin{center}%
{\myfont\LARGE\NombreTesista}%
\end{center}
%%%%%%%%%%%%%%%%%%% 1 hoja reverso
\vfil\eject\vspace*{1cm}
%%%%%%%%%%%%%%%%%%% 2 hoja anverso
\vfil\eject%
%\pagenumbering{Roman}\pagestyle{empty}%
\vspace*{-15.5mm}%  (-20mm original)
\begin{center}\includegraphics[width=7.8cm]{figuras/marca1negro}\end{center}\vspace*{-1mm}
\begin{center}
\ifthenelse{\equal{\Ambitoidioma}{english}}{{\myfont\LARGE\SCIENCE}\\[20mm]}{{\myfont\LARGE\CIENCIAS}\\[20mm]}%
\end{center}%
\begin{center}\openup=5pt%
{\myfontbold\LARGE\TituloTesis}%
\end{center}
\vspace{2cm}
\noindent\ifthenelse{\equal{\Ambitoidioma}{english}}{{\myfont\large Submitted by {\myfontbold\large \NombreTesista} in partial fulfillment of the requirements for the Doctoral Degree of the University of Navarra\\[2.2cm]This dissertation has been written under \ifthenelse{\equal{\Ambito}{undir}}{my}{our} supervision in the Doctoral Program in\linebreak \PD, and \ifthenelse{\equal{\Ambito}{undir}}{I}{we} approve its submission to the Defense Committee.}}{{\myfont\large Memoria presentada por {\myfontbold\large D$^{\mbox{\myfontbold\normalsize\SexoTesista}}$.\ \NombreTesista} para aspirar al grado de Doctor\SexoTesista\ por la Universidad de Navarra\\[2.2cm]El presente trabajo ha sido realizado bajo \ifthenelse{\equal{\Ambito}{undir}}{mi}{nuestra} dirección en el Programa de Doctorado en \PD, y %
%\ifthenelse{\equal{\Ambito}{undir}}{autorizo}{autorizamos} %
\ifthenelse{\equal{\Ambito}{undir}}{doy mi}{damos nuestro} visto bueno para %
que sea presentado ante el Tribunal que lo ha de juzgar.}}\\[2.7cm]
\ifthenelse{\equal{\Ambito}{undir}}{\begin{minipage}[t]{11cm}
       \myfont\large Dr\ifthenelse{\equal{\Ambitoidioma}{english}}{\null}{\SexoDirector}.\ \NombreDirector\end{minipage}}{\begin{minipage}[t]{15cm}
\myfont\large Dr\ifthenelse{\equal{\Ambitoidioma}{english}}{\null}{\SexoDirector}.\ \NombreDirector\hspace*{\fill} Dr\ifthenelse{\equal{\Ambitoidioma}{english}}{\null}{\SexoDirectorB}.\ \NombreDirectorB\end{minipage}}
%%%%%%%%%%%%%%%%%%% 2 hoja reverso
\vfil\eject\vspace*{1cm}
%%%%%%%%%%%%%%%%%%% 3 hoja anverso
\vfil\eject\vspace*{2cm}
\noindent{\myfont\large\begin{spanish}\myfont\large Declaración:

\vspace{1mm}
\noindent Por la presente yo, {\myfontbold\large D$^{\mbox{\myfontbold\normalsize\SexoTesista}}$.\ \NombreTesista}, declaro que esta tesis es fruto de mi propio trabajo y que en mi conocimiento, no contiene ni material previamente publicado o escrito por otra persona, ni material que sustancialmente haya formado parte de los requerimientos para obtener cualquier otro título en cualquier centro de educación superior, excepto en los lugares del texto en los que se ha hecho referencia explícita a la fuente de la información.\end{spanish}\\[2mm]
\ifthenelse{\equal{\Ambitoidioma}{english}}{(I hereby declare that this submission is my own work and that, to the best of my knowledge and belief, it contains no material previously published or written by another person nor material which to a substantial extent has been accepted for the award of any other degree of the university or other institute of higher learning, except where due acknowledgment has been made in the text.)\\[2mm]}{\relax}
\vspace*{2.8cm}

\hspace*{\fill} \ifthenelse{\equal{\Ambitoidioma}{english}}{\null}{D$^{\mbox{\myfont\normalsize\SexoTesista}}$.\ }\NombreTesista\\[1mm]
\hspace*{\fill} \ifthenelse{\equal{\Ambitoidioma}{english}}{Date}{Fecha}: \Fecha

\vspace*{\fill}

\noindent\textcopyright\ \NombreTesista
}
%%%%%%%%%%%%%%%%%%% 3 hoja reverso
\vfil\eject \vspace*{1cm}
\vfil\eject
}
%%%%%%%%%%%%%%%%%% FINAL CABECERA

%%%%%%%%% dedicatoria
\newcommand{\dedicatoria}[1]{%
\vspace*{4.5cm}\hspace*{\fill}\begin{minipage}[c]{10cm}
\begin{flushright}%
\ifthenelse{\equal{\nousafuentes}{1}}{\relax}{\fuentededicatoria}%
\Large\input{formalism/dedicatoria}\end{flushright}
\end{minipage}
\cleardoublepage%
}
%%%%%%%%%

%%%%%%%%% agradecimientos
\newcommand{\agradecimientos}{%
\begin{center}\bfseries\LARGE\ifthenelse{\equal{\Ambitoidioma}{english}}{Acknowledgements}{Agradecimientos}\end{center}
\vspace*{3mm}\input{formalism/agradecimientos}
\cleardoublepage
}
%%%%%%%%%

%%%%%%%%% Prefacio
\newcommand{\prefacio}{%
\ifthenelse{\equal{\Ambitoidioma}{english}}{\chapter*{Preface\chaptermark{Preface}}\addcontentsline{toc}{chapter}{Preface}}{\chapter*{Pr\'ologo\chaptermark{Pr\'ologo}}\addcontentsline{toc}{chapter}{Pr\'ologo}}\input{preface}%
\cleardoublepage%
}
%%%%%%%%%

%%%%%%%%% Glosario
\newcommand{\glosario}{%
\ifthenelse{\equal{\Ambitoidioma}{english}}{\chapter*{Glossary\chaptermark{Glossary}}\addcontentsline{toc}{chapter}{Glossary}}{\chapter*{Abreviaturas y Símbolos\chaptermark{Abreviaturas y Símbolos}}\addcontentsline{toc}{chapter}{Abreviaturas y Símbolos}}\input{formalism/glosario}%
\cleardoublepage%
}
%%%%%%%%%


%%%%%%%%% conclusiones y perspectivas
\newcommand{\conclusionesperspectivas}{%
\label{cap:concpers}%
\setcounter{chapter}{-1}%
%\def\thechapter{CP}
\setcounter{figure}{0}%
\setcounter{table}{0}%
\ifthenelse{\equal{\Ambitoidioma}{english}}{\chapter*{Conclusions and Outlook\chaptermark{Conclusions and Outlook}}\addcontentsline{toc}{chapter}{Conclusions and Outlook}}{\chapter*{Conclusiones y perspectivas\chaptermark{Conclusiones y perspectivas}}\addcontentsline{toc}{chapter}{Conclusiones y perspectivas}}
%\dos%
\ifthenelse{\equal{\Ambitoidioma}{english}\or\equal{\dint}{si}}{\section*{Conclusions}\begin{english}\input{conclusiones}\end{english}}{\section*{Conclusiones}\input{conclusiones}}
%\tres%
\ifthenelse{\equal{\Ambitoidioma}{english}}{\section*{Outlook}}{\section*{Perspectivas}}\input{perspectivas}
%\cuatro%
\cleardoublepage
}
%%%%%%%%%

%%%%%%%%% resumen en ingles
\newcommand{\resumeneningles}{%
\cleardoublepage\begin{english}% 
\thispagestyle{plain}\phantomsection\addcontentsline{toc}{chapter}{Summary}\vspace*{-1cm}\begin{center}{\Large\bf Summary}\end{center}
\input{summary.tex}%
\end{english}%
\newpage
}
%%%%%%%%%

%%%%%%%%% resumen en espanyol
\newcommand{\resumenenespanyol}{%
\begin{spanish}%
\thispagestyle{plain}\phantomsection\addcontentsline{toc}{chapter}{Resumen}\vspace*{-1cm}\begin{center}{\Large\bf Resumen}\end{center}
\input{resumen.tex}%
\end{spanish}%
}
%%%%%%%%%

%%%%%%%%% epigrafe
\newcommand{\referenciaepigrafe}[2]{\vskip.5\baselineskip{\scshape #1, {\LARGE\ifthenelse{\equal{\nousafuentes}{1}}{\relax}{\fuenteepigrafe}\bfseries #2}}\par}
\newcommand{\textoepigrafe}[1]{{\ifthenelse{\equal{\nousafuentes}{1}}{\relax}{\fuenteepigrafe}#1}}
\newenvironment{bookepigraph}{\pagestyle{empty}\parindent0pt\thispagestyle{empty}\vspace*{2pc}\advance\leftskip4.25pc\Large}{\par}
\newcommand{\epigrafe}{%
\begin{bookepigraph}\input{formalism/epigrafe}\cleardoublepage\end{bookepigraph}%
}
%%%%%%%%%
%%%%%%%%% epigrafe de capitulo
\newcommand{\chapterepigraph}[3]{%
\begin{bookepigraph}%
\textoepigrafe{#1}
\referenciaepigrafe{#2}{#3}
\cleardoublepage%
\end{bookepigraph}%
}
%%%%%%%%%

%%%%%%%%% Material fijo inicial: toc, prefacio e introduccion
\newcommand{\materialfijoinicial}{%
%\setlength{\textheight}{234mm}\setlength{\topmargin}{-20mm} %
\pagenumbering{roman}
\tableofcontents
\ifthenelse{\equal{\listatablasfiguras}{\null}}{\relax}{\cleardoublepage\phantomsection\addcontentsline{toc}{chapter}{\listfigurename}\listoffigures\cleardoublepage\phantomsection\addcontentsline{toc}{chapter}{\listtablename}\listoftables\relax}%
\cleardoublepage
}
%%%%%%%%%

\newcommand{\grc}{\ensuremath{^{\circ}}}
\newcommand{\figura}[3]{
  \begin{figure}[htp]
  	\centering
    \includegraphics[width=#2cm]{#1}
    \caption{#3}
  	\label{fig:#1}
  \end{figure}
}

\AtBeginDocument{%
\pagestyle{empty}%
\cabecera%
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xipt{13.6}%
   \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}%
\ifthenelse{\equal{\nodedicatoria}{\null}}{\dedicatoria\relax}{\relax}%
\ifthenelse{\equal{\numera}{1}{\null}}{\linenumbers\renewcommand{\baselinestretch}{1.6}}{\renewcommand{\baselinestretch}{1.15}}\normalsize%
\agradecimientos
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\scshape #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\sectionname\ \thesection\ {\typeout{#1}}}}
\fancyhf{}
\fancyhead[LE,RO]{\bfseries\thepage}
\fancyhead[LO]{\rightmark}
\fancyhead[RE]{\leftmark}
%\fancypagestyle{plain}{\fancyhead[LE,RO]{\bfseries\thepage}}
%
}

\AtEndDocument{%
\pagestyle{empty}%
\cleardoublepage%
\newpage\vspace*{3cm}
}


