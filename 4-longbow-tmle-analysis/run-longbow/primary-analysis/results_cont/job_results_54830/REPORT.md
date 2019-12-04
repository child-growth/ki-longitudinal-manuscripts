---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
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

agecat      studyid                    country                        nrooms    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+            12     201  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            121     201  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             43     201  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             25     201  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         4+            29      57  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0      57  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         2             10      57  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         3             18      57  whz              
Birth       ki0047075b-MAL-ED          INDIA                          4+             2      39  whz              
Birth       ki0047075b-MAL-ED          INDIA                          1             17      39  whz              
Birth       ki0047075b-MAL-ED          INDIA                          2             16      39  whz              
Birth       ki0047075b-MAL-ED          INDIA                          3              4      39  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          4+            15      25  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          1              6      25  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          2              2      25  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          3              2      25  whz              
Birth       ki0047075b-MAL-ED          PERU                           4+           103     210  whz              
Birth       ki0047075b-MAL-ED          PERU                           1             13     210  whz              
Birth       ki0047075b-MAL-ED          PERU                           2             45     210  whz              
Birth       ki0047075b-MAL-ED          PERU                           3             49     210  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+            66      95  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              5      95  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             12      95  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             12      95  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            45     112  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     112  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             28     112  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             30     112  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             5      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             35      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             27      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             19      86  whz              
Birth       ki1000108-IRC              INDIA                          4+            14     341  whz              
Birth       ki1000108-IRC              INDIA                          1            156     341  whz              
Birth       ki1000108-IRC              INDIA                          2            140     341  whz              
Birth       ki1000108-IRC              INDIA                          3             31     341  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+            18     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            388     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     2             79     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     3             47     532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+            90     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            338     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2            181     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3             98     707  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          4+           297     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1             42     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          2            135     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          3            167     641  whz              
Birth       ki1114097-CONTENT          PERU                           4+             1       2  whz              
Birth       ki1114097-CONTENT          PERU                           1              0       2  whz              
Birth       ki1114097-CONTENT          PERU                           2              1       2  whz              
Birth       ki1114097-CONTENT          PERU                           3              0       2  whz              
Birth       ki1135781-COHORTS          INDIA                          4+            90    4454  whz              
Birth       ki1135781-COHORTS          INDIA                          1           2879    4454  whz              
Birth       ki1135781-COHORTS          INDIA                          2           1328    4454  whz              
Birth       ki1135781-COHORTS          INDIA                          3            157    4454  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+           662   17989  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          11170   17989  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           4609   17989  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           1548   17989  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+           111    2394  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           1430    2394  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2            610    2394  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3            243    2394  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+            12     240  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            150     240  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     2             50     240  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     3             28     240  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         4+           126     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1              4     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         2             20     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         3             59     209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          4+            25     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          1             84     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          2             78     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          3             48     235  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          4+           131     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          1             52     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          2             31     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          3             22     236  whz              
6 months    ki0047075b-MAL-ED          PERU                           4+           139     270  whz              
6 months    ki0047075b-MAL-ED          PERU                           1             19     270  whz              
6 months    ki0047075b-MAL-ED          PERU                           2             50     270  whz              
6 months    ki0047075b-MAL-ED          PERU                           3             62     270  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+           191     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             21     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     249  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           108     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             13     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             62     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             64     247  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            197     368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            106     368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             51     368  whz              
6 months    ki1000108-IRC              INDIA                          4+            17     406  whz              
6 months    ki1000108-IRC              INDIA                          1            183     406  whz              
6 months    ki1000108-IRC              INDIA                          2            170     406  whz              
6 months    ki1000108-IRC              INDIA                          3             36     406  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+            21     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            430     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     2             94     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     3             58     603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            91     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            339     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            184     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3            101     715  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          4+           268     564  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1             40     564  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          2            115     564  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          3            141     564  whz              
6 months    ki1114097-CONTENT          PERU                           4+            78     215  whz              
6 months    ki1114097-CONTENT          PERU                           1             44     215  whz              
6 months    ki1114097-CONTENT          PERU                           2             54     215  whz              
6 months    ki1114097-CONTENT          PERU                           3             39     215  whz              
6 months    ki1135781-COHORTS          INDIA                          4+            93    4955  whz              
6 months    ki1135781-COHORTS          INDIA                          1           3206    4955  whz              
6 months    ki1135781-COHORTS          INDIA                          2           1474    4955  whz              
6 months    ki1135781-COHORTS          INDIA                          3            182    4955  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           742   16773  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           9611   16773  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           4732   16773  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3           1688   16773  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+           262    4827  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2851    4827  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2           1226    4827  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3            488    4827  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            134     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     2             40     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         4+           104     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         2             16     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         3             49     169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          4+            25     227  whz              
24 months   ki0047075b-MAL-ED          INDIA                          1             82     227  whz              
24 months   ki0047075b-MAL-ED          INDIA                          2             74     227  whz              
24 months   ki0047075b-MAL-ED          INDIA                          3             46     227  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          4+           127     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          1             48     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          2             31     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          3             22     228  whz              
24 months   ki0047075b-MAL-ED          PERU                           4+           110     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           1             16     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           2             32     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           3             43     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           183     238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     238  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            98     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             50     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             57     214  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            201     372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            106     372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             51     372  whz              
24 months   ki1000108-IRC              INDIA                          4+            17     407  whz              
24 months   ki1000108-IRC              INDIA                          1            184     407  whz              
24 months   ki1000108-IRC              INDIA                          2            170     407  whz              
24 months   ki1000108-IRC              INDIA                          3             36     407  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            408     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     2             92     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     3             57     579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            82     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            217     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            137     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78     514  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          4+           231     487  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1             35     487  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          2            106     487  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          3            115     487  whz              
24 months   ki1114097-CONTENT          PERU                           4+            63     164  whz              
24 months   ki1114097-CONTENT          PERU                           1             30     164  whz              
24 months   ki1114097-CONTENT          PERU                           2             39     164  whz              
24 months   ki1114097-CONTENT          PERU                           3             32     164  whz              
24 months   ki1135781-COHORTS          INDIA                          4+            75    3719  whz              
24 months   ki1135781-COHORTS          INDIA                          1           2287    3719  whz              
24 months   ki1135781-COHORTS          INDIA                          2           1207    3719  whz              
24 months   ki1135781-COHORTS          INDIA                          3            150    3719  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           365    8591  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           5036    8591  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2394    8591  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            796    8591  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           251    4730  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2781    4730  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2           1208    4730  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3            490    4730  whz              


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



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/51a707ff-a9f4-47a1-a059-4eded136ed35/c0d091d3-ee01-4223-adb4-1c3dd69c5144/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/51a707ff-a9f4-47a1-a059-4eded136ed35/c0d091d3-ee01-4223-adb4-1c3dd69c5144/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/51a707ff-a9f4-47a1-a059-4eded136ed35/c0d091d3-ee01-4223-adb4-1c3dd69c5144/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.8268280   -1.3210334   -0.3326227
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.9866507   -1.2032986   -0.7700028
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.9742103   -1.2003424   -0.7480782
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.9889804   -1.3827073   -0.5952535
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.2093040   -0.4009942   -0.0176139
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                 0.0125028   -0.5552142    0.5802199
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                -0.0113543   -0.2775507    0.2548422
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                 0.2166179   -0.0063657    0.4396015
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.2287879   -0.5065288    0.0489530
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.6960000   -1.4913352    0.0993352
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.5066667   -0.1807332    1.1940665
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.3275000   -1.1444022    0.4894022
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.8631111    0.5363093    1.1899130
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.9000000    0.3934379    1.4065621
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.4500000    0.0450331    0.8549669
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.8666667    0.5289823    1.2043510
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4160000   -1.4929959    0.6609959
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.5244286   -1.0232807   -0.0255765
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.6155556   -1.1573805   -0.0737306
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.1536842   -0.6942308    0.3868624
Birth       ki1000108-IRC              INDIA                          4+                   NA                -0.8901247   -2.0745605    0.2943110
Birth       ki1000108-IRC              INDIA                          1                    NA                -1.1276730   -1.4193074   -0.8360386
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.8835087   -1.1516110   -0.6154063
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.6367340   -1.3290348    0.0555668
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -1.2948644   -1.7555042   -0.8342246
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2910589   -1.3800420   -1.2020758
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.3025775   -1.5068242   -1.0983308
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -1.3797199   -1.6536857   -1.1057541
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -1.2747969   -1.4935833   -1.0560104
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2389624   -1.3688971   -1.1090276
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -1.1804965   -1.3425102   -1.0184829
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -1.3290036   -1.5710344   -1.0869728
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.1395170   -1.2679145   -1.0111194
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.0995564   -1.4127206   -0.7863921
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.0385503   -1.2273093   -0.8497913
Birth       ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.1900310   -1.3743939   -1.0056681
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.5760734   -0.7176293   -0.4345175
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -1.0268365   -1.0707563   -0.9829167
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.9143001   -0.9853127   -0.8432874
Birth       ki1135781-COHORTS          INDIA                          3                    NA                -0.7669856   -0.9425790   -0.5913922
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.6849152   -0.7661249   -0.6037055
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7904905   -0.8160250   -0.7649559
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.7582031   -0.7955104   -0.7208958
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.7605824   -0.8206215   -0.7005434
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.8061759   -1.0501944   -0.5621574
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6797364   -0.7425606   -0.6169122
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.6757965   -0.7713886   -0.5802045
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.7122966   -0.9174610   -0.5071323
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.2150159   -1.0285507    0.5985190
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2039193   -0.3617393   -0.0460994
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0961038   -0.1920236    0.3842313
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0328754   -0.3980725    0.3323216
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.6859726   -1.0545369   -0.3174083
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.7219924   -0.9300031   -0.5139817
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.7035928   -0.9211476   -0.4860381
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.7160004   -1.0714845   -0.3605163
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.1028715   -0.0736910    0.2794340
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0154523   -0.3067606    0.2758561
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.5730008    0.1675994    0.9784022
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0100937   -0.2809114    0.2607241
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 1.0765272    0.8991546    1.2538998
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.7068658    0.2105254    1.2032061
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                 1.2234500    0.9433671    1.5035330
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                 1.1116871    0.8911187    1.3322555
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.5566932    0.3753018    0.7380847
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4123654    0.0395163    0.7852145
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 1.1015051    0.5304970    1.6725133
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.3962136   -0.0354997    0.8279268
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.5923373    0.4036520    0.7810226
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5156440   -0.1291611    1.1604490
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.5285246    0.2637218    0.7933273
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.4648020    0.1629238    0.7666802
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0774612   -0.7579706    0.6030482
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.7746417   -0.9540332   -0.5952503
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.1695143   -0.5086148    0.1695862
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.1348911   -0.5194827    0.2497004
6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.7176407   -1.4966786    0.0613973
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5360616   -0.7319180   -0.3402051
6 months    ki1000108-IRC              INDIA                          2                    NA                -0.5878221   -0.7919058   -0.3837385
6 months    ki1000108-IRC              INDIA                          3                    NA                -0.7326324   -1.2843403   -0.1809246
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.5439872   -1.0761339   -0.0118405
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2498482   -0.3475880   -0.1521084
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0292597   -0.1667551    0.2252746
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.1349916   -0.4263419    0.1563587
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0163866   -0.2492313    0.2820045
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0242848   -0.1377010    0.0891313
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                 0.0339142   -0.1175369    0.1853653
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.1751902   -0.0384908    0.3888712
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.6145553   -0.7387397   -0.4903709
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.6596001   -0.9981367   -0.3210636
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.6527394   -0.8415177   -0.4639611
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.5903626   -0.7660450   -0.4146801
6 months    ki1114097-CONTENT          PERU                           4+                   NA                 1.1716391    0.9713522    1.3719260
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.9849267    0.6925375    1.2773159
6 months    ki1114097-CONTENT          PERU                           2                    NA                 1.0091609    0.7770161    1.2413056
6 months    ki1114097-CONTENT          PERU                           3                    NA                 1.0415833    0.8105880    1.2725786
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.3004215   -0.4253861   -0.1754570
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.7646375   -0.8064206   -0.7228545
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.6165060   -0.6795383   -0.5534737
6 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.5040878   -0.6452116   -0.3629640
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.4152845   -0.4936531   -0.3369159
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6255321   -0.6512468   -0.5998173
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.5924896   -0.6321089   -0.5528703
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.4739005   -0.5390681   -0.4087329
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.1893356   -0.3975368    0.0188655
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4370795   -0.4843362   -0.3898228
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.3826387   -0.4499888   -0.3152886
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.2537096   -0.3589773   -0.1484418
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.5894556   -1.3648419    0.1859306
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.9289381   -1.0711753   -0.7867009
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.5792496   -0.8904095   -0.2680897
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.7394919   -1.0671876   -0.4117963
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.7980854   -1.2004334   -0.3957373
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.8593067   -1.0465534   -0.6720600
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.9735959   -1.1892272   -0.7579645
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -1.0246346   -1.2680659   -0.7812032
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.3557139   -0.5041916   -0.2072362
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.5145262   -0.7869060   -0.2421464
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.1548096   -0.5327015    0.2230822
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.3748894   -0.6943517   -0.0554272
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.2065751    0.0361362    0.3770139
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.2804765   -0.8217481    0.2607950
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.0185313   -0.2233658    0.2604285
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.0615662   -0.2128815    0.3360140
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.4099435    0.2635994    0.5562876
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.2004861   -0.0852090    0.4861811
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.5719248    0.2106286    0.9332210
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.3302274   -0.0335287    0.6939835
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1237415   -0.0307885    0.2782715
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2522222   -1.1599430    0.6554985
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0032000   -0.2355186    0.2291186
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0356140   -0.2581087    0.3293368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1697079   -0.7066352    0.3672193
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.7243766   -0.8549655   -0.5937877
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.4775920   -0.6868644   -0.2683195
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0775351   -0.3462087    0.1911386
24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.5538444   -1.1103922    0.0027034
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7261219   -0.8590660   -0.5931778
24 months   ki1000108-IRC              INDIA                          2                    NA                -0.7290345   -0.8763427   -0.5817263
24 months   ki1000108-IRC              INDIA                          3                    NA                -0.9295250   -1.2766827   -0.5823672
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.6148994   -1.0909996   -0.1387992
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9629351   -1.0572497   -0.8686206
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.8045971   -1.0114872   -0.5977070
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.6774287   -0.9927653   -0.3620922
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.4390484   -0.7209981   -0.1570987
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.7485729   -0.8798581   -0.6172877
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.6843577   -0.8657791   -0.5029362
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.2708311   -0.5265608   -0.0151013
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.1321757   -1.2636806   -1.0006708
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1939383   -1.5216674   -0.8662092
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.1935086   -1.3808259   -1.0061913
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.1356261   -1.3171860   -0.9540662
24 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.5514245    0.3248833    0.7779657
24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.4473273    0.1579842    0.7366703
24 months   ki1114097-CONTENT          PERU                           2                    NA                 0.5855641    0.3513388    0.8197893
24 months   ki1114097-CONTENT          PERU                           3                    NA                 0.5872993    0.2195904    0.9550082
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.1421861   -0.3028295    0.0184572
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.7802867   -0.8234696   -0.7371037
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.5090125   -0.5696899   -0.4483351
24 months   ki1135781-COHORTS          INDIA                          3                    NA                -0.2941591   -0.4571005   -0.1312178
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.1824857   -1.2866988   -1.0782727
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3048857   -1.3363536   -1.2734178
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.3320437   -1.3801447   -1.2839427
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.2175986   -1.2964353   -1.1387619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.1377848   -1.3213627   -0.9542070
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.2446075   -1.2847573   -1.2044578
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.2166068   -1.2720135   -1.1612001
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.1412399   -1.2475486   -1.0349312


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9728358   -1.1217009   -0.8239707
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0468095   -0.1738806    0.0802616
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7637500    0.5676177    0.9598823
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0053372   -1.1922119   -0.8184626
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9778087   -1.0126530   -0.9429644
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7776536   -0.7966730   -0.7586341
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7102872   -0.8371659   -0.5834085
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0512099    0.9285617    1.1738581
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5404351    0.3867005    0.6941696
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5900821   -0.7252457   -0.4549185
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7088012   -0.7411274   -0.6764750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5930302   -0.6125738   -0.5734865
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7416790   -0.8323562   -0.6510017
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6612799   -0.6944511   -0.6281088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2967966   -1.3200807   -1.2735126
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231776   -1.2550332   -1.1913220


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.1598227   -0.6996662    0.3800208
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.1473823   -0.6911205    0.3963559
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.1621524   -0.7942885    0.4699837
Birth       ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    4+                 0.2218069   -0.3788125    0.8224262
Birth       ki0047075b-MAL-ED          PERU                           2                    4+                 0.1979498   -0.1313193    0.5272188
Birth       ki0047075b-MAL-ED          PERU                           3                    4+                 0.4259219    0.1300712    0.7217726
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.4672121   -1.3096480    0.3752237
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.7354545   -0.0059351    1.4768442
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0987121   -0.9615385    0.7641142
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0368889   -0.5659416    0.6397194
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.4131111   -0.9334933    0.1072711
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0035556   -0.4663701    0.4734813
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.1084286   -1.2953462    1.0784891
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.1995556   -1.4051651    1.0060540
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.2623158   -0.9427198    1.4673514
Birth       ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    4+                -0.2375483   -1.4553387    0.9802421
Birth       ki1000108-IRC              INDIA                          2                    4+                 0.0066161   -1.2082573    1.2214894
Birth       ki1000108-IRC              INDIA                          3                    4+                 0.2533907   -1.1214430    1.6282245
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    4+                 0.0038055   -0.4650721    0.4726831
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0077131   -0.5110784    0.4956522
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0848555   -0.6202036    0.4504926
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                 0.0358345   -0.2190304    0.2906993
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0943003   -0.1783591    0.3669597
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0542068   -0.3805353    0.2721218
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0399606   -0.2984953    0.3784165
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.1009667   -0.1261571    0.3280905
Birth       ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0505140   -0.2753087    0.1742807
Birth       ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    4+                -0.4507630   -0.5989794   -0.3025467
Birth       ki1135781-COHORTS          INDIA                          2                    4+                -0.3382266   -0.4965793   -0.1798739
Birth       ki1135781-COHORTS          INDIA                          3                    4+                -0.1909122   -0.4164435    0.0346192
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.1055752   -0.1904065   -0.0207440
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.0732879   -0.1615213    0.0149455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0756672   -0.1751245    0.0237900
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.1264395   -0.1245027    0.3773817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.1303794   -0.1290562    0.3898150
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0938793   -0.2181860    0.4059446
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.0110965   -0.8169884    0.8391815
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.3111197   -0.5522353    1.1744747
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.1821404   -0.7109576    1.0752385
6 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0360198   -0.4625027    0.3904631
6 months    ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0176203   -0.4485965    0.4133559
6 months    ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0300279   -0.5432698    0.4832141
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1183237   -0.4590450    0.2223975
6 months    ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.4701293    0.0271172    0.9131414
6 months    ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.1129651   -0.4373965    0.2114662
6 months    ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    4+                -0.3696614   -0.8970931    0.1577702
6 months    ki0047075b-MAL-ED          PERU                           2                    4+                 0.1469229   -0.1849150    0.4787607
6 months    ki0047075b-MAL-ED          PERU                           3                    4+                 0.0351599   -0.2480759    0.3183957
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.1443279   -0.5600154    0.2713597
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.5448119   -0.0540516    1.1436753
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.1604797   -0.6290301    0.3080707
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0766933   -0.7471810    0.5937943
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0638128   -0.3904668    0.2628413
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.1275353   -0.4854024    0.2303318
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.6971805   -1.4013497    0.0069886
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0920531   -0.8529857    0.6688795
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0574299   -0.8393649    0.7245051
6 months    ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    4+                 0.1815791   -0.6220350    0.9851933
6 months    ki1000108-IRC              INDIA                          2                    4+                 0.1298186   -0.6757904    0.9354275
6 months    ki1000108-IRC              INDIA                          3                    4+                -0.0149917   -0.9695200    0.9395365
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    4+                 0.2941390   -0.2463212    0.8345993
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    4+                 0.5732469    0.0063923    1.1401016
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.4089956   -0.1974042    1.0153955
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0406714   -0.3294169    0.2480741
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0175276   -0.2878639    0.3229191
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1588036   -0.1819429    0.4995500
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0450449   -0.4056266    0.3155369
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0381841   -0.2640450    0.1876768
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0241927   -0.1904687    0.2388542
6 months    ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    4+                -0.1867124   -0.5413163    0.1678915
6 months    ki1114097-CONTENT          PERU                           2                    4+                -0.1624783   -0.4693421    0.1443856
6 months    ki1114097-CONTENT          PERU                           3                    4+                -0.1300558   -0.4360721    0.1759604
6 months    ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    4+                -0.4642160   -0.5959775   -0.3324545
6 months    ki1135781-COHORTS          INDIA                          2                    4+                -0.3160845   -0.4560776   -0.1760913
6 months    ki1135781-COHORTS          INDIA                          3                    4+                -0.2036663   -0.3921649   -0.0151676
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.2102476   -0.2917451   -0.1287501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.1772051   -0.2650253   -0.0893850
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0586160   -0.1608154    0.0435835
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.2477439   -0.4614266   -0.0340612
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.1933031   -0.4113793    0.0247731
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0643739   -0.2903455    0.1615977
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.3394825   -1.1279616    0.4489967
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.0102060   -0.8254256    0.8458377
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.1500363   -0.9921524    0.6920798
24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0612213   -0.5064266    0.3839839
24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.1755105   -0.6337507    0.2827297
24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                -0.2265492   -0.6956950    0.2425967
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1588123   -0.4697965    0.1521719
24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.2009042   -0.2087338    0.6105423
24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0191756   -0.3696090    0.3312579
24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.4870516   -1.0552516    0.0811485
24 months   ki0047075b-MAL-ED          PERU                           2                    4+                -0.1880437   -0.4842074    0.1081200
24 months   ki0047075b-MAL-ED          PERU                           3                    4+                -0.1450088   -0.4693750    0.1793573
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.2094574   -0.5310253    0.1121104
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.1619813   -0.2277022    0.5516648
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0797161   -0.4718648    0.3124326
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.3759637   -1.2967441    0.5448166
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1269415   -0.4059602    0.1520772
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0881275   -0.4200199    0.2437649
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.5546686   -1.1066372   -0.0027001
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.3078840   -0.8842394    0.2684714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0921729   -0.5085360    0.6928817
24 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    4+                -0.1722775   -0.7440792    0.3995243
24 months   ki1000108-IRC              INDIA                          2                    4+                -0.1751901   -0.7518207    0.4014406
24 months   ki1000108-IRC              INDIA                          3                    4+                -0.3756805   -1.0324894    0.2811283
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.3480357   -0.8329586    0.1368872
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.1896977   -0.7083469    0.3289515
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0625293   -0.6330572    0.5079986
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.3095245   -0.6206685    0.0016195
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.2453093   -0.5805311    0.0899126
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1682173   -0.2107971    0.5472318
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0617626   -0.4139670    0.2904418
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0613329   -0.2904473    0.1677815
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0034504   -0.2277728    0.2208720
24 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    4+                -0.1040972   -0.4703187    0.2621242
24 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0341396   -0.2928503    0.3611295
24 months   ki1114097-CONTENT          PERU                           3                    4+                 0.0358748   -0.3903844    0.4621341
24 months   ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    4+                -0.6381005   -0.8043825   -0.4718186
24 months   ki1135781-COHORTS          INDIA                          2                    4+                -0.3668264   -0.5384349   -0.1952179
24 months   ki1135781-COHORTS          INDIA                          3                    4+                -0.1519730   -0.3806544    0.0767085
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.1224000   -0.2305022   -0.0142977
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.1495580   -0.2644151   -0.0347009
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.0351129   -0.1680768    0.0978510
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.1068227   -0.2946609    0.0810155
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0788220   -0.2682743    0.1106304
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0034551   -0.2073319    0.2004217


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.1460078   -0.6340591    0.3420435
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                 0.1624945    0.0319009    0.2930882
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0558405   -0.1182633    0.2299443
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0993611   -0.3431773    0.1444551
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0488256   -1.1046396    1.0069884
Birth       ki1000108-IRC              INDIA                          4+                   NA                -0.1152125   -1.2687834    1.0383583
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0035942   -0.4557545    0.4485660
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0306455   -0.1787589    0.2400499
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0230739   -0.0711712    0.1173191
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.4017353   -0.5433732   -0.2600974
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0927384   -0.1723995   -0.0130772
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.1179261   -0.1178976    0.3537499
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0816825   -0.7048121    0.8681771
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0243147   -0.3821671    0.3335378
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0075593   -0.1116965    0.1268152
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0253173   -0.1461113    0.0954767
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0162582   -0.0948386    0.0623222
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0561160   -0.2069112    0.0946792
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4252154   -1.0997237    0.2492929
6 months    ki1000108-IRC              INDIA                          4+                   NA                 0.1275586   -0.6355897    0.8907069
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.3448965   -0.1763380    0.8661311
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0133756   -0.2316872    0.2584385
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0107137   -0.0799067    0.1013340
6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.1032073   -0.2626593    0.0562446
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.4083797   -0.5340056   -0.2827538
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.1777457   -0.2551047   -0.1003866
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.2008239   -0.4008030   -0.0008448
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.2298368   -0.9748478    0.5151742
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.1535666   -0.5319693    0.2248361
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0191984   -0.1241205    0.0857238
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0953769   -0.2070408    0.0162870
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0009134   -0.0578203    0.0559935
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0689440   -0.2018628    0.0639748
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3874426   -0.9172923    0.1424070
24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.1878345   -0.7302916    0.3546226
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.2779676   -0.7442358    0.1883006
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.1713018   -0.4242923    0.0816887
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0041350   -0.0983612    0.0900912
24 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0154048   -0.1585027    0.1893123
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.5190938   -0.6785623   -0.3596253
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.1143109   -0.2179387   -0.0106831
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0853928   -0.2606198    0.0898343
