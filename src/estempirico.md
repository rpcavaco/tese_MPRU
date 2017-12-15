

# Análise empírica

\label{chap:eemp}

## Introdução 

A análise empírica baseia-se na aplicação a um caso de estudo centrado na autoestrada A24 - Autoestrada do Interior Norte que liga Viseu à fronteira junto a Chaves.

Centrar-nos-emos nos troços que fazem a ligação entre os limites da cidade de Vila Real e Chaves. Como trajeto alternativo será considerada a Estrada Nacional Nº2 entre os limites de Vila Real e o centro de Chaves.

A experimentação a efetuada tem como objetivo mostrar que a cobrança de portagem na autoestrada provoca uma diminuição na respetiva procura que, necessáriamente, se reflete numa transferência de viagens entre autoestrada e estrada alternativa. 

Se esta estrada alternativa tiver troços cuja situação habitual é de congestão, ou próxima disso, por a procura que nela incide estar junto, ou já ter ultrapassado, os limites físicos de capacidade de acomodação do tráfego nesta via.

Coerentemente com a contextualização teórica que foi produzida nos capítylos anteriores, esta análise de congestão e capacidade será baseada no cálculo e na comparação de custos monetários.

![Localização do caso de estudo - Autoestrada A24](../src/images/aoi.png){ width=200px height=300px }

Para este efeito precisamos de:

- caraterizar o traçado geométrico
- caracterizar o volume de tráfego existente
- caracterizar a capacidade máxima de tráfego para cumprir um determinado nível de serviço
- atribuir a troços geométricos estas ca
 
 
![Contexto geográfico, fonte: elaboração própria a partir de OpenStreetMap (OSM)\label{imgref}](../src/images/mapa1.png)

Na \autoref{imgref}, vemos o contexto geográfico da área do caso de estudo. A hierarqui viária está caraterizada por um código de cores. Identificados com cores estilos diferentes do restante da rede viária, estão identificadas as vias em análise:

- a estrada nacional EN2 a azul (59,06 km de extensão)
- a autoestrada A24 a carmim (59,09 km de extensão)

![Contexto geográfico: densidade populacional\label{popdens}](../src/images/mapa2.png)

Para termos noção da população vizinha destas vias e da sua distribuição espacial, vemos na \autoref{imgref} o contexto geográfico agora contendo uma grelha hexagonal de densidade populacional. A dimensão de cada célula é definida de forma a ter aproximadamente a área duma subsecção estatística. Esta elaboração prória foi produzida com base na informação geográfica (BGRI) dos Censos 2011 do Instituto Nacional de Estatística (INE).


## Execução

### Definição de traçados e atribuição dos valores de volume de tráfego

Manipulando a informação de base de geográfica em software adequado de Sistema de Informação Geográfica (SIG) e de base de dados geográfica relacional (BDGR), executou-se o carregamento dos dados de volume de tráfego disponíveis. Antes, as vias, autoestrada e estrada alternativas foram geometricamente seccionadas de acordo com os troços para os quais estão disponíveis os dados de tráfego e, no csao da autoestrada, os dados de taxa de portagem.

Os dados de volume de tráfego, habitualmente expressos em tráfego médio diário anual (TMDA) [^fnTMDA]. Para a autoestrada existem públicados desde há vários anos. Para a estrada nacional foram fornecidos, a pedido, pela empresa Infraestruturas de Portugal, I.P. para troços e janela temporal bem definidos. Foi possível obter para os troços em causa os anos de 2013 a 2015 com algumas descontinuidades, com ausência de dados de 2013 para os troços de .... .

Por lapso, não foi obtido o ano de 2009 para a estrada nacional. Este foi o último ano de funcionamento do acesso livre nas ex-SCUT. 

[^fnTMDA]: valor do tráfego diário em número de veículos, sob a forma de média anual.


