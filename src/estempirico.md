

# Análise empírica

\label{chap:eemp}

> Nota: As figuras e tabelas neste capítulo provém de elaboração própria, sobre dados obtidos das fontes indicadas em cada caso.

## Introdução 

A análise empírica baseia-se na aplicação a um caso de estudo centrado na autoestrada A24 - Autoestrada do Interior Norte que liga Viseu à fronteira com Espanha, junto a Chaves, ver figura \ref{loc}. Esta figura o contorno de Portugal Continental provém da Carta Administrativa de Portugal (CAOP) 2016 da Direção Geral do Território.

![Localização do caso de estudo - Autoestrada A24\label{loc}](../src/images/aoi.png){ width=200px height=300px }

Centrar-nos-emos nos troços que fazem a ligação entre os limites da cidade de Vila Real e Chaves. Como trajeto alternativo será considerada a Estrada Nacional Nº2 entre os limites de Vila Real e o centro de Chaves.

A experimentação efetuada tem como objetivo mostrar que a cobrança de portagem na autoestrada provoca uma diminuição na respetiva procura que, necessariamente, se reflete numa transferência de viagens entre autoestrada e estrada alternativa. 

Se esta estrada alternativa tiver troços cuja situação habitual é de congestionamento, ou próxima disso, por a procura que nela incide estar junto, ou já ter ultrapassado, os limites físicos de capacidade de acomodação do tráfego nesta via, a referida transferência de viagens irá agravar a situação pré-existente, criando ou aumentando congestionamento.

Coerentemente com a contextualização teórica que foi produzida nos capítulos anteriores, esta análise de congestionamento será baseada no cálculo e na comparação de custos monetários e comparar-se-á carga, ou procura, com capacidade disponível da estrada existente. 

Para este efeito precisamos de:

