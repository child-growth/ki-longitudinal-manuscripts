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

agecat      studyid                    country                        exclfeed36    n_cell      n
----------  -------------------------  -----------------------------  -----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 31    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                177    208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  4     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 58     62
Birth       ki0047075b-MAL-ED          INDIA                          1                  1     40
Birth       ki0047075b-MAL-ED          INDIA                          0                 39     40
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                 25     25
Birth       ki0047075b-MAL-ED          PERU                           1                  5    218
Birth       ki0047075b-MAL-ED          PERU                           0                213    218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                103    104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111    111
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      3
Birth       ki1000108-IRC              INDIA                          1                  0      3
Birth       ki1000108-IRC              INDIA                          0                  3      3
Birth       ki1000109-EE               PAKISTAN                       1                  2      6
Birth       ki1000109-EE               PAKISTAN                       0                  4      6
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                115    483
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                368    483
Birth       ki1101329-Keneba           GAMBIA                         1                343   1192
Birth       ki1101329-Keneba           GAMBIA                         0                849   1192
Birth       ki1113344-GMS-Nepal        NEPAL                          1                396    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 95    491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               6736   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1883   8619
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1711   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                417   2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 30    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                210    240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 12    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                197    209
6 months    ki0047075b-MAL-ED          INDIA                          1                  9    233
6 months    ki0047075b-MAL-ED          INDIA                          0                224    233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  4    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                231    235
6 months    ki0047075b-MAL-ED          PERU                           1                  6    272
6 months    ki0047075b-MAL-ED          PERU                           0                266    272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                249    250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                239    243
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9
6 months    ki1000108-IRC              INDIA                          1                  0      4
6 months    ki1000108-IRC              INDIA                          0                  4      4
6 months    ki1000109-EE               PAKISTAN                       1                  4      9
6 months    ki1000109-EE               PAKISTAN                       0                  5      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168    168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                145    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                458    603
6 months    ki1101329-Keneba           GAMBIA                         1                507   1790
6 months    ki1101329-Keneba           GAMBIA                         0               1283   1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105    527
6 months    ki1148112-LCNI-5           MALAWI                         1                 47    272
6 months    ki1148112-LCNI-5           MALAWI                         0                225    272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6561   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1974   8535
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3240   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                948   4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 25    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                187    212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 11    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                158    169
24 months   ki0047075b-MAL-ED          INDIA                          1                  9    224
24 months   ki0047075b-MAL-ED          INDIA                          0                215    224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  4    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                223    227
24 months   ki0047075b-MAL-ED          PERU                           1                  4    201
24 months   ki0047075b-MAL-ED          PERU                           0                197    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                234    235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                210    213
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9
24 months   ki1000108-IRC              INDIA                          1                  0      4
24 months   ki1000108-IRC              INDIA                          0                  4      4
24 months   ki1000109-EE               PAKISTAN                       1                  0      3
24 months   ki1000109-EE               PAKISTAN                       0                  3      3
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                141    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                436    577
24 months   ki1101329-Keneba           GAMBIA                         1                424   1395
24 months   ki1101329-Keneba           GAMBIA                         0                971   1395
24 months   ki1113344-GMS-Nepal        NEPAL                          1                362    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83    445
24 months   ki1148112-LCNI-5           MALAWI                         1                 34    184
24 months   ki1148112-LCNI-5           MALAWI                         0                150    184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3311   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1006   4317
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3132   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                903   4035


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
![](/tmp/cdf5597c-a24c-49ff-8d38-280da3aa8c50/9fa61cc8-5451-4d84-9823-0bfb00921e58/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.9452737   -1.2668564   -0.6236909
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.7045999    0.4572787    0.9519211
Birth       ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -1.2607742   -1.3932213   -1.1283271
Birth       ki1101329-Keneba      GAMBIA       optimal              observed          -1.2509745   -1.3678386   -1.1341104
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.2597215   -1.4018072   -1.1176357
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.7572220   -0.8099096   -0.7045343
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.6883235   -0.7445175   -0.6321295
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.1122656   -0.3479281    0.1233969
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           1.4097971    0.5892734    2.2303209
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.8072046   -1.5203563   -0.0940529
6 months    ki0047075b-MAL-ED     PERU         optimal              observed           0.9147631    0.4836389    1.3458874
6 months    ki1017093b-PROVIDE    BANGLADESH   optimal              observed           0.0144279   -0.1455765    0.1744324
6 months    ki1101329-Keneba      GAMBIA       optimal              observed           0.0076953   -0.0974641    0.1128547
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.5715130   -0.6715787   -0.4714473
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.3268064    0.0930803    0.5605325
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.6313865   -0.6709625   -0.5918106
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.3439235   -0.3897447   -0.2981024
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.6423090   -0.8585262   -0.4260919
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.5901087   -0.0259240    1.2061414
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -1.0655418   -1.1886624   -0.9424213
24 months   ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.8024047   -0.9652323   -0.6395771
24 months   ki1101329-Keneba      GAMBIA       optimal              observed          -0.7121077   -0.8053410   -0.6188743
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.0026252   -1.1139454   -0.8913051
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -0.0564328   -0.2198970    0.1070314
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.3104432   -1.3748815   -1.2460049
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.2077539   -1.2765372   -1.1389705


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.9480769   -1.0934921   -0.8026617
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.0458257   -0.1696487    0.0779973
Birth       ki1017093b-PROVIDE    BANGLADESH   observed             observed          -1.2966874   -1.3774293   -1.2159454
Birth       ki1101329-Keneba      GAMBIA       observed             observed          -1.2752643   -1.3442810   -1.2062476
Birth       ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.1085743   -1.2077878   -1.0093609
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.7892308   -0.8133344   -0.7651272
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.7018985   -0.7560164   -0.6477806
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.1354583   -0.2647102   -0.0062065
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -0.7161910   -0.8437667   -0.5886153
6 months    ki0047075b-MAL-ED     PERU         observed             observed           1.0511642    0.9291821    1.1731463
6 months    ki1017093b-PROVIDE    BANGLADESH   observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba      GAMBIA       observed             observed          -0.2009461   -0.2562412   -0.1456509
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -0.6001075   -0.6890924   -0.5111227
6 months    ki1148112-LCNI-5      MALAWI       observed             observed           0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.5995202   -0.6251579   -0.5738825
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.3960017   -0.4356255   -0.3563778
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -0.9581250   -1.0746982   -0.8415518
24 months   ki1017093b-PROVIDE    BANGLADESH   observed             observed          -0.8945581   -0.9774087   -0.8117074
24 months   ki1101329-Keneba      GAMBIA       observed             observed          -0.7973955   -0.8498696   -0.7449213
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.1236255   -1.2167712   -1.0304797
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3352235   -1.3688736   -1.3015735
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.2344089   -1.2708428   -1.1979750


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0028033   -0.3101640    0.3045575
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.7504256   -1.0230561   -0.4777951
Birth       ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.0359131   -0.1317700    0.0599438
Birth       ki1101329-Keneba      GAMBIA       optimal              observed          -0.0242898   -0.1170186    0.0684390
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed           0.1511471    0.0471088    0.2551854
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0320088   -0.0782094    0.0141918
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0135750   -0.0418495    0.0146994
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0231927   -0.2253109    0.1789255
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.4377198   -1.2355913    0.3601518
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed           0.0910136   -0.6080605    0.7900878
6 months    ki0047075b-MAL-ED     PERU         optimal              observed           0.1364011   -0.2989972    0.5717994
6 months    ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.2135186   -0.3548842   -0.0721530
6 months    ki1101329-Keneba      GAMBIA       optimal              observed          -0.2086414   -0.2963104   -0.1209723
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0285945   -0.0697183    0.0125292
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.0656936   -0.1326624    0.2640496
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed           0.0318663   -0.0000568    0.0637894
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0520781   -0.0738128   -0.0303435
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.1769834   -0.3684957    0.0145288
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.1274854   -0.6966701    0.4416993
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed           0.1074168    0.0506956    0.1641381
24 months   ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.0921533   -0.2343743    0.0500677
24 months   ki1101329-Keneba      GAMBIA       optimal              observed          -0.0852878   -0.1625360   -0.0080396
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.1210002   -0.1995556   -0.0424448
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -0.0206324   -0.0881284    0.0468635
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0247803   -0.0820614    0.0325008
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0266551   -0.0795917    0.0262816