\begin{table}[]
\centering
\caption{My caption}
\label{my-label}
\begin{tabular}{|l|l|l|l|}
\hline
\rowcolor[HTML]{CBCEFB} 
\textbf{Estrada} & \textbf{Troço}          & \textbf{Ano} & \textbf{TMDA} \\ \hline
A24              & Chaves-EN103            & 2009         & 5098          \\ \hline
A24              & Chaves-EN103            & 2013         & 3552          \\ \hline
A24              & Chaves-EN103            & 2014         & 3594          \\ \hline
A24              & Chaves-EN103            & 2015         & 3665          \\ \hline
A24              & EN103-Vidago            & 2009         & 5517          \\ \hline
A24              & EN103-Vidago            & 2013         & 3966          \\ \hline
A24              & EN103-Vidago            & 2014         & 4071          \\ \hline
A24              & EN103-Vidago            & 2015         & 4233          \\ \hline
A24              & Fortunho-VilaRealIP4    & 2009         & 5509          \\ \hline
A24              & Fortunho-VilaRealIP4    & 2013         & 4870          \\ \hline
A24              & Fortunho-VilaRealIP4    & 2014         & 5000          \\ \hline
A24              & Fortunho-VilaRealIP4    & 2015         & 5312          \\ \hline
A24              & PedrasSalgadas-A7       & 2009         & 5837          \\ \hline
A24              & PedrasSalgadas-A7       & 2013         & 4529          \\ \hline
A24              & PedrasSalgadas-A7       & 2014         & 4688          \\ \hline
A24              & PedrasSalgadas-A7       & 2015         & 4923          \\ \hline
A24              & Vidago-PedrasSalgadas   & 2009         & 5861          \\ \hline
A24              & Vidago-PedrasSalgadas   & 2013         & 4454          \\ \hline
A24              & Vidago-PedrasSalgadas   & 2014         & 4575          \\ \hline
A24              & Vidago-PedrasSalgadas   & 2015         & 4771          \\ \hline
A24              & VPAguiar-A7             & 2009         & 4088          \\ \hline
A24              & VPAguiar-A7             & 2013         & 3556          \\ \hline
A24              & VPAguiar-A7             & 2014         & 3594          \\ \hline
A24              & VPAguiar-A7             & 2015         & 3821          \\ \hline
A24              & VPAguiar-Fortunho       & 2009         & 4767          \\ \hline
A24              & VPAguiar-Fortunho       & 2013         & 3132          \\ \hline
A24              & VPAguiar-Fortunho       & 2014         & 3176          \\ \hline
A24              & VPAguiar-Fortunho       & 2015         & 3393          \\ \hline
EN2              & Benagouro-Flores        & 2014         & 8247          \\ \hline
EN2              & Benagouro-Flores        & 2015         & 5854          \\ \hline
EN2              & Chaves-VidagoA24        & 2013         & 3087          \\ \hline
EN2              & Chaves-VidagoA24        & 2014         & 3150          \\ \hline
EN2              & Chaves-VidagoA24        & 2015         & 3193          \\ \hline
EN2              & Vidago-PedrasSalgadasN  & 2013         & 2692          \\ \hline
EN2              & Vidago-PedrasSalgadasN  & 2014         & 2732          \\ \hline
EN2              & Vidago-PedrasSalgadasN  & 2015         & 3409          \\ \hline
EN2              & Vidago-VidagoA24        & 2013         & 4300          \\ \hline
EN2              & Vidago-VidagoA24        & 2014         & 4364          \\ \hline
EN2              & Vidago-VidagoA24        & 2015         & 4079          \\ \hline
EN2              & VPAguiar-Benagouro      & 2014         & 8284          \\ \hline
EN2              & VPAguiar-Benagouro      & 2015         & 6907          \\ \hline
EN2              & VPAguiar-PedrasSalgadas & 2014         & 4226          \\ \hline
EN2              & VPAguiar-PedrasSalgadas & 2015         & 4108          \\ \hline
\end{tabular}
\end{table}







 


