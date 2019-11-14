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

**Intervention Variable:** anywast06

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

agecat      studyid                    country                        anywast06    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               177    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                52    229
Birth       ki0047075b-MAL-ED          BRAZIL                         0                62     65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 3     65
Birth       ki0047075b-MAL-ED          INDIA                          0                33     47
Birth       ki0047075b-MAL-ED          INDIA                          1                14     47
Birth       ki0047075b-MAL-ED          NEPAL                          0                23     27
Birth       ki0047075b-MAL-ED          NEPAL                          1                 4     27
Birth       ki0047075b-MAL-ED          PERU                           0               223    233
Birth       ki0047075b-MAL-ED          PERU                           1                10    233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               102    122
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                20    122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               119    124
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 5    124
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                37     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                55     92
Birth       ki1000108-IRC              INDIA                          0               164    388
Birth       ki1000108-IRC              INDIA                          1               224    388
Birth       ki1000109-EE               PAKISTAN                       0               156    240
Birth       ki1000109-EE               PAKISTAN                       1                84    240
Birth       ki1000109-ResPak           PAKISTAN                       0                28     42
Birth       ki1000109-ResPak           PAKISTAN                       1                14     42
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               396    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               143    539
Birth       ki1101329-Keneba           GAMBIA                         0               994   1542
Birth       ki1101329-Keneba           GAMBIA                         1               548   1542
Birth       ki1113344-GMS-Nepal        NEPAL                          0               422    684
Birth       ki1113344-GMS-Nepal        NEPAL                          1               262    684
Birth       ki1114097-CMIN             BANGLADESH                     0                15     20
Birth       ki1114097-CMIN             BANGLADESH                     1                 5     20
Birth       ki1114097-CONTENT          PERU                           0                 2      2
Birth       ki1114097-CONTENT          PERU                           1                 0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               183    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                58    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               194    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                15    209
6 months    ki0047075b-MAL-ED          INDIA                          0               159    236
6 months    ki0047075b-MAL-ED          INDIA                          1                77    236
6 months    ki0047075b-MAL-ED          NEPAL                          0               188    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                48    236
6 months    ki0047075b-MAL-ED          PERU                           0               263    273
6 months    ki0047075b-MAL-ED          PERU                           1                10    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               224    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                30    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               234    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               177    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               188    365
6 months    ki1000108-IRC              INDIA                          0               180    407
6 months    ki1000108-IRC              INDIA                          1               227    407
6 months    ki1000109-EE               PAKISTAN                       0               249    373
6 months    ki1000109-EE               PAKISTAN                       1               124    373
6 months    ki1000109-ResPak           PAKISTAN                       0               143    239
6 months    ki1000109-ResPak           PAKISTAN                       1                96    239
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               450    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               154    604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1728   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               301   2029
6 months    ki1101329-Keneba           GAMBIA                         0              1441   2056
6 months    ki1101329-Keneba           GAMBIA                         1               615   2056
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               270    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                10    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0               336    564
6 months    ki1113344-GMS-Nepal        NEPAL                          1               228    564
6 months    ki1114097-CMIN             BANGLADESH                     0               201    243
6 months    ki1114097-CMIN             BANGLADESH                     1                42    243
6 months    ki1114097-CONTENT          PERU                           0               211    215
6 months    ki1114097-CONTENT          PERU                           1                 4    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               162    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                50    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               156    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                13    169
24 months   ki0047075b-MAL-ED          INDIA                          0               151    227
24 months   ki0047075b-MAL-ED          INDIA                          1                76    227
24 months   ki0047075b-MAL-ED          NEPAL                          0               182    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                46    228
24 months   ki0047075b-MAL-ED          PERU                           0               193    201
24 months   ki0047075b-MAL-ED          PERU                           1                 8    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               213    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                25    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               202    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                12    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               176    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               190    366
24 months   ki1000108-IRC              INDIA                          0               181    409
24 months   ki1000108-IRC              INDIA                          1               228    409
24 months   ki1000109-EE               PAKISTAN                       0               109    167
24 months   ki1000109-EE               PAKISTAN                       1                58    167
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               432    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               146    578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      6
24 months   ki1101329-Keneba           GAMBIA                         0              1091   1563
24 months   ki1101329-Keneba           GAMBIA                         1               472   1563
24 months   ki1113344-GMS-Nepal        NEPAL                          0               300    488
24 months   ki1113344-GMS-Nepal        NEPAL                          1               188    488
24 months   ki1114097-CMIN             BANGLADESH                     0               200    242
24 months   ki1114097-CMIN             BANGLADESH                     1                42    242
24 months   ki1114097-CONTENT          PERU                           0               161    164
24 months   ki1114097-CONTENT          PERU                           1                 3    164


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/3367e4dc-b455-4249-9530-af8f89892ae8/2b371bdc-d800-437f-9307-05571242ddf2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1214692   -1.4187328   -0.8242057
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0442703   -1.7057273   -0.3828134
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6756469   -1.7080661    0.3567722
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1506064   -0.6345332    0.3333204
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2517800   -2.4968593   -0.0067008
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7960943   -1.1262150   -0.4659737
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0878166   -0.1303574    0.3059905
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -1.5353295   -1.8976320   -1.1730269
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.6584722   -1.6589335    0.3419892
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7931716   -0.9020382   -0.6843051
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.4043574    0.2927731    0.5159417
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.8773420   -0.9987698   -0.7559143
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.6354575   -1.9260121   -1.3449029
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1686061   -1.2940151   -1.0431972
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3335333   -0.2386590    0.9057257
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1642288   -1.3836945   -0.9447630
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5285365   -0.6491464   -0.4079267
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1836272   -2.0776837   -0.2895707
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0239867   -1.2175845   -0.8303890
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.5468907   -1.6822840   -1.4114973
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.4212474   -1.6397520   -1.2027427
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0710644   -1.2475533   -0.8945756
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.9795601   -2.1331291   -1.8259912
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.0006535   -1.3375211   -0.6637859
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0475323   -1.1527389   -0.9423256
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5914543   -0.6766897   -0.5062190
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.9634583   -1.0273914   -0.8995252
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5453634   -1.6575415   -1.4331852
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.3345681   -1.4566832   -1.2124529
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.9316650   -2.1044593   -1.7588707
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -2.0101572   -2.2528475   -1.7674669
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0853003   -0.0922479    0.2628485
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7695123   -1.9927460   -1.5462787
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.4011005   -1.6652713   -1.1369297
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.8560471   -2.5257847   -1.1863096
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.6511598   -2.0695219   -1.2327976
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.8038962   -3.0292361   -2.5785563
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5204483   -2.6654066   -2.3754900
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7735247   -1.9048134   -1.6422359
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.7920554   -2.9818497   -2.6022611
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5874878   -1.6869002   -1.4880755
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5224857   -1.5908221   -1.4541492
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8633121   -1.9990238   -1.7276004
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.4843067   -2.6223564   -2.3462571


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1041048   -1.2383048   -0.9699048
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.5877869   -0.7622273   -0.4133464
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1369355   -1.3453337   -0.9285373
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -1.8608750   -2.0482045   -1.6735455
Birth       ki1000109-ResPak           PAKISTAN                       observed             observed          -0.9800000   -1.4086438   -0.5513562
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0325486   -0.0310420    0.0961393
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0454532   -1.1235003   -0.9674062
Birth       ki1114097-CMIN             BANGLADESH                     observed             observed          -1.2030000   -1.6953191   -0.7106809
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2113701   -1.3298485   -1.0928916
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0639173   -1.1916078   -0.9362269
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4241872   -1.5668135   -1.2815609
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.0835567   -2.2027557   -1.9643578
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.4314086   -1.6374838   -1.2253335
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9116762   -0.9588660   -0.8644864
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5785476   -1.6926664   -1.4644288
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6451636   -2.7802323   -2.5100948
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5489071   -2.6476125   -2.4502017
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5774758   -1.6295950   -1.5253566
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0173644   -0.2294056    0.2641344
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1593467   -0.6912721    0.3725787
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2071428   -1.2122199    0.7979343
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4371805   -0.8741705   -0.0001904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1148445   -1.1113471    1.3410361
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1651013   -0.4323777    0.1021750
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.3958578   -0.5332229   -0.2584927
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.3255455   -0.6028559   -0.0482352
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.3215278   -1.1058362    0.4627806
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0919304   -0.1740075   -0.0098533
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.3718088   -0.4596912   -0.2839263
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1681112   -0.2659313   -0.0702910
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed           0.4324575   -0.0997459    0.9646609
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0368849   -0.1118693    0.0380995
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2825126   -0.8318490    0.2668238
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0471413   -0.2235887    0.1293061
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0325228   -0.0972760    0.0322304
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1444681   -1.0202357    0.7312996
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0399306   -0.2192483    0.1393870
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1781457    0.0901036    0.2661878
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0029399   -0.1473150    0.1414353
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1633418   -0.2786597   -0.0480239
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.1039966   -0.2066536   -0.0013396
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.4307551   -0.6866921   -0.1748182
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0441592   -0.1162092    0.0278907
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0480155   -0.0202771    0.1163080
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0517821    0.0058401    0.0977242
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0331843   -0.0834927    0.0171242
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0162712   -0.1053170    0.0727746
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed           0.1472274    0.0402058    0.2542490
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0312421   -0.1609163    0.2234004
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0781997   -0.1867392    0.0303398
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1153335   -0.2953944    0.0647274
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0892365   -0.1321337    0.3106067
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1015695   -0.5526731    0.7558121
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0019791   -0.3809886    0.3849469
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1587327   -0.0239053    0.3413707
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0284588   -0.1287945    0.0718769
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0252528   -0.1076260    0.0571203
24 months   ki1000109-EE               PAKISTAN                       optimal              observed           0.1220654   -0.0093201    0.2534509
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0149343   -0.0583891    0.0285204
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0549901   -0.1024391   -0.0075411
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0241059   -0.1215417    0.0733298
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0266437   -0.0834639    0.0301765
