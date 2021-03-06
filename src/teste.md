\begin{threeparttable}[]
\centering
\caption{Valor atualizado líquido A17 (preços 2016)}
\label{VAL_A17}

\begin{tabular}{|l|l|l|l|l|l|l|}
\hline
Ano & TMDA & Portagem & Benefícios      & Custos       & \begin{tabular}[c]{@{}l@{}}Encargos \\ líquidos E\textsubscript{l} \end{tabular} & E\textsubscript{l} atualizado     \\ \hline
0   & 5558 & ----     & 0,00        & 690000000,00 & -690000000,00 & -690000000,00 \\
1   & 5600 & 14,00    & 28616000,00 & 8553707,10   & 20062292,90   & 19290666,25   \\
2   & 5600 & 14,42    & 29480918,60 & 8812242,90   & 20668675,70   & 19109352,54   \\
3   & 5600 & 14,64    & 29923132,38 & 8944426,54   & 20978705,84   & 18649993,10   \\
4   & 5600 & 14,86    & 30371979,36 & 9078592,94   & 21293386,43   & 18201675,96   \\
5   & 5600 & 15,08    & 30827559,06 & 9214771,83   & 21612787,22   & 17764135,67   \\
6   & 5600 & 15,31    & 31289972,44 & 9352993,41   & 21936979,03   & 17337113,18   \\
7   & 5600 & 15,54    & 31759322,03 & 9493288,31   & 22266033,72   & 16920355,65   \\
8   & 5600 & 15,77    & 32235711,86 & 9635687,64   & 22600024,22   & 16513616,33   \\
9   & 5600 & 16,01    & 32719247,54 & 9780222,95   & 22939024,59   & 16116654,40   \\
10  & 5600 & 16,25    & 33210036,25 & 9926926,29   & 23283109,95   & 15729234,82   \\
11  & 5600 & 16,49    & 33708186,79 & 10075830,19  & 23632356,60   & 15351128,22   \\
....& ... & ... & ... & ... & ... & ... \\
40  & 5600 & 25,40    & 51909950,78 & 15516582,14  & 36393368,64   & 7580339,99    \\
41  & 5600 & 25,78    & 52688600,04 & 15749330,87  & 36939269,17   & 7398120,28    \\
42  & 5600 & 26,16    & 53478929,04 & 15985570,84  & 37493358,21   & 7220280,85    \\
43  & 5600 & 26,56    & 54281112,98 & 16225354,40  & 38055758,58   & 7046716,40    \\
44  & 5600 & 26,95    & 55095329,68 & 16468734,72  & 38626594,96   & 6877324,18    \\
45  & 5600 & 27,36    & 55921759,62 & 16715765,74  & 39205993,88   & 6712003,89    \\
46  & 5600 & 27,77    & 56760586,01 & 16966502,22  & 39794083,79   & 6550657,64    \\
47  & 5600 & 28,19    & 57611994,80 & 17220999,76  & 40390995,05   & 6393189,91    \\
48  & 5600 & 28,61    & 58476174,73 & 17479314,75  & 40996859,97   & 6239507,46    \\
49  & 5600 & 29,04    & 59353317,35 & 17741504,47  & 41611812,87   & 6089519,30    \\
50  & 5600 & 29,47    & 60243617,11 & 18007627,04  & 42235990,07   & 5943136,62    \\
    &      &          &             &              & \textbf{VAL (50 anos)} & \textbf{-117051615,17} \\ \hline
\end{tabular}
\end{threeparttable}

\begin{center}
\begin{equation}
\label{CalcVAL}
VAL = \sum_{i=0}^{n} \frac{E_{li}}{(1+t)^i}
\end{equation}
\end{center}


\begin{center}
\begin{equation}
\label{CalcVAL}
V_{ch} = \sum_{i=1}^{n} \frac{V_{i} * a_{I_i}}{a_{T_i}}
\end{equation}
\end{center}

V_{ch}: valor a atribuir à célula hexagonal.

\begin{center}
\fontsize{10pt}{12pt}\selectfont
\begin{threeparttable}[h]
\centering
\caption{Constantes K e D por troços da estrada nacional EN2}
\label{k_d}

\begin{tabular}{|R{3cm}|R{3cm}|l|l|}
\hline
\rowcolor[HTML]{C0C0C0} 
Ocupação   & Relevo     & \multicolumn{1}{c|}{\cellcolor[HTML]{C0C0C0}K} & \multicolumn{1}{c|}{\cellcolor[HTML]{C0C0C0}D} \\ \hline
periurbano & misto      & 0,2                                            & 0,72                                           \\
periurbano & montanhoso & 0,2                                            & 0,72                                           \\
periurbano & plano      & 0,2                                            & 0,72                                           \\
rural      & misto      & 0,14                                           & 0,6                                            \\
rural      & montanhoso & 0,14                                           & 0,6                                            \\
rural      & plano      & 0,1                                            & 0,57                                           \\
urbano     & misto      & 0,14                                           & 0,6                                            \\
urbano     & plano      & 0,1                                            & 0,57                                           \\ \hline
\end{tabular}

\end{threeparttable}

\end{center}