- caracterizar o traçado geométrico das vias
- caracterizar o relevo atravessado e as limitações à circulação que daí podem advir (inclinações acentuadas, quantidade de curvas, curvas muito acentuadas)
- caracterizar o tipo de ocupação humana das áreas atravessadas pela via e as implicações da mesma na circulação (exemplos: elevada procura, obstruções à livre circulação, passadeiras, semáforos, medidas de acalmia de tráfego, etc.
- caracterizar o volume de tráfego existente
- caracterizar a capacidade máxima de tráfego, para cumprir um determinado nível de serviço
- atribuir a troços geométricos estas características
 
 
![Contexto geográfico\label{imgref}](../src/images/mapa1.png)

Na \autoref{imgref}, criada com dados abertos dos serviços OpenStreetMap (OSM) e Shuttle Radar Topography Mission (SRTM) [^fnJAG], vemos o contexto geográfico da área do caso de estudo. A hierarquia viária está caracterizada por um código de cores. Identificados com estilos diferentes do restante da rede viária, estão identificadas as vias em análise:

- a estrada nacional EN2 a azul (59,06 km de extensão)
- a autoestrada A24 a carmim (59,09 km de extensão)

[^fnJAG]: SRTM em projeção PT-TM06 publicada pelo Prof. José Alberto Gonçalves ac. Ciências UP e disponível [neste endereço eletrónico](http://www.fc.up.pt/pessoas/jagoncal/srtm/)

![Contexto geográfico: densidade populacional\label{popdens}](../src/images/mapa2.png)

## Um primeiro cálculo de custo de oportunidade

A partir destes dados de comprimento, podemos fazer um primeiro exercício quantitativo simples. Poderemos tentar calcular de forma muito sumária, um custo de oportunidade usando:

- os comprimentos atrás indicados;
- velocidades médias genéricas para a totalidade da estrada nacional (50 km/h) e da autoestrada (120 km/h);
- o salário médio dos trabalhadores por conta de outrem (€ 1096.7) [@pordata:salmed].

Calculemos então:

\begin{center}
\begin{equation}
\label{CustOp}
\begin{aligned}
t_{EN} =  60 * \left(\frac{59.062}{50}\right) \approx 71 min. \\ \\
t_{AE} =  60 * \left(\frac{59.095}{120}\right) \approx 33 min. \\ \\
t_{diff} = 71 - 33 = 38 min. \\ \\
custo_{hora} = 1096.7 / \frac{20}{8} = \text{\euro} 6.85 \\ \\
custo_{oport} = 6.85 * \frac{38}{60} = \text{\euro} 4.338 \\ \\
\end{aligned}
\end{equation}
\end{center}

Na equação \ref{CustOp} obtemos um custo de oportunidade de € 4.338 muito próximo do valor da taxa de portagem cobrada (€ 4.5). Estes valores estão abaixo do valor calculado com base na taxa de referência atualizada (€ 0,098 / km) que seria de € 5,79. 

Este facto faz suspeitar que, efetivamente, as taxas cujo algoritmo de cálculo acaba por nunca ser publicado, possam ser definidas com base em custos de oportunidade.

## Enquadramento geográfico: densidade de ocupação

Para termos noção da população vizinha destas vias e da sua distribuição espacial, vemos na \autoref{imgref} o contexto geográfico agora contendo uma grelha hexagonal de densidade populacional. A dimensão de cada célula é definida de forma a ter aproximadamente a área duma subsecção estatística. Esta elaboração própria foi produzida com base na informação geográfica (BGRI) dos Censos 2011 do Instituto Nacional de Estatística (INE).


## Execução da análise

O ano de referência para a análise e os preços usados é 2015.

A análise a efectuar seguirá os seguintes passos:

1. atribuir volumes de tráfego aos troços de autoestrada e de estrada nacional;
2. calcular uma capacidade máxima para os troços de estrada nacional;
3. estimar o tráfego na autoestrada sem portagem, projectando os valores de 2009 para o ano de referência;
4. calcular a diferença entre o tráfego sem portagem e o tráfego verificado na autoestrada;
5. alocar esta diferença do ponto 4. aos troços da estrada nacional, subtraindo-ao ao tráfego verificado em 2015, simulando uma transferência de viagens da estrada nacional para a autoestrada, como se não existisse de portagem;
6. calcular custos de congestionamento "existentes", comparando o tráfego verificado em 2015 com a capacidade de cada troço de estrada nacional.
6. calcular custos de congestionamento "projetados", calculando a diferença entre o valor do tráfego calculado no ponto 5. e a capacidade de cada troço de estrada nacional.
7. comparar a diferença entre custo de congestionamento diário total "projetado" e "existente", da estrada nacional, com o valor diário de cobrança de portagem na autoestrada.


![Metodologia\label{metodolog}](../src/images/metodologia_geral.png)


### Definição de traçados e atribuição dos valores de volume de tráfego

Manipulando a informação de base de geográfica em software adequado de Sistema de Informação Geográfica (SIG) e de base de dados geográfica relacional (BDGR), executou-se o carregamento dos dados de volume de tráfego disponíveis. Antes, as vias, autoestrada e estrada alternativas, foram geometricamente seccionadas de acordo com os troços para os quais estão disponíveis os dados de tráfego e, no caso da autoestrada, os dados de taxa de portagem.

Os dados de volume de tráfego são habitualmente expressos em tráfego médio diário anual (TMDA) [^fnTMDA]. Para as autoestradas,  existem valores publicados desde há vários anos. Para a estrada nacional foram fornecidos, a pedido, pela empresa Infraestruturas de Portugal, I.P. para troços e janela temporal bem definidos. Foi possível obter para os troços em causa os anos de 2013 a 2015 com algumas descontinuidades, com ausência de dados de 2013 para os troços de Benagouro-Flores, PAguiar-Benagouro e VPAguiar-PedrasSalgadas.

Por lapso, não foi obtido o ano de 2009 para a estrada nacional. Este foi o último ano de funcionamento do acesso livre nas ex-SCUT. 

[^fnTMDA]: valor do tráfego diário em número de veículos, sob a forma de média anual.

\begin{center}
\fontsize{10pt}{12pt}\selectfont
\begin{threeparttable}[h]
\centering
\caption{Volumes de tráfego TMDA nas vias analisadas, anos de 2009 e 2013 a 2015}
\label{voltrad}

\begin{tabular}{|lllll|llll|}
\hline
\rowcolor[HTML]{C0C0C0} 
Estrada & Troço                 & Ano  & TMDA &  & Estrada & Troço                   & Ano  & TMDA \\ \hline
A24     & Chaves-EN103          & 2009 & 5098 &  & A24     & VPAguiar-A7             & 2014 & 3594 \\ \hline
A24     & Chaves-EN103          & 2013 & 3552 &  & A24     & VPAguiar-A7             & 2015 & 3821 \\ \hline
A24     & Chaves-EN103          & 2014 & 3594 &  & A24     & VPAguiar-Fortunho       & 2009 & 4767 \\ \hline
A24     & Chaves-EN103          & 2015 & 3665 &  & A24     & VPAguiar-Fortunho       & 2013 & 3132 \\ \hline
A24     & EN103-Vidago          & 2009 & 5517 &  & A24     & VPAguiar-Fortunho       & 2014 & 3176 \\ \hline
A24     & EN103-Vidago          & 2013 & 3966 &  & A24     & VPAguiar-Fortunho       & 2015 & 3393 \\ \hline
A24     & EN103-Vidago          & 2014 & 4071 &  & EN2     & Benagouro-Flores        & 2014 & 8247 \\ \hline
A24     & EN103-Vidago          & 2015 & 4233 &  & EN2     & Benagouro-Flores        & 2015 & 5854 \\ \hline
A24     & Fortunho-VilaRealIP4  & 2009 & 5509 &  & EN2     & Chaves-VidagoA24        & 2013 & 3087 \\ \hline
A24     & Fortunho-VilaRealIP4  & 2013 & 4870 &  & EN2     & Chaves-VidagoA24        & 2014 & 3150 \\ \hline
A24     & Fortunho-VilaRealIP4  & 2014 & 5000 &  & EN2     & Chaves-VidagoA24        & 2015 & 3193 \\ \hline
A24     & Fortunho-VilaRealIP4  & 2015 & 5312 &  & EN2     & Vidago-PedrasSalgadasN  & 2013 & 2692 \\ \hline
A24     & PedrasSalgadas-A7     & 2009 & 5837 &  & EN2     & Vidago-PedrasSalgadasN  & 2014 & 2732 \\ \hline
A24     & PedrasSalgadas-A7     & 2013 & 4529 &  & EN2     & Vidago-PedrasSalgadasN  & 2015 & 3409 \\ \hline
A24     & PedrasSalgadas-A7     & 2014 & 4688 &  & EN2     & Vidago-VidagoA24        & 2013 & 4300 \\ \hline
A24     & PedrasSalgadas-A7     & 2015 & 4923 &  & EN2     & Vidago-VidagoA24        & 2014 & 4364 \\ \hline
A24     & Vidago-PedrasSalgadas & 2009 & 5861 &  & EN2     & Vidago-VidagoA24        & 2015 & 4079 \\ \hline
A24     & Vidago-PedrasSalgadas & 2013 & 4454 &  & EN2     & VPAguiar-Benagouro      & 2014 & 8284 \\ \hline
A24     & Vidago-PedrasSalgadas & 2014 & 4575 &  & EN2     & VPAguiar-Benagouro      & 2015 & 6907 \\ \hline
A24     & Vidago-PedrasSalgadas & 2015 & 4771 &  & EN2     & VPAguiar-PedrasSalgadas & 2014 & 4226 \\ \hline
A24     & VPAguiar-A7           & 2009 & 4088 &  & EN2     & VPAguiar-PedrasSalgadas & 2015 & 4108 \\ \hline
A24     & VPAguiar-A7           & 2013 & 3556 &  &         &                         &      &      \\ \hline
\end{tabular}

\begin{tablenotes}\footnotesize
    \item Fontes: Infraestruturas de Portugal (IP) e Instituto da Mobilidade e Transportes (IMT)
 \end{tablenotes}
 
\end{threeparttable}

\end{center}

Os dados disponibilizados pela IP incluíram também a percentagem de veículos pesados, em valores que não ultrapassam os 12%.

### Cálculo de capacidade máxima 

Este cálculo de capacidade máxima dos troços de estrada nacional baseia-se nas indicações metodológicas de @HCM_SpRep209.

Importa começar por recolher duas características importantes: relevo e densidade de ocupação urbana.


### Alocação de densidades de ocupação e de tipo de relevo

Vamos agora proceder à atribuição de qualificações aos troços de estrada nacional que nos vão permitir calcular a respectiva capacidade máxima de tráfego.

Para proceder a alocação de densidade de ocupação (urbano, periurbano, rural), os troços de via foram geometricamente intersectados com os polígonos da malha hexagonal usada para espacializar os dados demográficos de forma espacialmente homogénea.

![Interseção da rede viária com a malha hexagonal\label{intersect}](../src/images/intersect.png){ width=200px height=200px }

Da informação demográfica alocada a cada hexágono podemos atribuir uma qualificação de densidade de ocupação. Com esta operação de interseção, essa informação pode ser atribuída a cada pequeno troço resultante.

Estes pequenos troços serviram depois de base para a atribuição manual de características de relevo da seguinte forma: no software de SIG usado, os troços foram manualmente seleccionados e, cada conjunto foi atribuído um qualificativo de "montanhoso", "misto" ou "plano". O resultado é mostrado na /ref{ocup_relevo}.

\begin{center}
\fontsize{10pt}{12pt}\selectfont
\begin{threeparttable}[h]
\centering
\caption{Ocupação e relevo nos troços da estrada nacional EN2}
\label{ocup_relevo}

\begin{tabular}{| R{3.5cm} | R{3.5cm} | l | l | }
\hline
\rowcolor[HTML]{C0C0C0} 
Ocupação   & Relevo     & \begin{tabular}[c]{@{}l@{}}Vel. ideal \\ km/h\end{tabular} & \begin{tabular}[c]{@{}l@{}}Vel. “free flow” \\ km/h\end{tabular} \\ \hline
periurbano & misto      & 60                                                         & 53                                                               \\
periurbano & montanhoso & 45                                                         & 38                                                               \\
periurbano & plano      & 70                                                         & 63                                                               \\
rural      & misto      & 70                                                         & 63                                                               \\
rural      & montanhoso & 45                                                         & 38                                                               \\
rural      & plano      & 90                                                         & 83                                                               \\
urbano     & misto      & 45                                                         & 38                                                               \\
urbano     & plano      & 50                                                         & 43                                                               \\ \hline
\end{tabular}

\end{threeparttable}

\end{center}

A estas combinações de relevo e tipo de ocupação foi feita uma atribuição empírica de uma velocidade ideal. A velocidade "free flow" foi calculada de acordo com @HCM_SpRep209. Seguindo as tabelas 7-2 a 7-5 deste relatório técnico, foram calculadas várias reduções a aplicar, primeiro em milhas por hora (mph), depois devidamente convertidas para km/h. A redução geral aplicada foi assim de 7,24 km/h a todas as velocidades ideais.

As reduções específicas em mph (total: 4,5 mph):

- inexistência de separador central: 1,6	
- dimensões de berma: 0,4	
- dez cruzamentos e pontos de acesso por milha:	2,5	

A partir dos valores da tabela \ref{ocup_relevo} podemos calcular a capacidade de tráfego para cada classe de troço. Primeiro iremos calcular o volume de tráfego de ponta horário diário VHPd . Deste iremos obter depois valores de TMDA comparáveis com os dados de entrada disponíveis.

### Cálculo de capacidade

Vamos calcular valores de capacidade de tráfego para cada tipo de troço de estrada nacional com base nos cálculos indicados nas secções anteriores seguindo as indicações de @HCM_SpRep209.

O primeiro passo é calcular valores de volume de tráfego de ponta horário diário VHPd para a ausência de tráfego de veículos pesados.

Para isso, fazemos um cálculo sobre o gráfico \ref{speed_flow} [@HCM_SpRep209]. Para um dado valor de velocidade "free flow" encontramos a abcissa correspondente no gráfico (valores em milhas por hora, mph). Em seguida seguimos no gráfico a linha horizontal correspondente ao valor seleccionado até encontrar a linha oblíqua correspondente ao nível de serviço pretendido (Level of service - LOS).

![Velocidade vs. fluxos de tráfego\label{speed_flow}](../src/images/speed_flow.png)

No caso português o Plano Rodoviário Nacional prevê que as estradas nacionais tenham um nível de serviço C (LOS C).

Encontrado este ponto o fluxo pretendido é o valor das abcissas correspondente.

Este valor obtido é em VHPd e tem de ser convertido em TMDA. Para isso usamos a expressão

\begin{center}
\begin{equation}
\label{CalcTMDA}
V_{TMDA} =  V_{VHPd} * K * D
\end{equation}
\end{center}

Os valores de K e D usados estão na tabela \ref{k_d} e baseiam-se em @corrtraf.

\begin{center}
\fontsize{10pt}{12pt}\selectfont
\begin{threeparttable}[h]
\centering
\caption{Constantes K e D por troços da estrada nacional EN2}
\label{k_d}

\begin{tabular}{|l|l|l|l|}
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

Calculados todos os valores necessários para a ausência de tráfego de veículos pesados, falta calcular os valores correspondentes para diferentes percentagens de tráfego de pesados.

As fórmulas de @HCM_SpRep209 para esse efeito são especialmente difíceis de aplicar por exigirem o conhecimento de características adicionais sobre o tráfego de pesados. Assim foi feita uma adaptação por comparação com valores de exemplo dados em @HCM_SpRep209.

O resultado final está mostrado na tabela \ref{capacidade}.

\begin{center}
\fontsize{10pt}{12pt}\selectfont
\begin{threeparttable}[h]
\centering
\caption{Capacidades de tráfego em troços da estrada nacional EN2}
\label{capacidade}

\begin{tabular}{|ll|l|l|l|l|l|}
\hline
                                                       &            & \multicolumn{5}{c|}{\cellcolor[HTML]{C0C0C0}Capacidade TMDA}                                                                                                                                                                                                                                                                                                                                                                                                                                                                   \\ \hline
\rowcolor[HTML]{C0C0C0} 
\multicolumn{1}{|l|}{\cellcolor[HTML]{C0C0C0}Ocupação} & Relevo     & \multicolumn{1}{c|}{\cellcolor[HTML]{C0C0C0}\begin{tabular}[c]{@{}c@{}}ausência\\ pesados\end{tabular}} & \multicolumn{1}{c|}{\cellcolor[HTML]{C0C0C0}\begin{tabular}[c]{@{}c@{}}5\%\\ pesados\end{tabular}} & \multicolumn{1}{c|}{\cellcolor[HTML]{C0C0C0}\begin{tabular}[c]{@{}c@{}}10\%\\ pesados\end{tabular}} & \multicolumn{1}{c|}{\cellcolor[HTML]{C0C0C0}\begin{tabular}[c]{@{}c@{}}15\%\\ pesados\end{tabular}} & \multicolumn{1}{c|}{\cellcolor[HTML]{C0C0C0}\begin{tabular}[c]{@{}c@{}}20\%\\ pesados\end{tabular}} \\ \hline
\multicolumn{1}{|l|}{periurbano}                       & misto      & 10595                                                                                                   & 4944                                                                                               & 4326                                                                                                & 3708                                                                                                & 3090                                                                                                \\
\multicolumn{1}{|l|}{periurbano}                       & montanhoso & 5952                                                                                                    & 2778                                                                                               & 2431                                                                                                & 2083                                                                                                & 1736                                                                                                \\
\multicolumn{1}{|l|}{periurbano}                       & plano      & 12500                                                                                                   & 5833                                                                                               & 5104                                                                                                & 4375                                                                                                & 3646                                                                                                \\
\multicolumn{1}{|l|}{rural}                            & misto      & 7292                                                                                                    & 5833                                                                                               & 5104                                                                                                & 4375                                                                                                & 3646                                                                                                \\
\multicolumn{1}{|l|}{rural}                            & montanhoso & 3472                                                                                                    & 2778                                                                                               & 2431                                                                                                & 2083                                                                                                & 1736                                                                                                \\
\multicolumn{1}{|l|}{rural}                            & plano      & 9722                                                                                                    & 7778                                                                                               & 6806                                                                                                & 5833                                                                                                & 4861                                                                                                \\
\multicolumn{1}{|l|}{urbano}                           & misto      & 8772                                                                                                    & 2778                                                                                               & 2431                                                                                                & 2083                                                                                                & 1736                                                                                                \\
\multicolumn{1}{|l|}{urbano}                           & plano      & 12281                                                                                                   & 3889                                                                                               & 3403                                                                                                & 2917                                                                                                & 2431                                                                                                \\ \hline
\end{tabular}

\end{threeparttable}

\end{center}

### Cálculo dos custos de congestionamento existentes

\label{chap:bandas}

Para este efeito baseamo-nos em @ricardo.

Este relatório técnico define um conjunto de *bandas de congestionamento* definidas a partir do quociente tráfego / capacidade (v/h):

- fluxo livre: v/c até 0.75
- próximo do limite de capacidade: v/c acima de 0.75 e menor que 1.0
- capacidade excedida: v/c maior que 1.0

O mapa da figura \ref{bandas} mostra a expressão destas bandas nos troços da EN2. Podemos ver que existe uma extensão significativa para a qual o tráfego verificado excede a capacidade disponível.

![Bandas de congestionamento\label{bandas}](../src/images/mapa_bandas.png)

### Estimativa do volume de tráfego sem portagem

Para estimarmos quais seriam os valores de volume de tráfego na autoestrada em 2015 se não existissem portagens, aplicamos aos valores de 2009 (ano antes da aplicação de portagens na A24) o crescimento médio que o mesmo tráfego tem sentido entre 2013 e 2015 (tabela \ref{aumentos}).


\begin{center}
\fontsize{10pt}{12pt}\selectfont
\begin{threeparttable}[h]
\centering
\caption{Aumentos de tráfego 2013-2015 na A24}
\label{aumentos}

\begin{tabular}{| R{6cm} |c|}
\hline
\rowcolor[HTML]{C0C0C0} 
\multicolumn{1}{|c|}{\cellcolor[HTML]{C0C0C0}Troço A24} & \% aumento \\ \hline
Fortunho-VilaRealIP4                                & 4.45       \\
Chaves-EN103                                        & 1.58       \\
VPAguiar-Fortunho                                   & 4.12       \\
Vidago-PedrasSalgadas                               & 3.5        \\
PedrasSalgadas-A7                                   & 4.26       \\
EN103-Vidago                                        & 3.31       \\
VPAguiar-A7                                         & 3.69       \\ \hline
\end{tabular}

\end{threeparttable}

\end{center}

Aplicando estas taxas de crescimento obtemos um conjunto de valores de tráfego por troço da A24. A estes foram subtraídos os valores, assumidos como correntes, de 2015. De seguida, simularemos a transferência desta diferença para os troços da estrada nacional, como efeito da aplicação das portagens. Assim os valores na tabela \ref{transferenciav} simulam diminuições esperadas em cada troço de estrada nacional caso as portagens da autoestrada fossem removidas.

\begin{center}
\fontsize{10pt}{12pt}\selectfont
\begin{threeparttable}[h]
\centering
\caption{Simulação transferência de tráfego EN2 > A24}
\label{transferenciav}

\begin{tabular}{| R{6cm} |l|}
\hline
\rowcolor[HTML]{C0C0C0} 
Troço EN2               & \multicolumn{1}{c|}{\cellcolor[HTML]{C0C0C0}\begin{tabular}[c]{@{}c@{}}Transferência\\ TMDA\end{tabular}} \\
Chaves-VidagoA24        & 80                                                                                                        \\
Vidago-VidagoA24        & 182                                                                                                       \\
Benagouro-Flores        & 245                                                                                                       \\
Vidago-PedrasSalgadasN  & 205                                                                                                       \\
VPAguiar-PedrasSalgadas & 401                                                                                                       \\
VPAguiar-Benagouro      & 196                                                                                                       \\ \hline
\end{tabular}

\end{threeparttable}

\end{center}

### Cálculo de custos de congestionamento na estrada nacional

Para medir o impacto da introdução de portagens sobre os custos de congestionamento, teremos de medir, não só, os custos correspondentes à simulação de transferência de tráfego da estrada nacional para a autoestrada mas também os custos de congestionamento já existentes. O impacto da portagem corresponderá à diferença entre ambos os custos.

Assim, às bandas de congestionamento calculadas em \autoref{chap:bandas} foram aplicados os custos genéricos por unidade de volume de tráfego (em veículos * quilómetro), adaptados de @ricardo e ajustados a 2015, apresentados em \label{custos_vkm}.

\begin{center}
\fontsize{10pt}{12pt}\selectfont
\begin{threeparttable}[h]
\centering
\caption{Custos de congestionamento por unidade de volume de tráfego (vkm)}
\label{custos_vkm}

\begin{tabular}{|l|l|l|}
\hline
\rowcolor[HTML]{C0C0C0} 
Banda congestionamento      & \multicolumn{1}{c|}{\cellcolor[HTML]{C0C0C0}\begin{tabular}[c]{@{}c@{}}Custo ligeiros \\ €/vkm\end{tabular}} & \multicolumn{1}{c|}{\cellcolor[HTML]{C0C0C0}\begin{tabular}[c]{@{}c@{}}Custo pesados \\ €/vkm\end{tabular}} \\ \hline
fluxo livre          & 0.00428                                                                                                      & 0.00856                                                                                                     \\
no limite capacidade & 0.19581                                                                                                      & 0.37236                                                                                                     \\
excedida capacidade  & 0.649                                                                                                        & 1.23371                                                                                                     \\ \hline
\end{tabular}

\end{threeparttable}

\end{center}

Da aplicação destes custos aos volumes de tráfego obtidos por conversão dos fluxos de tráfego TMDA disponíveis, temos que existe um custo diário de cerca de €126700. Dividindo pelo número de veículos, teríamos uma "portagem" de €0.85 para ligeiros e de €1.61 para pesados, a aplicar na estrada nacional.

### Cálculo da diferença de custos de congestionamento

Aplicando os custos unitários de congestionamento de \label{custos_vkm} aos valores de tráfego de estrada nacional subtraídos dos valores da simulação de transferência indicados na tabela \label{transferencia}, obtêm-se um custo de congestionamento diário de cerca de €92700. 
A diferença é de €34000, é este o custo de congestionamento diário induzido na EN2 pela colocação de portagem na autoestrada próxima.

Falta apenas comparar este valor com a receita diária de portagem. Dos valores de tráfego registados a média TMDA da autoestrada A24 em 2015 era de cerca de 4390 veículos. Multiplicando este valor por € 4.5 de portagem temos uma receita diária de cerca de € 19755.

Assim temos que o custo de congestionamento diário calculado é quase o dobro da receita de portagem.


# Conclusão

Portugal é um país com um défice histórico de infraestruturas de transporte, tendo se tornado nas últimas duas décadas particularmente bem servido em rede de autoestradas. Apesar deste esforço positivo, continuam a existir desequilíbrios, havendo áreas do país que continuam a ser servidas deficientemente em infraestrutura rodoviária.

Uma das situações que se verifica é a existência de autoestrada disponível cujo acesso, na verdade, é efetivamente limitado pela cobrança de portagens. Em muitos casos, o valor de portagem cobrado não deverá permitir cobrir os custos da infraestrutura em tempo útil e, ao ser cobrado, o acesso à infraestrutura disponível é, em alguns casos, fortemente limitado.

A análise empírica fornece indícios de que, de facto e entre outros, os custos de congestionamento nas estradas alternativas às autoestradas portajadas podem ser significativos e a imposição de portagens nas autoestradas, além de limitarem o acesso a um bem público que está, na maioria dos casos, longe de ficar congestionado, pode provocar aumentos significativos do estado de congestionamento daquelas, o que representa uma perda de bem estar social.

Estes custos não entram em linha de consideração com outras possibilidades de custos adicionais decorrentes, por exemplo, da sinistralidade e do ambiente que poderiam tornar este resultado ainda mais expressivo.

Dos resultados da análise empírica, podemos fazer as seguintes sugestões, no caso da A24 e da estrada nacional EN2:

1. a portagem na autoestrada deveria ser abolida;
2. poderia ser considerado um sistema de cobrança de custos de congestionamento implementado sobre sistemas de cobrança eletrónica como os usados na autoestrada;
3. O pagamento dos custos do investimento inicial na construção da A24 devem ser arrecadados de outra forma a partir das taxas e impostos ligados ao tráfego automóvel.

Como foi referenciado, a forma como o custo de congestionamento foi aqui calculado é simplista e esta análise deveria ser reproduzida de forma mais sustentada, baseada em modelos de simulação de tráfego.
