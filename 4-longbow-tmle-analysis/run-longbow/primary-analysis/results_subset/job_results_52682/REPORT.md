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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+          1011   22055
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          12973   22055
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           5884   22055
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           2187   22055
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           737   16715
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           9584   16715
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           4709   16715
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3           1685   16715
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           362    8526
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           5000    8526
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2376    8526
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            788    8526
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
![](/tmp/0f35e718-265f-4cb2-ace2-9e6b184037f7/ff2c10bc-d100-4fad-a452-ece040a210f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8433646   -1.2152024   -0.4715268
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1278912   -0.1057269    0.3615092
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4690136   -0.3242174    1.2622446
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4990701    0.0936421    0.9044982
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1250593   -0.7069091    0.4567905
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.9264675   -2.3656374   -1.4872975
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4638672   -1.8485268   -1.0792077
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3471160   -1.5303485   -1.1638835
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2142677   -1.4353974   -0.9931379
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6922002   -0.8305123   -0.5538881
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6679495   -0.7352448   -0.6006541
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.9507932   -1.0813365   -0.8202498
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0161743   -0.2745786    0.3069271
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8200684   -1.1641235   -0.4760134
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4929352    0.0763709    0.9094996
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1848134    0.9071461    1.4624807
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.9290164    0.3604720    1.4975607
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7384353    0.3180800    1.1587907
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4564517   -0.8326932   -0.0802103
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7579944   -1.0759474   -0.4400413
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0159729   -0.1860531    0.2179989
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1924994   -0.0219469    0.4069458
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.8301528   -1.0585247   -0.6017809
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.0481948    0.8167759    1.2796137
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2387636   -0.3602491   -0.1172781
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5213983   -0.5981274   -0.4446692
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2253721   -0.4275212   -0.0232231
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2392638   -1.6067073   -0.8718204
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0736883   -1.4116957   -0.7356809
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3275698   -0.6445276   -0.0106120
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2228776    0.0586611    0.3870942
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5832606    0.2399585    0.9265627
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0222206   -0.1210052    0.1654465
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3835511   -0.6415506   -0.1255516
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.5066565   -1.0821128    0.0687997
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7672091   -1.1980051   -0.3364130
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3078321   -0.5667349   -0.0489293
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1970417   -1.3870636   -1.0070197
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.6260042    0.2355951    1.0164132
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.2329148   -0.3896337   -0.0761960
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2332318   -1.3098715   -1.1565921
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1598034   -1.3333959   -0.9862109


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9721393   -1.1211171   -0.8231615
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0468095   -0.1738806    0.0802616
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7637500    0.5676177    0.9598823
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0053372   -1.1922119   -0.8184626
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9778087   -1.0126530   -0.9429644
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7500648   -0.7679149   -0.7322148
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1340556   -0.2631866   -0.0049245
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7105603   -0.8374801   -0.5836404
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0552716    0.9326038    1.1779394
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5409906    0.3873048    0.6946765
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5900821   -0.7252457   -0.4549185
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6038416   -0.6899448   -0.5177384
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7088012   -0.7411274   -0.6764750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5925328   -0.6121060   -0.5729595
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0539486   -0.0712465    0.1791437
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7416790   -0.8323562   -0.6510017
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1363107   -1.2252817   -1.0473398
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6612799   -0.6944511   -0.6281088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2984096   -1.3217671   -1.2750521
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231776   -1.2550332   -1.1913220


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1287747   -0.4962914    0.2387420
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1747007   -0.3958093    0.0464079
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6419610   -1.3843831    0.1004611
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2646799   -0.1486430    0.6780028
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3397663   -0.8793206    0.1997881
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.9211302    0.4835954    1.3586650
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1654086   -0.2099227    0.5407399
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1029646   -0.0535416    0.2594709
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0978246   -0.1117197    0.3073689
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2856085   -0.4241379   -0.1470791
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0821154   -0.1470217   -0.0172090
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.2625434    0.1407588    0.3843279
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1502298   -0.4119485    0.1114888
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1095082   -0.2126835    0.4316998
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3818900   -0.7656635    0.0018834
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1295418   -0.3755897    0.1165061
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3880258   -0.9302809    0.1542294
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2022140   -0.5874071    0.1829790
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0462249   -0.3970508    0.3046010
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1679123   -0.1366378    0.4724623
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2150635   -0.4027327   -0.0273944
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1627372   -0.3624977    0.0370233
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.2263112    0.0166091    0.4360133
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.0202369   -0.1620598    0.2025337
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4700376   -0.5923338   -0.3477415
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0711345   -0.1470219    0.0047530
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1647874   -0.3575856    0.0280108
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.4190752    0.0786424    0.7595080
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1213975   -0.1850987    0.4278938
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0488776   -0.3505831    0.2528279
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1024299   -0.2120935    0.0072338
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1684077   -0.5069149    0.1700995
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0317280   -0.1017054    0.1651613
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1735994   -0.4244069    0.0772081
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.2350224   -0.7962071    0.3261623
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1256580   -0.5461172    0.2948013
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3025181   -0.5406623   -0.0643739
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0607309   -0.1217909    0.2432527
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.0591749   -0.3905611    0.2722113
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4283651   -0.5836682   -0.2730619
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0651778   -0.1385021    0.0081465
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0633742   -0.2268589    0.1001104
