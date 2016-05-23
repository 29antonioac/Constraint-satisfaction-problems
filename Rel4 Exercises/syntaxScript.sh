tex_file=$(mktemp) ## Random temp file name

cat<<EOF >$tex_file   ## Print the tex file header
\documentclass{article}
\usepackage{listings}
\usepackage[usenames,dvipsnames]{color}  %% Allow color names
\lstdefinestyle{customasm}{
  belowcaptionskip=1\baselineskip,
  xleftmargin=\parindent,
  language=Prolog,   %% Change this to whatever you write in
  breaklines=true, %% Wrap long lines
  basicstyle=\footnotesize\ttfamily,
  commentstyle=\itshape\color{Gray},
  stringstyle=\color{Black},
  keywordstyle=\bfseries\color{OliveGreen},
  identifierstyle=\color{blue},
  xleftmargin=-8em,
}
\usepackage[colorlinks=true,linkcolor=blue]{hyperref}
\begin{document}
\tableofcontents

EOF

#find . -type f ! -regex ".*/\..*\.ecl" ! -name ".*" ! -name "*~" ! -name 'src2pdf'|
find . -type f -name "*.ecl" |
sed 's/^\..//' |                 ## Change ./foo/bar.src to foo/bar.src

while read  i; do                ## Loop through each file

   echo "\newpage" >> $tex_file   ## start each section on a new page
   echo "\section{$i}" >> $tex_file  ## Create a section for each file

   ## This command will include the file in the PDF
    echo "\lstinputlisting[style=customasm]{$i}" >>$tex_file
done &&
echo "\end{document}" >> $tex_file &&
pdflatex $tex_file -output-directory . &&
pdflatex $tex_file -output-directory .  ## This needs to be run twice
                                           ## for the TOC to be generated
