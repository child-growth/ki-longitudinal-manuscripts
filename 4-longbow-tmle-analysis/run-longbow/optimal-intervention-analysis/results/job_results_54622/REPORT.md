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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        pers_wast    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               220    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 9    229
Birth       ki0047075b-MAL-ED          BRAZIL                         0                65     65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0     65
Birth       ki0047075b-MAL-ED          INDIA                          0                43     45
Birth       ki0047075b-MAL-ED          INDIA                          1                 2     45
Birth       ki0047075b-MAL-ED          NEPAL                          0                26     27
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1     27
Birth       ki0047075b-MAL-ED          PERU                           0               233    233
Birth       ki0047075b-MAL-ED          PERU                           1                 0    233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               111    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               123    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                80     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                12     92
Birth       ki1000108-IRC              INDIA                          0               319    387
Birth       ki1000108-IRC              INDIA                          1                68    387
Birth       ki1000109-EE               PAKISTAN                       0               224    240
Birth       ki1000109-EE               PAKISTAN                       1                16    240
Birth       ki1000109-ResPak           PAKISTAN                       0                30     34
Birth       ki1000109-ResPak           PAKISTAN                       1                 4     34
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               516    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                23    539
Birth       ki1101329-Keneba           GAMBIA                         0              1374   1419
Birth       ki1101329-Keneba           GAMBIA                         1                45   1419
Birth       ki1113344-GMS-Nepal        NEPAL                          0               521    585
Birth       ki1113344-GMS-Nepal        NEPAL                          1                64    585
Birth       ki1114097-CMIN             BANGLADESH                     0                16     18
Birth       ki1114097-CMIN             BANGLADESH                     1                 2     18
Birth       ki1114097-CONTENT          PERU                           0                 2      2
Birth       ki1114097-CONTENT          PERU                           1                 0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               234    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 7    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               208    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1    209
6 months    ki0047075b-MAL-ED          INDIA                          0               218    236
6 months    ki0047075b-MAL-ED          INDIA                          1                18    236
6 months    ki0047075b-MAL-ED          NEPAL                          0               230    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 6    236
6 months    ki0047075b-MAL-ED          PERU                           0               273    273
6 months    ki0047075b-MAL-ED          PERU                           1                 0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               252    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               247    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               313    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                52    365
6 months    ki1000108-IRC              INDIA                          0               337    406
6 months    ki1000108-IRC              INDIA                          1                69    406
6 months    ki1000109-EE               PAKISTAN                       0               347    373
6 months    ki1000109-EE               PAKISTAN                       1                26    373
6 months    ki1000109-ResPak           PAKISTAN                       0               202    227
6 months    ki1000109-ResPak           PAKISTAN                       1                25    227
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               590    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                14    604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1968   2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                51   2019
6 months    ki1101329-Keneba           GAMBIA                         0              1836   1897
6 months    ki1101329-Keneba           GAMBIA                         1                61   1897
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               267    276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 9    276
6 months    ki1113344-GMS-Nepal        NEPAL                          0               499    559
6 months    ki1113344-GMS-Nepal        NEPAL                          1                60    559
6 months    ki1114097-CMIN             BANGLADESH                     0               232    243
6 months    ki1114097-CMIN             BANGLADESH                     1                11    243
6 months    ki1114097-CONTENT          PERU                           0               215    215
6 months    ki1114097-CONTENT          PERU                           1                 0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               206    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               168    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    169
24 months   ki0047075b-MAL-ED          INDIA                          0               209    227
24 months   ki0047075b-MAL-ED          INDIA                          1                18    227
24 months   ki0047075b-MAL-ED          NEPAL                          0               222    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 6    228
24 months   ki0047075b-MAL-ED          PERU                           0               201    201
24 months   ki0047075b-MAL-ED          PERU                           1                 0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               236    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               214    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               311    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                55    366
24 months   ki1000108-IRC              INDIA                          0               339    408
24 months   ki1000108-IRC              INDIA                          1                69    408
24 months   ki1000109-EE               PAKISTAN                       0               156    167
24 months   ki1000109-EE               PAKISTAN                       1                11    167
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               565    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                13    578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      6
24 months   ki1101329-Keneba           GAMBIA                         0              1395   1442
24 months   ki1101329-Keneba           GAMBIA                         1                47   1442
24 months   ki1113344-GMS-Nepal        NEPAL                          0               430    479
24 months   ki1113344-GMS-Nepal        NEPAL                          1                49    479
24 months   ki1114097-CMIN             BANGLADESH                     0               233    242
24 months   ki1114097-CMIN             BANGLADESH                     1                 9    242
24 months   ki1114097-CONTENT          PERU                           0               164    164
24 months   ki1114097-CONTENT          PERU                           1                 0    164


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/eaa439af-217c-444b-899f-a5a6e9c74b00/835dad37-e767-4eb1-8940-8cde028eb6b6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7400380   -1.7775705    0.2974945
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8707672   -1.0849492   -0.6565852
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.1827287   -0.2223782    0.5878357
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -1.4750207   -2.2961178   -0.6539235
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8764404   -0.9539379   -0.7989428
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0770797   -0.4278449    0.2736855
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.9832126   -1.1724202   -0.7940049
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3894144   -2.9969955    0.2181666
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2154306   -1.5175948   -0.9132665
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5471190   -0.6605370   -0.4337010
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.6503149   -1.9348116   -1.3658182
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7376342   -1.0719700   -0.4032985
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.0436239   -2.1664171   -1.9208306
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.7642949   -1.4096451   -0.1189448
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0714431   -1.1459866   -0.9968996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6069303   -0.7127464   -0.5011142
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8991140   -0.9484647   -0.8497632
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5410673   -1.6563302   -1.4258045
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.3215982   -1.4034651   -1.2397313
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.7622641   -1.9022494   -1.6222787
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2820518   -1.7934924   -0.7706112
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.6112048   -2.0898770   -1.1325327
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.5045958   -1.6540404   -1.3551512
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4957165   -2.6008089   -2.3906242
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6941034   -1.9025461   -1.4856607
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.6206756   -2.7700658   -2.4712854
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6050505   -1.6730294   -1.5370715
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5607556   -1.6159440   -1.5055672
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.9133865   -2.0825543   -1.7442187
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.5009644   -2.6288224   -2.3731064


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1041048   -1.2383048   -0.9699048
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3117313   -0.4727359   -0.1507267
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -1.8608750   -2.0482045   -1.6735455
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0432135   -0.0229516    0.1093787
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0554530   -1.1411259   -0.9697801
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2115254   -1.3298727   -1.0931782
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4241872   -1.5668135   -1.2815609
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2382964   -1.3698449   -1.1067479
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.0835567   -2.2027557   -1.9643578
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.3874523   -1.5959323   -1.1789723
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5450830   -0.5941754   -0.4959906
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9282048   -0.9770928   -0.8793169
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5734843   -1.6884116   -1.4585570
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3533244   -1.4319426   -1.2747062
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5489071   -2.6476125   -2.4502017
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7989338   -1.8927769   -1.7050907
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5924094   -1.6461889   -1.5386298
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8938622   -1.9795205   -1.8082040
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3640668   -1.3746114    0.6464778
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0904285   -0.2072840    0.0264270
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.4944600   -0.8479408   -0.1409792
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.3858543   -1.1809258    0.4092171
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0086617   -0.0220080    0.0046847
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.1202932   -0.2254570    0.4660435
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0722404   -0.2399007    0.0954199
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1844213   -1.3883935    1.7572362
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0039052   -0.2854473    0.2932578
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0144629   -0.0371128    0.0081870
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2261277   -0.0422963    0.4945516
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5006622   -0.8015238   -0.1998006
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0399329   -0.0793869   -0.0004789
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.6231573   -1.2377269   -0.0085878
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0202484   -0.0378356   -0.0026611
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0618473   -0.0324208    0.1561154
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0290909   -0.0436202   -0.0145615
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0324170   -0.0607279   -0.0041060
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0317262   -0.0620339   -0.0014185
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0221735   -0.0619391    0.0175921
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6963445   -1.2107825   -0.1819064
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2749846   -0.7400058    0.1900366
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1970080    0.1124455    0.2815706
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0531906   -0.0982231   -0.0081580
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1048304   -0.2991242    0.0894633
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.0493144   -0.0911699   -0.0074590
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0026283   -0.0667899    0.0720466
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0316538   -0.0502960   -0.0130116
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0195243   -0.1263080    0.1653565
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0099860   -0.0335298    0.0135577
