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

**Intervention Variable:** nrooms

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
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

agecat      studyid                    country                        nrooms    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+            12     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            121     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             43     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             25     201
Birth       ki0047075b-MAL-ED          BRAZIL                         4+            29      57
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0      57
Birth       ki0047075b-MAL-ED          BRAZIL                         2             10      57
Birth       ki0047075b-MAL-ED          BRAZIL                         3             18      57
Birth       ki0047075b-MAL-ED          INDIA                          4+             2      39
Birth       ki0047075b-MAL-ED          INDIA                          1             17      39
Birth       ki0047075b-MAL-ED          INDIA                          2             16      39
Birth       ki0047075b-MAL-ED          INDIA                          3              4      39
Birth       ki0047075b-MAL-ED          NEPAL                          4+            15      25
Birth       ki0047075b-MAL-ED          NEPAL                          1              6      25
Birth       ki0047075b-MAL-ED          NEPAL                          2              2      25
Birth       ki0047075b-MAL-ED          NEPAL                          3              2      25
Birth       ki0047075b-MAL-ED          PERU                           4+           103     210
Birth       ki0047075b-MAL-ED          PERU                           1             13     210
Birth       ki0047075b-MAL-ED          PERU                           2             45     210
Birth       ki0047075b-MAL-ED          PERU                           3             49     210
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+            66      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              5      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             12      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             12      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            45     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             28     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             30     112
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             5      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             35      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             27      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             19      86
Birth       ki1000108-IRC              INDIA                          4+            14     341
Birth       ki1000108-IRC              INDIA                          1            156     341
Birth       ki1000108-IRC              INDIA                          2            140     341
Birth       ki1000108-IRC              INDIA                          3             31     341
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+            18     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            388     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2             79     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     3             47     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+            90     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            338     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2            181     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3             98     707
Birth       ki1113344-GMS-Nepal        NEPAL                          4+           297     641
Birth       ki1113344-GMS-Nepal        NEPAL                          1             42     641
Birth       ki1113344-GMS-Nepal        NEPAL                          2            135     641
Birth       ki1113344-GMS-Nepal        NEPAL                          3            167     641
Birth       ki1114097-CONTENT          PERU                           4+             1       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1114097-CONTENT          PERU                           2              1       2
Birth       ki1114097-CONTENT          PERU                           3              0       2
Birth       ki1135781-COHORTS          INDIA                          4+            90    4454
Birth       ki1135781-COHORTS          INDIA                          1           2879    4454
Birth       ki1135781-COHORTS          INDIA                          2           1328    4454
Birth       ki1135781-COHORTS          INDIA                          3            157    4454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+           662   17989
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          11170   17989
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           4609   17989
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           1548   17989
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+           111    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           1430    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2            610    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3            243    2394
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+            12     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            150     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2             50     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3             28     240
6 months    ki0047075b-MAL-ED          BRAZIL                         4+           126     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2             20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3             59     209
6 months    ki0047075b-MAL-ED          INDIA                          4+            25     235
6 months    ki0047075b-MAL-ED          INDIA                          1             84     235
6 months    ki0047075b-MAL-ED          INDIA                          2             78     235
6 months    ki0047075b-MAL-ED          INDIA                          3             48     235
6 months    ki0047075b-MAL-ED          NEPAL                          4+           131     236
6 months    ki0047075b-MAL-ED          NEPAL                          1             52     236
6 months    ki0047075b-MAL-ED          NEPAL                          2             31     236
6 months    ki0047075b-MAL-ED          NEPAL                          3             22     236
6 months    ki0047075b-MAL-ED          PERU                           4+           139     270
6 months    ki0047075b-MAL-ED          PERU                           1             19     270
6 months    ki0047075b-MAL-ED          PERU                           2             50     270
6 months    ki0047075b-MAL-ED          PERU                           3             62     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+           191     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             21     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           108     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             62     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             64     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            197     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            106     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             51     368
6 months    ki1000108-IRC              INDIA                          4+            17     406
6 months    ki1000108-IRC              INDIA                          1            183     406
6 months    ki1000108-IRC              INDIA                          2            170     406
6 months    ki1000108-IRC              INDIA                          3             36     406
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+            21     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            430     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2             94     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     3             58     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            91     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            339     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3            101     715
6 months    ki1113344-GMS-Nepal        NEPAL                          4+           268     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1             40     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2            115     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3            141     564
6 months    ki1114097-CONTENT          PERU                           4+            78     215
6 months    ki1114097-CONTENT          PERU                           1             44     215
6 months    ki1114097-CONTENT          PERU                           2             54     215
6 months    ki1114097-CONTENT          PERU                           3             39     215
6 months    ki1135781-COHORTS          INDIA                          4+            93    4955
6 months    ki1135781-COHORTS          INDIA                          1           3206    4955
6 months    ki1135781-COHORTS          INDIA                          2           1474    4955
6 months    ki1135781-COHORTS          INDIA                          3            182    4955
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           742   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           9611   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           4732   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3           1688   16773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+           262    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2851    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2           1226    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3            488    4827
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            134     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2             40     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     212
24 months   ki0047075b-MAL-ED          BRAZIL                         4+           104     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2             16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3             49     169
24 months   ki0047075b-MAL-ED          INDIA                          4+            25     227
24 months   ki0047075b-MAL-ED          INDIA                          1             82     227
24 months   ki0047075b-MAL-ED          INDIA                          2             74     227
24 months   ki0047075b-MAL-ED          INDIA                          3             46     227
24 months   ki0047075b-MAL-ED          NEPAL                          4+           127     228
24 months   ki0047075b-MAL-ED          NEPAL                          1             48     228
24 months   ki0047075b-MAL-ED          NEPAL                          2             31     228
24 months   ki0047075b-MAL-ED          NEPAL                          3             22     228
24 months   ki0047075b-MAL-ED          PERU                           4+           110     201
24 months   ki0047075b-MAL-ED          PERU                           1             16     201
24 months   ki0047075b-MAL-ED          PERU                           2             32     201
24 months   ki0047075b-MAL-ED          PERU                           3             43     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           183     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            98     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             50     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             57     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            201     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            106     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             51     372
24 months   ki1000108-IRC              INDIA                          4+            17     407
24 months   ki1000108-IRC              INDIA                          1            184     407
24 months   ki1000108-IRC              INDIA                          2            170     407
24 months   ki1000108-IRC              INDIA                          3             36     407
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            408     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2             92     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     3             57     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            82     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            217     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            137     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78     514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+           231     487
24 months   ki1113344-GMS-Nepal        NEPAL                          1             35     487
24 months   ki1113344-GMS-Nepal        NEPAL                          2            106     487
24 months   ki1113344-GMS-Nepal        NEPAL                          3            115     487
24 months   ki1114097-CONTENT          PERU                           4+            63     164
24 months   ki1114097-CONTENT          PERU                           1             30     164
24 months   ki1114097-CONTENT          PERU                           2             39     164
24 months   ki1114097-CONTENT          PERU                           3             32     164
24 months   ki1135781-COHORTS          INDIA                          4+            75    3719
24 months   ki1135781-COHORTS          INDIA                          1           2287    3719
24 months   ki1135781-COHORTS          INDIA                          2           1207    3719
24 months   ki1135781-COHORTS          INDIA                          3            150    3719
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           365    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           5036    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2394    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            796    8591
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           251    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2781    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2           1208    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3            490    4730


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/01b187d9-0693-41f1-ba67-f2fa62d52957/4093bf26-a0f1-4bf1-8544-babb1331c1f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0700639   -1.4577804   -0.6823474
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0682336   -0.3399009    0.4763681
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3912188   -0.4082004    1.1906380
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4796456    0.0569886    0.9023026
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4631716   -1.1212447    0.1949014
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7478566   -1.3971707   -0.0985426
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4637527   -1.8130308   -1.1144746
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3258821   -1.4784430   -1.1733212
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2969656   -1.5206472   -1.0732840
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7569713   -0.8956627   -0.6182798
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6640120   -0.7364462   -0.5915777
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.8311021   -1.0033871   -0.6588171
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4922808   -0.8565102   -0.1280515
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9042063   -1.2104484   -0.5979642
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4532128    0.0411039    0.8653216
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1158930    0.8489695    1.3828165
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.9429490    0.3196096    1.5662883
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8332553    0.4169508    1.2495599
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4283423   -1.0068438    0.1501592
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7853488   -1.1514522   -0.4192455
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0985759   -0.3299563    0.1328046
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1812011   -0.0354923    0.3978946
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7389213   -0.9033990   -0.5744435
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.1978534    0.9827348    1.4129720
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2720904   -0.3956681   -0.1485127
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5151889   -0.5922528   -0.4381250
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2313209   -0.4350248   -0.0276170
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0093301   -1.5509896   -0.4676706
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9268781   -1.1225017   -0.7312545
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2030870   -0.5604206    0.1542465
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2029055    0.0307558    0.3750553
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5729117    0.2230717    0.9227517
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1794925   -0.3749601    0.0159750
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4061571   -0.7878308   -0.0244834
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6090185   -1.1323623   -0.0856747
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7897364   -1.2315204   -0.3479524
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4518179   -0.7133848   -0.1902510
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.3852047   -1.6776511   -1.0927584
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.8649687    0.5184113    1.2115262
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.2253833   -0.3862679   -0.0644986
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2453920   -1.3212242   -1.1695598
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1422064   -1.3152716   -0.9691413


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9728358   -1.1217009   -0.8239707
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0468095   -0.1738806    0.0802616
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7637500    0.5676177    0.9598823
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0053372   -1.1922119   -0.8184626
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9778087   -1.0126530   -0.9429644
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7776536   -0.7966730   -0.7586341
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1333333   -0.2623761   -0.0042906
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7102872   -0.8371659   -0.5834085
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0512099    0.9285617    1.1738581
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5404351    0.3867005    0.6941696
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5900821   -0.7252457   -0.4549185
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6038416   -0.6899448   -0.5177384
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7088012   -0.7411274   -0.6764750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5930302   -0.6125738   -0.5734865
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7416790   -0.8323562   -0.6510017
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1363107   -1.2252817   -1.0473398
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6612799   -0.6944511   -0.6281088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2967966   -1.3200807   -1.2735126
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231776   -1.2550332   -1.1913220


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0972281   -0.2761297    0.4705858
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1150431   -0.4968143    0.2667281
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5641662   -1.3130500    0.1847176
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2841044   -0.1194070    0.6876158
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0016539   -0.6143977    0.6110898
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2574806   -0.8872534    0.3722922
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1652940   -0.1729791    0.5035671
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0817308   -0.0488919    0.2123535
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1805225   -0.0323392    0.3933843
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2208375   -0.3595887   -0.0820862
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1136416   -0.1843461   -0.0429371
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.1428523   -0.0182032    0.3039078
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.3589475    0.0179872    0.6999077
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1939191   -0.0970260    0.4848641
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3427820   -0.7224624    0.0368984
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0646831   -0.3054504    0.1760842
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4025139   -0.9976198    0.1925920
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2970340   -0.6824740    0.0884060
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0743343   -0.6232791    0.4746105
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1952667   -0.1580947    0.5486282
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1005148   -0.3148467    0.1138172
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1514389   -0.3533079    0.0504302
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1350796   -0.0047782    0.2749375
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1294216   -0.3070389    0.0481957
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4367108   -0.5609417   -0.3124799
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0778413   -0.1543668   -0.0013157
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1588386   -0.3530770    0.0353998
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1900376   -0.3273874    0.7074626
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0247739   -0.2068849    0.1573372
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1718252   -0.5010811    0.1574306
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0917074   -0.2038819    0.0204672
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1638816   -0.5076286    0.1798654
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2342901    0.0632835    0.4052966
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1509934   -0.5193613    0.2173744
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1326604   -0.6383833    0.3730625
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1031306   -0.5346212    0.3283599
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1585323   -0.3992884    0.0822238
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.2488940   -0.0273231    0.5251111
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.2981395   -0.5954507   -0.0008282
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4358966   -0.5955304   -0.2762628
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0514046   -0.1246547    0.0218454
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0809711   -0.2440566    0.0821143
