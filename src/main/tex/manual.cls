%
%  manual.cls
%
%  Created by Daniel D. Senften on 2008-12-14.
%  Copyright (c) 2008-2012 Diso. All rights reserved.
%
%
%  Die wichtigsten, zusätzlichen Definitionen, sowie sämtliche 'Packages', die
%  in diesem Dokument verwendet/referenziert werden, sind in der Dokumentenklasse
%  'manual.cls' abgelegt. Dies hat den Vorteil, dass diese in jedem weiteren
%  (LaTeX) Dokument wiederverwendet werden können.
% 
%  Idealerweise wird die eigene Dokumentenklasse im zentralen Verzeichnis
%  '~/Library/texmf/tex/latex' abgelegt.
%
\NeedsTeXFormat{LaTeX2e}\relax
\ProvidesClass{manual}[2017/08/10 Manual Class]
\DeclareOption{a4paper}{\PassOptionsToClass{\CurrentOption}{article}}
\DeclareOption{11pt}{\PassOptionsToClass{\CurrentOption}{article}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{a4paper,11pt}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage{beamerarticle}
\RequirePackage{caption}

\RequirePackage[T1]{fontenc}
\RequirePackage{fontspec}
\RequirePackage{listings} % Package for including code in the document

\RequirePackage{xcolor}
\DefineNamedColor{named}{Pantone}{cmyk}{55,15,0,0}

\RequirePackage[top=3cm,bottom=2cm,left=2cm,right=1.5cm,headsep=10pt,a4paper]{geometry} % Page margins

\RequirePackage{boxedminipage} % Surround parts of graphics with box
\RequirePackage{nextpage}
\RequirePackage{times}
\RequirePackage{url} % Typesetting URLs, path names, and the like
\RequirePackage{verbatim}
\RequirePackage{lastpage} % Last page reference
\RequirePackage{subfig}

\RequirePackage{longtable} % Making multipage tabulars
\RequirePackage{supertabular}
\RequirePackage{relsize,fancyvrb}
\RequirePackage{multicol,multirow}

\RequirePackage{talent-factory}

\RequirePackage{gitdags} % https://github.com/Jubobs/gitdags/wiki

\RequirePackage{fancyhdr} % Headings
\fancyhf{}                % clear all header and footer fields

\fancypagestyle{plain}{%
  \fancyhead{} % get rid of headers
  \fancyfoot{} % get rid of footers
  \renewcommand{\headrulewidth}{0pt} % and the line
}

\parindent0em

%\renewcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{1.5em}{3.2em}}
%\renewcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
%\renewcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
%\renewcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}

\endinput
