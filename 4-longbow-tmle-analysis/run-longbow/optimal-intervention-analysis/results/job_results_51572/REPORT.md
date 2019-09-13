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
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+            12     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            135     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             47     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             28     222
Birth       ki0047075b-MAL-ED          BRAZIL                         4+            99     167
Birth       ki0047075b-MAL-ED          BRAZIL                         1              3     167
Birth       ki0047075b-MAL-ED          BRAZIL                         2             19     167
Birth       ki0047075b-MAL-ED          BRAZIL                         3             46     167
Birth       ki0047075b-MAL-ED          INDIA                          4+            22     188
Birth       ki0047075b-MAL-ED          INDIA                          1             68     188
Birth       ki0047075b-MAL-ED          INDIA                          2             66     188
Birth       ki0047075b-MAL-ED          INDIA                          3             32     188
Birth       ki0047075b-MAL-ED          NEPAL                          4+            94     166
Birth       ki0047075b-MAL-ED          NEPAL                          1             34     166
Birth       ki0047075b-MAL-ED          NEPAL                          2             21     166
Birth       ki0047075b-MAL-ED          NEPAL                          3             17     166
Birth       ki0047075b-MAL-ED          PERU                           4+           127     252
Birth       ki0047075b-MAL-ED          PERU                           1             17     252
Birth       ki0047075b-MAL-ED          PERU                           2             51     252
Birth       ki0047075b-MAL-ED          PERU                           3             57     252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+           159     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             20     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            54     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             23     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             31     114
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             5      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             39      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             26      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             18      88
Birth       ki1000108-IRC              INDIA                          4+            14     341
Birth       ki1000108-IRC              INDIA                          1            156     341
Birth       ki1000108-IRC              INDIA                          2            140     341
Birth       ki1000108-IRC              INDIA                          3             31     341
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             15      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              0      23
Birth       ki1114097-CONTENT          PERU                           4+             1       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1114097-CONTENT          PERU                           2              1       2
Birth       ki1114097-CONTENT          PERU                           3              0       2
Birth       ki1135781-COHORTS          INDIA                          4+            90    4454
Birth       ki1135781-COHORTS          INDIA                          1           2879    4454
Birth       ki1135781-COHORTS          INDIA                          2           1328    4454
Birth       ki1135781-COHORTS          INDIA                          3            157    4454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+           505   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           9890   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           4027   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           1264   15686
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+            19     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            426     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2            170     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             68     683
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+            21     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            414     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2             91     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3             56     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            91     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            339     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3            101     715
6 months    ki1113344-GMS-Nepal        NEPAL                          4+           267     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1             40     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2            115     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3            141     563
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            407     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2             92     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3             57     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            82     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            217     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            137     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78     514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+           237     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1             36     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2            108     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3            117     498
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/611ff15b-4f72-48f3-8829-7c045a01c263/02ae0251-68d1-43a5-88da-3d11adacc8bd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1369250   -1.5426616   -0.7311885
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0441708   -1.4357324   -0.6526092
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9499909   -1.2754620   -0.6245199
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2326090    0.0314204    0.4337977
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4054748   -0.1626075    0.9735571
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0700002    0.7150000    1.4250004
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5556529   -1.4131464    0.3018406
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.8687974   -1.4927596   -0.2448353
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7405278   -0.8837654   -0.5972902
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6170741   -0.7004189   -0.5337293
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2346991   -0.6513220    0.1819239
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0144462   -0.2634635    0.2923559
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9528755   -1.2773600   -0.6283910
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4945821    0.0954492    0.8937149
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0798241    0.8203408    1.3393075
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.8956565    0.2620283    1.5292848
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3499030   -0.0035923    0.7033984
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6483357   -1.1067127   -0.1899588
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5862169   -0.8800824   -0.2923514
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0300715   -0.2530556    0.1929126
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2341487    0.0108739    0.4574234
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.6348643   -0.8075604   -0.4621682
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.1501729    0.9472435    1.3531024
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2640952   -0.3928341   -0.1353563
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5460281   -0.6134223   -0.4786339
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2421609   -0.4412902   -0.0430317
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8909824   -1.5721406   -0.2098241
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0803915   -1.4144239   -0.7463591
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0316368   -0.3637527    0.3004791
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2184541    0.0484524    0.3884559
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5243472    0.2347656    0.8139288
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1228414   -0.0332145    0.2788973
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3752332   -0.7777017    0.0272354
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7691423   -1.2512427   -0.2870419
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6041460   -1.0418922   -0.1663998
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2707049   -0.5302025   -0.0112072
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2202929   -1.4958126   -0.9447732
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.8527670    0.4912163    1.2143177
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.2118597   -0.3750137   -0.0487056
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1997890   -1.2775687   -1.1220093
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2407620   -1.4032445   -1.0782796


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9902252   -1.1311070   -0.8493435
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0536702   -1.1965043   -0.9108361
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9174699   -1.0573845   -0.7775553
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0384921   -0.1542085    0.0772244
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0073148   -0.1632037    0.1485740
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.8024561    0.5990025    1.0059098
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0053372   -1.1922119   -0.8184626
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9778087   -1.0126530   -0.9429644
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7238563   -0.7437124   -0.7040002
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1354618   -0.2647919   -0.0061317
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7056667   -0.8312524   -0.5800810
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0527407    0.9299728    1.1755087
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5403280    0.3866002    0.6940558
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5900821   -0.7252457   -0.4549185
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6047987   -0.6909649   -0.5186325
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7088012   -0.7411274   -0.6764750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5930302   -0.6125738   -0.5734865
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7416790   -0.8323562   -0.6510017
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1315863   -1.2192240   -1.0439487
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6612799   -0.6944511   -0.6281088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2967966   -1.3200807   -1.2735126
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231776   -1.2550332   -1.1913220


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1466998   -0.2615076    0.5549073
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0094994   -0.3780837    0.3590849
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0325210   -0.2805472    0.3455893
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2711011   -0.4596500   -0.0825522
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4127896   -0.9567903    0.1312110
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2675440   -0.6162983    0.0812103
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0718471   -0.9067426    0.7630484
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1365398   -0.7471912    0.4741115
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2372809   -0.3804897   -0.0940720
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1067822   -0.1893928   -0.0241716
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1336172   -0.5474706    0.2802362
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1499080   -0.4007601    0.1009440
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.2472088   -0.0537765    0.5481942
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3835369   -0.7512639   -0.0158098
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0270834   -0.2636858    0.2095190
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3553286   -0.9623854    0.2517283
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1671483   -0.1667552    0.5010517
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1456591   -0.2882885    0.5796067
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0038652   -0.2837825    0.2760521
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1782990   -0.3854705    0.0288724
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2043864   -0.4126949    0.0039220
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0300656   -0.1187146    0.1788457
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.0817411   -0.2434069    0.0799246
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4447060   -0.5739189   -0.3154931
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0470021   -0.1125805    0.0185764
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1479986   -0.3374805    0.0414833
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0701569   -0.5832385    0.7235523
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1281008   -0.1701510    0.4263525
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3448106   -0.6534631   -0.0361581
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0985536   -0.2205909    0.0234836
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0976455   -0.3882412    0.1929502
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0727479   -0.2065194    0.0610236
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1819174   -0.5698313    0.2059966
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0274633   -0.4423644    0.4972911
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2837952   -0.7123530    0.1447627
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3396453   -0.5784144   -0.1008763
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0887065   -0.1734311    0.3508442
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.2859377   -0.5958220    0.0239466
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4494202   -0.6111379   -0.2877025
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0970077   -0.1722584   -0.0217570
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0175844   -0.1355250    0.1706938
