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
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+            12     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            130     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             46     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             25     213
Birth       ki0047075b-MAL-ED          BRAZIL                         4+            30      60
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0      60
Birth       ki0047075b-MAL-ED          BRAZIL                         2             10      60
Birth       ki0047075b-MAL-ED          BRAZIL                         3             20      60
Birth       ki0047075b-MAL-ED          INDIA                          4+             2      41
Birth       ki0047075b-MAL-ED          INDIA                          1             18      41
Birth       ki0047075b-MAL-ED          INDIA                          2             17      41
Birth       ki0047075b-MAL-ED          INDIA                          3              4      41
Birth       ki0047075b-MAL-ED          NEPAL                          4+            15      26
Birth       ki0047075b-MAL-ED          NEPAL                          1              7      26
Birth       ki0047075b-MAL-ED          NEPAL                          2              2      26
Birth       ki0047075b-MAL-ED          NEPAL                          3              2      26
Birth       ki0047075b-MAL-ED          PERU                           4+           107     215
Birth       ki0047075b-MAL-ED          PERU                           1             13     215
Birth       ki0047075b-MAL-ED          PERU                           2             45     215
Birth       ki0047075b-MAL-ED          PERU                           3             50     215
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+            67      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              5      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             12      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             12      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            49     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             31     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             31     120
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             5      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             38      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             29      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             20      92
Birth       ki1000108-IRC              INDIA                          4+            17     386
Birth       ki1000108-IRC              INDIA                          1            175     386
Birth       ki1000108-IRC              INDIA                          2            161     386
Birth       ki1000108-IRC              INDIA                          3             33     386
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+            19     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            390     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2             83     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     3             47     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+            93     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            353     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2            187     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3             99     732
Birth       ki1113344-GMS-Nepal        NEPAL                          4+           321     696
Birth       ki1113344-GMS-Nepal        NEPAL                          1             49     696
Birth       ki1113344-GMS-Nepal        NEPAL                          2            145     696
Birth       ki1113344-GMS-Nepal        NEPAL                          3            181     696
Birth       ki1114097-CONTENT          PERU                           4+             1       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1114097-CONTENT          PERU                           2              1       2
Birth       ki1114097-CONTENT          PERU                           3              0       2
Birth       ki1135781-COHORTS          INDIA                          4+            92    4769
Birth       ki1135781-COHORTS          INDIA                          1           3125    4769
Birth       ki1135781-COHORTS          INDIA                          2           1385    4769
Birth       ki1135781-COHORTS          INDIA                          3            167    4769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+          1104   26638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          15827   26638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           7166   26638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           2541   26638
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+           128    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           1705    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2            709    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3            278    2820
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            198     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            106     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             51     369
6 months    ki1000108-IRC              INDIA                          4+            17     405
6 months    ki1000108-IRC              INDIA                          1            183     405
6 months    ki1000108-IRC              INDIA                          2            170     405
6 months    ki1000108-IRC              INDIA                          3             35     405
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+            21     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            431     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2             94     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     3             58     604
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
6 months    ki1135781-COHORTS          INDIA                          4+            93    4962
6 months    ki1135781-COHORTS          INDIA                          1           3213    4962
6 months    ki1135781-COHORTS          INDIA                          2           1474    4962
6 months    ki1135781-COHORTS          INDIA                          3            182    4962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           739   16742
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           9598   16742
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           4717   16742
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3           1688   16742
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+           262    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2850    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2           1225    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3            488    4825
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            201     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            105     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             51     371
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
24 months   ki1113344-GMS-Nepal        NEPAL                          4+           231     488
24 months   ki1113344-GMS-Nepal        NEPAL                          1             35     488
24 months   ki1113344-GMS-Nepal        NEPAL                          2            106     488
24 months   ki1113344-GMS-Nepal        NEPAL                          3            116     488
24 months   ki1114097-CONTENT          PERU                           4+            63     164
24 months   ki1114097-CONTENT          PERU                           1             30     164
24 months   ki1114097-CONTENT          PERU                           2             39     164
24 months   ki1114097-CONTENT          PERU                           3             32     164
24 months   ki1135781-COHORTS          INDIA                          4+            76    3746
24 months   ki1135781-COHORTS          INDIA                          1           2299    3746
24 months   ki1135781-COHORTS          INDIA                          2           1221    3746
24 months   ki1135781-COHORTS          INDIA                          3            150    3746
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           364    8553
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           5013    8553
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2382    8553
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            794    8553
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           251    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2789    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2           1216    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3            491    4747


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
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/16ea507a-cd32-420f-b0f3-1efe36bf4b67/220432e3-64fa-4c6b-8d98-73afa324d8df/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5268400   -1.1774592    0.1237793
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.7892218   -1.0129804   -0.5654633
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2149914   -0.5448320    0.1148491
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0431264   -1.5768060   -0.5094467
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3739514   -1.8956397   -0.8522630
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0299894   -0.6485654    0.7085441
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9945591   -1.2357872   -0.7533310
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8947883   -1.1038318   -0.6857448
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1286988   -1.2992372   -0.9581603
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6265978   -0.7191399   -0.5340558
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9511179   -1.0145101   -0.8877256
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4458345   -1.5821615   -1.3095074
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1797514   -1.6588806   -0.7006223
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0748510   -1.3628620   -0.7868400
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5059949   -0.7518907   -0.2600991
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.4190702   -1.6990877   -1.1390527
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.7664632   -1.1699178   -0.3630085
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.5085801   -1.8136640   -1.2034963
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1355065   -1.7138507   -0.5571624
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.2553039   -1.8251433   -0.6854645
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9646005   -1.2983366   -0.6308644
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9644726   -1.1828351   -0.7461100
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2240268   -1.4248753   -1.0231782
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.7610132   -1.1280407   -0.3939857
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9174724   -0.9932149   -0.8417299
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3268217   -1.3789654   -1.2746779
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2876279   -1.4185908   -1.1566651
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4907914   -1.9740685   -1.0075144
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7079115   -1.9263674   -1.4894556
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1459430   -1.4716880   -0.8201980
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.8938814   -2.1299688   -1.6577940
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.1822768   -1.6823721   -0.6821816
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6140656   -3.4320173   -1.7961139
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.2059412   -2.5937567   -1.8181258
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6631105   -1.8067333   -1.5194877
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9806614   -1.4684939   -0.4928288
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0607922   -1.2824313   -0.8391531
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8486382   -1.9997981   -1.6974783
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -1.0136621   -1.3616148   -0.6657093
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.1778344   -1.3155394   -1.0401294
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -2.0091117   -2.0846643   -1.9335590
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.6823035   -1.7942135   -1.5703935


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0530516   -1.1896058   -0.9164975
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9141395   -1.0364098   -0.7918693
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.5523958   -0.7550074   -0.3497843
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1225000   -1.3335666   -0.9114334
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3079016   -0.4694769   -0.1463262
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6777626   -0.7107167   -0.6448086
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1730044   -1.2010793   -1.1449294
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2031806   -1.3209873   -1.0853738
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2069078   -1.3255669   -1.0882487
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3293333   -1.4383829   -1.2202838
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0554016   -1.1850591   -0.9257441
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2470123   -1.3779341   -1.1160906
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0413281   -1.0740395   -1.0086167
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3357956   -1.3588816   -1.3127096
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6451636   -2.7802323   -2.5100948
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.8014906   -1.8952579   -1.7077232
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CONTENT          PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.2131714   -2.2523749   -2.1739679
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0196832   -2.0473250   -1.9920413
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7803708   -1.8158650   -1.7448765


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5262117   -1.1582071    0.1057837
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1249177   -0.3363813    0.0865459
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3374044   -0.7126992    0.0378904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0793736   -0.6188796    0.4601323
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.4127557   -0.0835238    0.9090353
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.3378909   -0.9978587    0.3220769
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1094571   -0.1253647    0.3442788
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0147062   -0.2100931    0.1806807
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0435407   -0.1115816    0.1986630
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0511648   -0.1373723    0.0350427
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2218865   -0.2836856   -0.1600874
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0777790   -0.2127285    0.0571705
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0234291   -0.4914742    0.4446160
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1320568   -0.4090739    0.1449602
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0550644   -0.2815171    0.1713883
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0897369   -0.1564374    0.3359113
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2889384   -0.6779232    0.1000463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1398352   -0.1416470    0.4213174
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2879442   -0.8526408    0.2767524
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0082916   -0.5371373    0.5537204
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1270910   -0.4573620    0.2031800
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2342058   -0.4402113   -0.0282002
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1268125   -0.3070427    0.0534178
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.4470915    0.1033105    0.7908724
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1238557   -0.2000901   -0.0476212
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0089740   -0.0576827    0.0397348
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0564197   -0.1801582    0.0673187
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4881237   -0.9654542   -0.0107932
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1769343   -0.3510896   -0.0027790
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1659210   -0.4666787    0.1348366
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1394038   -0.0765338    0.3553413
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4669038   -0.9496227    0.0158150
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0310979   -0.8169178    0.7547219
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3529267   -0.7396563    0.0338028
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1383801   -0.2496551   -0.0271050
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6217608   -1.0988679   -0.1446536
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3804724   -0.5903248   -0.1706200
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0387798   -0.1652841    0.0877245
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.3174426    0.0167359    0.6181493
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.0353370   -1.1741723   -0.8965017
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0105715   -0.0808227    0.0596798
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0980673   -0.2038384    0.0077039
