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

**Intervention Variable:** predfeed36

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

agecat      studyid                    country                        predfeed36    n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 69     208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                139     208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  7      62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 55      62
Birth       ki0047075b-MAL-ED          INDIA                          1                  4      40
Birth       ki0047075b-MAL-ED          INDIA                          0                 36      40
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                 24      25
Birth       ki0047075b-MAL-ED          PERU                           1                 57     218
Birth       ki0047075b-MAL-ED          PERU                           0                161     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  2     104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                102     104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111     111
Birth       ki1000109-EE               PAKISTAN                       1                  2       6
Birth       ki1000109-EE               PAKISTAN                       0                  4       6
Birth       ki1113344-GMS-Nepal        NEPAL                          1                396     491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 95     491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               8205   10491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2286   10491
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1714    2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                414    2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 81     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                159     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 25     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                184     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 17     233
6 months    ki0047075b-MAL-ED          INDIA                          0                216     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  8     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                227     235
6 months    ki0047075b-MAL-ED          PERU                           1                 72     272
6 months    ki0047075b-MAL-ED          PERU                           0                200     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                247     250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238     243
6 months    ki1000109-EE               PAKISTAN                       1                  4       9
6 months    ki1000109-EE               PAKISTAN                       0                  5       9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105     527
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6559    8516
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1957    8516
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3252    4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                936    4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 69     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                143     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 20     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                149     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 17     224
24 months   ki0047075b-MAL-ED          INDIA                          0                207     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  8     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                219     227
24 months   ki0047075b-MAL-ED          PERU                           1                 53     201
24 months   ki0047075b-MAL-ED          PERU                           0                148     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                232     235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209     213
24 months   ki1000109-EE               PAKISTAN                       1                  0       3
24 months   ki1000109-EE               PAKISTAN                       0                  3       3
24 months   ki1113344-GMS-Nepal        NEPAL                          1                362     445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83     445
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     184
24 months   ki1148112-LCNI-5           MALAWI                         0                150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3297    4283
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                986    4283
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3144    4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                891    4035


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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/510c3714-d1d9-4749-abb4-b1241d71f4eb/38a2a133-a540-4166-b66e-bc0134b8eb8b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.9007063   -1.1056433   -0.6957693
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.4973991    0.1706222    0.8241760
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed           0.1602392   -0.0673762    0.3878546
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.1381354   -1.2704295   -1.0058413
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.7380982   -0.7830328   -0.6931635
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.7055717   -0.7812375   -0.6299060
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.2309277   -0.4286370   -0.0332184
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed           1.5228063    1.0846060    1.9610066
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.2827734   -0.7910632    0.2255164
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed           0.1299320   -0.0040873    0.2639513
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed           1.3207296    1.0811918    1.5602674
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.8003565    1.0718862    2.5288267
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.5686245   -0.6692679   -0.4679811
6 months    ki1148112-LCNI-5      MALAWI                         optimal              observed           0.2009905    0.0150325    0.3869485
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.5983390   -0.6349299   -0.5617480
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.3440292   -0.3895758   -0.2984826
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.7891364   -0.9516458   -0.6266271
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.5287360    0.1966840    0.8607880
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.7546321   -1.1226077   -0.3866565
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.3657892   -0.4821742   -0.2494043
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed           0.2209474    0.0746045    0.3672904
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.0698143   -1.1678121   -0.9718164
24 months   ki1148112-LCNI-5      MALAWI                         optimal              observed          -0.0813556   -0.2663846    0.1036733
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.3092891   -1.3717024   -1.2468758
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.1955006   -1.2620012   -1.1289999


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.9474038   -1.0929246   -0.8018831
Birth       ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED     PERU                           observed             observed          -0.0458257   -0.1696487    0.0779973
Birth       ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.1085743   -1.2077878   -1.0093609
Birth       kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -0.7602278   -0.7829387   -0.7375169
Birth       kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -0.7018985   -0.7560164   -0.6477806
6 months    ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.1361806   -0.2655204   -0.0068407
6 months    ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA                          observed             observed          -0.7164664   -0.8440835   -0.5888492
6 months    ki0047075b-MAL-ED     NEPAL                          observed             observed           0.1146454   -0.0170405    0.2463313
6 months    ki0047075b-MAL-ED     PERU                           observed             observed           1.0551961    0.9331945    1.1771976
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5508093    0.4191033    0.6825154
6 months    ki1113344-GMS-Nepal   NEPAL                          observed             observed          -0.6001075   -0.6890924   -0.5111227
6 months    ki1148112-LCNI-5      MALAWI                         observed             observed           0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -0.5994135   -0.6250748   -0.5737521
6 months    kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -0.3960017   -0.4356255   -0.3563778
24 months   ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED     INDIA                          observed             observed          -0.9587723   -1.0752995   -0.8422452
24 months   ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.3741410   -0.4879554   -0.2603265
24 months   ki0047075b-MAL-ED     PERU                           observed             observed           0.1204478    0.0005049    0.2403906
24 months   ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.1236255   -1.2167712   -1.0304797
24 months   ki1148112-LCNI-5      MALAWI                         observed             observed          -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.3365001   -1.3704041   -1.3025961
24 months   kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.2344089   -1.2708428   -1.1979750


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.0466976   -0.2007698    0.1073747
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.0944959   -0.2201656    0.0311738
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.2060649   -0.4044972   -0.0076326
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed           0.0295610   -0.0435037    0.1026258
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0221297   -0.0622058    0.0179465
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed           0.0036732   -0.0490247    0.0563711
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.0947471   -0.0412130    0.2307072
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.5510838   -0.9695170   -0.1326507
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.4336930   -0.9243656    0.0569797
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0152866   -0.0400966    0.0095233
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed          -0.2655335   -0.4715419   -0.0595251
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2495471   -1.9734729   -0.5256214
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0314830   -0.0742613    0.0112953
6 months    ki1148112-LCNI-5      MALAWI                         optimal              observed           0.1915095    0.0407365    0.3422825
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0010745   -0.0285859    0.0264369
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0519725   -0.0736828   -0.0302621
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.0310522   -0.1235413    0.0614368
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.0695053   -0.3646454    0.2256349
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.2041403   -0.5633831    0.1551026
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0083517   -0.0273335    0.0106301
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -0.1004996   -0.2174703    0.0164710
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0538112   -0.1069493   -0.0006731
24 months   ki1148112-LCNI-5      MALAWI                         optimal              observed           0.0042904   -0.0885108    0.0970916
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0272110   -0.0823815    0.0279595
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0389084   -0.0925733    0.0147565
