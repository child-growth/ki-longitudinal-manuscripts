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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
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
* month
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
* delta_month
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

agecat      studyid                    country                        exclfeed36    n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 31     208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                177     208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  4      62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 58      62
Birth       ki0047075b-MAL-ED          INDIA                          1                  1      40
Birth       ki0047075b-MAL-ED          INDIA                          0                 39      40
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                 25      25
Birth       ki0047075b-MAL-ED          PERU                           1                  5     218
Birth       ki0047075b-MAL-ED          PERU                           0                213     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                103     104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111     111
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       3
Birth       ki1000108-IRC              INDIA                          1                  0       3
Birth       ki1000108-IRC              INDIA                          0                  3       3
Birth       ki1000109-EE               PAKISTAN                       1                  2       6
Birth       ki1000109-EE               PAKISTAN                       0                  4       6
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                115     483
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                368     483
Birth       ki1101329-Keneba           GAMBIA                         1                343    1192
Birth       ki1101329-Keneba           GAMBIA                         0                849    1192
Birth       ki1113344-GMS-Nepal        NEPAL                          1                396     491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 95     491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               8189   10491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2302   10491
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1711    2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                417    2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 30     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                210     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                197     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  9     233
6 months    ki0047075b-MAL-ED          INDIA                          0                224     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  4     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                231     235
6 months    ki0047075b-MAL-ED          PERU                           1                  6     272
6 months    ki0047075b-MAL-ED          PERU                           0                266     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                249     250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                239     243
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
6 months    ki1000108-IRC              INDIA                          1                  0       4
6 months    ki1000108-IRC              INDIA                          0                  4       4
6 months    ki1000109-EE               PAKISTAN                       1                  4       9
6 months    ki1000109-EE               PAKISTAN                       0                  5       9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                145     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                458     603
6 months    ki1101329-Keneba           GAMBIA                         1                507    1790
6 months    ki1101329-Keneba           GAMBIA                         0               1283    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105     527
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6544    8516
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1972    8516
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3240    4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                948    4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 25     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                187     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                158     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  9     224
24 months   ki0047075b-MAL-ED          INDIA                          0                215     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  4     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                223     227
24 months   ki0047075b-MAL-ED          PERU                           1                  4     201
24 months   ki0047075b-MAL-ED          PERU                           0                197     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                234     235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                210     213
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
24 months   ki1000108-IRC              INDIA                          1                  0       4
24 months   ki1000108-IRC              INDIA                          0                  4       4
24 months   ki1000109-EE               PAKISTAN                       1                  0       3
24 months   ki1000109-EE               PAKISTAN                       0                  3       3
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                141     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                436     577
24 months   ki1101329-Keneba           GAMBIA                         1                424    1395
24 months   ki1101329-Keneba           GAMBIA                         0                971    1395
24 months   ki1113344-GMS-Nepal        NEPAL                          1                362     445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83     445
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     184
24 months   ki1148112-LCNI-5           MALAWI                         0                150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3288    4283
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                995    4283
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3132    4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                903    4035


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/473a98c1-a0fd-4795-a5d1-e5cfbdd90f1d/28a357fd-9b14-4336-acee-700b8cf14ac6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.7837772   -1.1333765   -0.4341780
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.7049544    0.4636335    0.9462752
Birth       ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -1.4291216   -1.5305158   -1.3277274
Birth       ki1101329-Keneba      GAMBIA       optimal              observed          -1.2496354   -1.3653878   -1.1338830
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.1677936   -1.2761063   -1.0594810
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.7371826   -0.7762132   -0.6981519
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.6889553   -0.7450603   -0.6328503
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.1284404   -0.2662981    0.0094172
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           1.3856973    0.6436497    2.1277450
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.4912558   -1.3060932    0.3235815
6 months    ki0047075b-MAL-ED     PERU         optimal              observed           0.9831539    0.4798024    1.4865055
6 months    ki1017093b-PROVIDE    BANGLADESH   optimal              observed           0.0309703   -0.1267837    0.1887244
6 months    ki1101329-Keneba      GAMBIA       optimal              observed           0.0169761   -0.0879193    0.1218715
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.5950374   -0.7014121   -0.4886626
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.0371578   -0.1144667    0.1887823
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.6253907   -0.6671244   -0.5836570
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.3433540   -0.3895004   -0.2972076
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.8063964   -0.9536226   -0.6591701
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.5659085   -0.0202511    1.1520680
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -1.0385518   -1.1754231   -0.9016805
24 months   ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.7941374   -0.9560072   -0.6322676
24 months   ki1101329-Keneba      GAMBIA       optimal              observed          -0.6936496   -0.7826399   -0.6046594
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.0384610   -1.1393918   -0.9375301
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -0.0982166   -0.3120434    0.1156102
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.3106048   -1.3735718   -1.2476378
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.2130530   -1.2760126   -1.1500934


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.9474038   -1.0929246   -0.8018831
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.0458257   -0.1696487    0.0779973
Birth       ki1017093b-PROVIDE    BANGLADESH   observed             observed          -1.2966874   -1.3774293   -1.2159454
Birth       ki1101329-Keneba      GAMBIA       observed             observed          -1.2752643   -1.3442810   -1.2062476
Birth       ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.1085743   -1.2077878   -1.0093609
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.7602278   -0.7829387   -0.7375169
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.7018985   -0.7560164   -0.6477806
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.1361806   -0.2655204   -0.0068407
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -0.7164664   -0.8440835   -0.5888492
6 months    ki0047075b-MAL-ED     PERU         observed             observed           1.0551961    0.9331945    1.1771976
6 months    ki1017093b-PROVIDE    BANGLADESH   observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba      GAMBIA       observed             observed          -0.2009461   -0.2562412   -0.1456509
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -0.6001075   -0.6890924   -0.5111227
6 months    ki1148112-LCNI-5      MALAWI       observed             observed           0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.5994135   -0.6250748   -0.5737521
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.3960017   -0.4356255   -0.3563778
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -0.9587723   -1.0752995   -0.8422452
24 months   ki1017093b-PROVIDE    BANGLADESH   observed             observed          -0.8945581   -0.9774087   -0.8117074
24 months   ki1101329-Keneba      GAMBIA       observed             observed          -0.7973955   -0.8498696   -0.7449213
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.1236255   -1.2167712   -1.0304797
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3365001   -1.3704041   -1.3025961
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.2344089   -1.2708428   -1.1979750


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.1636266   -0.5006903    0.1734371
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.7507801   -1.0178384   -0.4837217
Birth       ki1017093b-PROVIDE    BANGLADESH   optimal              observed           0.1324342    0.0582280    0.2066405
Birth       ki1101329-Keneba      GAMBIA       optimal              observed          -0.0256289   -0.1168312    0.0655734
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed           0.0592193    0.0021273    0.1163113
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0230452   -0.0569263    0.0108359
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0129432   -0.0409992    0.0151129
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0077401   -0.0484473    0.0329671
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.4139748   -1.1378360    0.3098863
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.2252106   -1.0214360    0.5710149
6 months    ki0047075b-MAL-ED     PERU         optimal              observed           0.0720422   -0.4330691    0.5771534
6 months    ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.2300610   -0.3688854   -0.0912366
6 months    ki1101329-Keneba      GAMBIA       optimal              observed          -0.2179222   -0.3053500   -0.1304944
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0050702   -0.0609290    0.0507887
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.3553422    0.2296830    0.4810014
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed           0.0259773   -0.0063328    0.0582873
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0526476   -0.0764946   -0.0288007
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0137923   -0.1344046    0.1068199
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.1066777   -0.6441973    0.4308420
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed           0.0797795    0.0105387    0.1490203
24 months   ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.1004207   -0.2412734    0.0404321
24 months   ki1101329-Keneba      GAMBIA       optimal              observed          -0.1037458   -0.1773554   -0.0301363
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0851645   -0.1572549   -0.0130741
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed           0.0211513   -0.1090160    0.1513187
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0258953   -0.0802258    0.0284351
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0213559   -0.0695899    0.0268782
