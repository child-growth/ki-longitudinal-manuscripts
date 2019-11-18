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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+           755   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          13942   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           5846   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           1886   22429
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           744   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           9625   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           4740   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3           1691   16800
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           367    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           5051    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2400    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            802    8620
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







# Results Detail

## Results Plots
![](/tmp/1bc859d2-f308-420d-a66c-e098e43cd22a/1f23c103-9ef8-4b74-9297-463330ceb74a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5073425   -1.0976627    0.0829777
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0214351   -1.2323052   -0.8105650
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2135351   -0.7291226    0.3020524
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2823119   -1.8559204   -0.7087034
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.4422996   -1.9932363   -0.8913630
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.1794528   -0.7008873    1.0597928
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0207861   -1.2591326   -0.7824396
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9632318   -1.1516652   -0.7747985
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.9944128   -1.1196044   -0.8692211
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6382579   -0.8070130   -0.4695028
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3390713   -1.4021610   -1.2759815
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3520334   -1.5064715   -1.1975952
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3469999   -1.7222542   -0.9717455
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1602017   -1.4132476   -0.9071559
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6756629   -0.8488905   -0.5024352
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3265161   -1.5941047   -1.0589275
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8933302   -1.2866561   -0.5000042
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4723995   -1.8053406   -1.1394584
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1691009   -1.7631308   -0.5750709
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1916468   -1.7128935   -0.6704000
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0876042   -1.3591801   -0.8160283
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9587223   -1.1507158   -0.7667288
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.4541516   -1.5943111   -1.3139920
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.0157444   -0.3692169    0.4007057
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8577604   -0.9798239   -0.7356970
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0361547   -1.1121482   -0.9601612
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1199745   -1.2585485   -0.9814006
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4682774   -1.9457812   -0.9907736
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7635223   -1.9787715   -1.5482731
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.3705513   -1.7299537   -1.0111489
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6658397   -1.9333197   -1.3983597
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.1750630   -1.6589599   -0.6911661
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.7467691   -3.8324952   -1.6610430
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.2483220   -2.6965910   -1.8000531
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6613701   -1.8047626   -1.5179775
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9573759   -1.4405554   -0.4741963
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0736828   -1.2776911   -0.8696744
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8503368   -1.9831844   -1.7174892
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.8728894   -1.2043159   -0.5414628
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.3754624   -1.5486374   -1.2022874
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.7792527   -1.8904156   -1.6680897
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3992755   -1.5585722   -1.2399787


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5898426   -1.6091216   -1.5705636
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2026806   -1.3203025   -1.0850586
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2070638   -1.3255909   -1.0885368
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3248549   -1.4336721   -1.2160378
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0547925   -1.1843544   -0.9252306
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2470123   -1.3779341   -1.1160906
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0413281   -1.0740395   -1.0086167
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3132988   -1.3364412   -1.2901565
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.8014906   -1.8952579   -1.7077232
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CONTENT          PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.2131714   -2.2523749   -2.1739679
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0137471   -2.0414306   -1.9860636
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7803708   -1.8158650   -1.7448765


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5457091   -1.1163233    0.0249051
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1072955   -0.0674912    0.2820822
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3388607   -0.8807366    0.2030151
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1598119   -0.3890385    0.7086623
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.4811040   -0.0421862    1.0043941
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.4873543   -1.3382113    0.3635027
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1356841   -0.0951156    0.3664837
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0537373   -0.1228556    0.2303301
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0907453   -0.1840663    0.0025757
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0395047   -0.2057188    0.1267093
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2507713   -0.3131236   -0.1884190
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1715801   -0.3200657   -0.0230946
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1443193   -0.2280770    0.5167156
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0468621   -0.2910389    0.1973147
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1140810   -0.0317920    0.2599539
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0016612   -0.2364634    0.2397858
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1614623   -0.5398610    0.2169363
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1036545   -0.2063949    0.4137040
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2543499   -0.8346609    0.3259611
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0553656   -0.5530708    0.4423397
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0040873   -0.2705322    0.2623576
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2399560   -0.4191412   -0.0607707
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1033123   -0.0155368    0.2221615
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.3296661   -0.6703972    0.0110650
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1835676   -0.3056195   -0.0615158
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2771441   -0.3528265   -0.2014616
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2240731   -0.3586180   -0.0895282
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5101188   -0.9824210   -0.0378166
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1226672   -0.2911278    0.0457935
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0629636   -0.2690745    0.3950016
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0866313   -0.3327289    0.1594663
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4699965   -0.9371937   -0.0027994
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1012083   -0.9468461    1.1492627
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3105459   -0.7556657    0.1345740
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1401205   -0.2510568   -0.0291842
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6450463   -1.1174020   -0.1726905
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3675818   -0.5603942   -0.1747694
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0370812   -0.1384700    0.0643075
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.1766698   -0.1042980    0.4576377
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.8377090   -1.0102194   -0.6651986
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2344944   -0.3396968   -0.1292920
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3810953   -0.5340682   -0.2281223
