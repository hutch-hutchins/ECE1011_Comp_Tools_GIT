\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hutch_resume}

\LoadClass[12pt]{article}

\RequirePackage[margin=.5in]{geometry}
\RequirePackage{titlesec}

\pagestyle{empty}

\titleformat{\section}          % Customise the \section command 
    {\vspace{0in}\Large\scshape\raggedright}% Make the \section headers large (\Large),
                                % small capitals (\scshape) and left aligned (\raggedright)
    {}{0em}                     % Can be used to give a prefix to all sections, like 'Section ...'
    {}                          % Can be used to insert code before the heading
    [\titlerule]                % Inserts a horizontal line after the heading


\titleformat{\subsection}
    {\normalsize\scshape\raggedright}
    {}{0em}
    {}

\titleformat{\subsubsection}
    {\normalsize\raggedright\bfseries}
    {}{0em}
    {}

\newcommand{\educationsection}[4]{%
{#1 \hfill #2 \hfill #3 \hfill #4}
}

\newcommand{\worksection}[8]{%
    \vspace{-.05in}\subsubsection[#1]{#1 \hfill #2}%
    \vspace{-.10in}\raggedright\scriptsize\hspace{.1in}{#3}%
    \vspace{-.28in}\hspace{.1in}\subsubsection{#4}%
    \normalsize\begin{itemize}
        \vspace{-.14in}\item #5
        \vspace{-.14in}\item #6
        \vspace{-.14in}\item #7
    \end{itemize}%
    \vspace{-.15in}\raggedright\small{#8}\vspace{-.1in}%
}

\newcommand{\name}[2]{%
    \section{\Large{#1}\hfill \normalsize{#2}}%
    \vspace{-.1in}%\titlerule\vspace{.05in}%
}

\newcommand{\contact}[2]{%
    {#1} \hfill {#2}\vspace{-.15in}%
}

\newcommand{\workitems}[3]{%
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}%
}