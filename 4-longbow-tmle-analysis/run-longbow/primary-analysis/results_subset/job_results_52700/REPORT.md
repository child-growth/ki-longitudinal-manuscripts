---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: []
      A: ['parity_cat']
      Y: ['haz']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** predfeed6

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        predfeed6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                68     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               126     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 5      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                52      57
Birth       ki0047075b-MAL-ED          INDIA                          1                 4      37
Birth       ki0047075b-MAL-ED          INDIA                          0                33      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                20      23
Birth       ki0047075b-MAL-ED          PERU                           1                72     208
Birth       ki0047075b-MAL-ED          PERU                           0               136     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                89      90
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               105     105
Birth       ki1000109-EE               PAKISTAN                       1                24      28
Birth       ki1000109-EE               PAKISTAN                       0                 4      28
Birth       ki1113344-GMS-Nepal        NEPAL                          1               390     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0               132     522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10161   13000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2839   13000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1802    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               422    2224
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                84     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               147     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               179     209
6 months    ki0047075b-MAL-ED          INDIA                          1                11     218
6 months    ki0047075b-MAL-ED          INDIA                          0               207     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                12     225
6 months    ki0047075b-MAL-ED          NEPAL                          0               213     225
6 months    ki0047075b-MAL-ED          PERU                           1                92     271
6 months    ki0047075b-MAL-ED          PERU                           0               179     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               230     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232
6 months    ki1000109-EE               PAKISTAN                       1                43      48
6 months    ki1000109-EE               PAKISTAN                       0                 5      48
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7605    9858
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2253    9858
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3327    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               948    4275
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                76     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               129     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               144     169
24 months   ki0047075b-MAL-ED          INDIA                          1                11     209
24 months   ki0047075b-MAL-ED          INDIA                          0               198     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                12     219
24 months   ki0047075b-MAL-ED          NEPAL                          0               207     219
24 months   ki0047075b-MAL-ED          PERU                           1                68     201
24 months   ki0047075b-MAL-ED          PERU                           0               133     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               213     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202
24 months   ki1000109-EE               PAKISTAN                       1                20      23
24 months   ki1000109-EE               PAKISTAN                       0                 3      23
24 months   ki1113344-GMS-Nepal        NEPAL                          1               355     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     469
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3881    5028
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1147    5028
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3278    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               906    4184


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7fb2bbaa-610b-41e9-9550-916f5ca87958/9878c40c-8c6b-4852-863f-8633ee2f652a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.7736942   -0.9939842   -0.5534042
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2099528   -0.1647984    0.5847039
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.0283183   -0.2368247    0.1801881
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.0885726   -1.2330151   -0.9441302
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.7427275   -0.7758108   -0.7096441
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.6763832   -0.7313531   -0.6214134
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.1623693   -0.3568958    0.0321573
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           1.4403728    0.9900320    1.8907136
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0999248   -0.5628887    0.3630391
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.0551845   -0.1989874    0.0886185
6 months    ki0047075b-MAL-ED     PERU         optimal              observed           1.1867010    0.9856755    1.3877266
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.8344596   -1.0156870   -0.6532322
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.6359183   -0.7472585   -0.5245782
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.2505450    0.0251466    0.4759433
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.5795686   -0.6188268   -0.5403105
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.3466060   -0.3917212   -0.3014908
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.7481697   -0.9118543   -0.5844850
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.1112795   -0.2924539    0.5150129
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.6911002   -1.2134164   -0.1687840
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.5483708   -1.0824761   -0.0142655
24 months   ki0047075b-MAL-ED     PERU         optimal              observed           0.0191447   -0.1519759    0.1902653
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.9590999   -1.0852199   -0.8329798
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -0.1284133   -0.3430856    0.0862589
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.2886184   -1.3467413   -1.2304955
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.2006302   -1.2668774   -1.1343829


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.9748454   -1.1280978   -0.8215930
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed           0.4643860    0.1360519    0.7927200
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.0587981   -0.1871869    0.0695908
Birth       ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.1064559   -1.2034951   -1.0094168
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.7557115   -0.7768180   -0.7346051
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.6904586   -0.7435822   -0.6373351
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.1220707   -0.2547831    0.0106417
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -0.7073471   -0.8375598   -0.5771344
6 months    ki0047075b-MAL-ED     NEPAL        observed             observed           0.1097852   -0.0259319    0.2455023
6 months    ki0047075b-MAL-ED     PERU         observed             observed           1.0546617    0.9322137    1.1771098
6 months    ki1000109-EE          PAKISTAN     observed             observed          -0.6106944   -0.9239621   -0.2974268
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -0.6009171   -0.6886356   -0.5131986
6 months    ki1148112-LCNI-5      MALAWI       observed             observed           0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.5998808   -0.6237974   -0.5759642
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.3968456   -0.4358721   -0.3578192
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.8179024   -0.9399789   -0.6958260
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -0.9449522   -1.0648865   -0.8250178
24 months   ki0047075b-MAL-ED     NEPAL        observed             observed          -0.3690411   -0.4853679   -0.2527143
24 months   ki0047075b-MAL-ED     PERU         observed             observed           0.1204478    0.0005049    0.2403906
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.1423525   -1.2336321   -1.0510729
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3113405   -1.3420927   -1.2805883
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.2265320   -1.2620508   -1.1910132


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.2011512   -0.3880743   -0.0142281
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2544332   -0.0008818    0.5097481
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.0304798   -0.2041397    0.1431802
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0178833   -0.1219717    0.0862051
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0129841   -0.0390837    0.0131156
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0140754   -0.0417908    0.0136400
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.0402986   -0.0827549    0.1633520
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.4686503   -0.8820671   -0.0552335
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.6074223   -1.0666820   -0.1481626
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed           0.1649696    0.0689272    0.2610121
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -0.1320393   -0.2999708    0.0358922
6 months    ki1000109-EE          PAKISTAN     optimal              observed           0.2237652   -0.1116141    0.5591445
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed           0.0350012   -0.0392844    0.1092869
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.1419550   -0.0389493    0.3228594
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0203122   -0.0520779    0.0114535
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0502396   -0.0719321   -0.0285472
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0697328   -0.1629920    0.0235265
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.3479512   -0.0418373    0.7377398
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.2538520   -0.7685572    0.2608532
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed           0.1793297   -0.3359005    0.6945599
24 months   ki0047075b-MAL-ED     PERU         optimal              observed           0.1013031   -0.0228321    0.2254382
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.1832527   -0.2776345   -0.0888708
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed           0.0513481   -0.1014311    0.2041274
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0227221   -0.0728545    0.0274102
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0259018   -0.0778004    0.0259967
