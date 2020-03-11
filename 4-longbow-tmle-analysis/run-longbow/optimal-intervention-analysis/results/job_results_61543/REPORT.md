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

agecat      studyid          country                        nrooms    n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          4+             5      92
Birth       CMC-V-BCS-2002   INDIA                          1             38      92
Birth       CMC-V-BCS-2002   INDIA                          2             29      92
Birth       CMC-V-BCS-2002   INDIA                          3             20      92
Birth       COHORTS          INDIA                          4+            92    4769
Birth       COHORTS          INDIA                          1           3125    4769
Birth       COHORTS          INDIA                          2           1385    4769
Birth       COHORTS          INDIA                          3            167    4769
Birth       CONTENT          PERU                           4+             1       2
Birth       CONTENT          PERU                           1              0       2
Birth       CONTENT          PERU                           2              1       2
Birth       CONTENT          PERU                           3              0       2
Birth       GMS-Nepal        NEPAL                          4+           321     696
Birth       GMS-Nepal        NEPAL                          1             49     696
Birth       GMS-Nepal        NEPAL                          2            145     696
Birth       GMS-Nepal        NEPAL                          3            181     696
Birth       IRC              INDIA                          4+            17     386
Birth       IRC              INDIA                          1            175     386
Birth       IRC              INDIA                          2            161     386
Birth       IRC              INDIA                          3             33     386
Birth       JiVitA-3         BANGLADESH                     4+           755   22429
Birth       JiVitA-3         BANGLADESH                     1          13942   22429
Birth       JiVitA-3         BANGLADESH                     2           5846   22429
Birth       JiVitA-3         BANGLADESH                     3           1886   22429
Birth       JiVitA-4         BANGLADESH                     4+           128    2820
Birth       JiVitA-4         BANGLADESH                     1           1705    2820
Birth       JiVitA-4         BANGLADESH                     2            709    2820
Birth       JiVitA-4         BANGLADESH                     3            278    2820
Birth       MAL-ED           BANGLADESH                     4+            12     213
Birth       MAL-ED           BANGLADESH                     1            130     213
Birth       MAL-ED           BANGLADESH                     2             46     213
Birth       MAL-ED           BANGLADESH                     3             25     213
Birth       MAL-ED           BRAZIL                         4+            30      60
Birth       MAL-ED           BRAZIL                         1              0      60
Birth       MAL-ED           BRAZIL                         2             10      60
Birth       MAL-ED           BRAZIL                         3             20      60
Birth       MAL-ED           INDIA                          4+             2      41
Birth       MAL-ED           INDIA                          1             18      41
Birth       MAL-ED           INDIA                          2             17      41
Birth       MAL-ED           INDIA                          3              4      41
Birth       MAL-ED           NEPAL                          4+            15      26
Birth       MAL-ED           NEPAL                          1              7      26
Birth       MAL-ED           NEPAL                          2              2      26
Birth       MAL-ED           NEPAL                          3              2      26
Birth       MAL-ED           PERU                           4+           107     215
Birth       MAL-ED           PERU                           1             13     215
Birth       MAL-ED           PERU                           2             45     215
Birth       MAL-ED           PERU                           3             50     215
Birth       MAL-ED           SOUTH AFRICA                   4+            67      96
Birth       MAL-ED           SOUTH AFRICA                   1              5      96
Birth       MAL-ED           SOUTH AFRICA                   2             12      96
Birth       MAL-ED           SOUTH AFRICA                   3             12      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            49     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             31     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             31     120
Birth       NIH-Crypto       BANGLADESH                     4+            93     732
Birth       NIH-Crypto       BANGLADESH                     1            353     732
Birth       NIH-Crypto       BANGLADESH                     2            187     732
Birth       NIH-Crypto       BANGLADESH                     3             99     732
Birth       PROVIDE          BANGLADESH                     4+            19     539
Birth       PROVIDE          BANGLADESH                     1            390     539
Birth       PROVIDE          BANGLADESH                     2             83     539
Birth       PROVIDE          BANGLADESH                     3             47     539
6 months    CMC-V-BCS-2002   INDIA                          4+            14     369
6 months    CMC-V-BCS-2002   INDIA                          1            198     369
6 months    CMC-V-BCS-2002   INDIA                          2            106     369
6 months    CMC-V-BCS-2002   INDIA                          3             51     369
6 months    COHORTS          INDIA                          4+            93    4962
6 months    COHORTS          INDIA                          1           3213    4962
6 months    COHORTS          INDIA                          2           1474    4962
6 months    COHORTS          INDIA                          3            182    4962
6 months    CONTENT          PERU                           4+            78     215
6 months    CONTENT          PERU                           1             44     215
6 months    CONTENT          PERU                           2             54     215
6 months    CONTENT          PERU                           3             39     215
6 months    GMS-Nepal        NEPAL                          4+           268     564
6 months    GMS-Nepal        NEPAL                          1             40     564
6 months    GMS-Nepal        NEPAL                          2            115     564
6 months    GMS-Nepal        NEPAL                          3            141     564
6 months    IRC              INDIA                          4+            17     405
6 months    IRC              INDIA                          1            183     405
6 months    IRC              INDIA                          2            170     405
6 months    IRC              INDIA                          3             35     405
6 months    JiVitA-3         BANGLADESH                     4+           744   16800
6 months    JiVitA-3         BANGLADESH                     1           9625   16800
6 months    JiVitA-3         BANGLADESH                     2           4740   16800
6 months    JiVitA-3         BANGLADESH                     3           1691   16800
6 months    JiVitA-4         BANGLADESH                     4+           262    4825
6 months    JiVitA-4         BANGLADESH                     1           2850    4825
6 months    JiVitA-4         BANGLADESH                     2           1225    4825
6 months    JiVitA-4         BANGLADESH                     3            488    4825
6 months    MAL-ED           BANGLADESH                     4+            12     240
6 months    MAL-ED           BANGLADESH                     1            150     240
6 months    MAL-ED           BANGLADESH                     2             50     240
6 months    MAL-ED           BANGLADESH                     3             28     240
6 months    MAL-ED           BRAZIL                         4+           126     209
6 months    MAL-ED           BRAZIL                         1              4     209
6 months    MAL-ED           BRAZIL                         2             20     209
6 months    MAL-ED           BRAZIL                         3             59     209
6 months    MAL-ED           INDIA                          4+            25     235
6 months    MAL-ED           INDIA                          1             84     235
6 months    MAL-ED           INDIA                          2             78     235
6 months    MAL-ED           INDIA                          3             48     235
6 months    MAL-ED           NEPAL                          4+           131     236
6 months    MAL-ED           NEPAL                          1             52     236
6 months    MAL-ED           NEPAL                          2             31     236
6 months    MAL-ED           NEPAL                          3             22     236
6 months    MAL-ED           PERU                           4+           139     270
6 months    MAL-ED           PERU                           1             19     270
6 months    MAL-ED           PERU                           2             50     270
6 months    MAL-ED           PERU                           3             62     270
6 months    MAL-ED           SOUTH AFRICA                   4+           191     249
6 months    MAL-ED           SOUTH AFRICA                   1             14     249
6 months    MAL-ED           SOUTH AFRICA                   2             21     249
6 months    MAL-ED           SOUTH AFRICA                   3             23     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           108     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             13     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             62     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             64     247
6 months    NIH-Crypto       BANGLADESH                     4+            91     715
6 months    NIH-Crypto       BANGLADESH                     1            339     715
6 months    NIH-Crypto       BANGLADESH                     2            184     715
6 months    NIH-Crypto       BANGLADESH                     3            101     715
6 months    PROVIDE          BANGLADESH                     4+            21     604
6 months    PROVIDE          BANGLADESH                     1            431     604
6 months    PROVIDE          BANGLADESH                     2             94     604
6 months    PROVIDE          BANGLADESH                     3             58     604
24 months   CMC-V-BCS-2002   INDIA                          4+            14     371
24 months   CMC-V-BCS-2002   INDIA                          1            201     371
24 months   CMC-V-BCS-2002   INDIA                          2            105     371
24 months   CMC-V-BCS-2002   INDIA                          3             51     371
24 months   COHORTS          INDIA                          4+            76    3746
24 months   COHORTS          INDIA                          1           2299    3746
24 months   COHORTS          INDIA                          2           1221    3746
24 months   COHORTS          INDIA                          3            150    3746
24 months   CONTENT          PERU                           4+            63     164
24 months   CONTENT          PERU                           1             30     164
24 months   CONTENT          PERU                           2             39     164
24 months   CONTENT          PERU                           3             32     164
24 months   GMS-Nepal        NEPAL                          4+           231     488
24 months   GMS-Nepal        NEPAL                          1             35     488
24 months   GMS-Nepal        NEPAL                          2            106     488
24 months   GMS-Nepal        NEPAL                          3            116     488
24 months   IRC              INDIA                          4+            17     407
24 months   IRC              INDIA                          1            184     407
24 months   IRC              INDIA                          2            170     407
24 months   IRC              INDIA                          3             36     407
24 months   JiVitA-3         BANGLADESH                     4+           367    8620
24 months   JiVitA-3         BANGLADESH                     1           5051    8620
24 months   JiVitA-3         BANGLADESH                     2           2400    8620
24 months   JiVitA-3         BANGLADESH                     3            802    8620
24 months   JiVitA-4         BANGLADESH                     4+           251    4747
24 months   JiVitA-4         BANGLADESH                     1           2789    4747
24 months   JiVitA-4         BANGLADESH                     2           1216    4747
24 months   JiVitA-4         BANGLADESH                     3            491    4747
24 months   MAL-ED           BANGLADESH                     4+            11     212
24 months   MAL-ED           BANGLADESH                     1            134     212
24 months   MAL-ED           BANGLADESH                     2             40     212
24 months   MAL-ED           BANGLADESH                     3             27     212
24 months   MAL-ED           BRAZIL                         4+           104     169
24 months   MAL-ED           BRAZIL                         1              0     169
24 months   MAL-ED           BRAZIL                         2             16     169
24 months   MAL-ED           BRAZIL                         3             49     169
24 months   MAL-ED           INDIA                          4+            25     227
24 months   MAL-ED           INDIA                          1             82     227
24 months   MAL-ED           INDIA                          2             74     227
24 months   MAL-ED           INDIA                          3             46     227
24 months   MAL-ED           NEPAL                          4+           127     228
24 months   MAL-ED           NEPAL                          1             48     228
24 months   MAL-ED           NEPAL                          2             31     228
24 months   MAL-ED           NEPAL                          3             22     228
24 months   MAL-ED           PERU                           4+           110     201
24 months   MAL-ED           PERU                           1             16     201
24 months   MAL-ED           PERU                           2             32     201
24 months   MAL-ED           PERU                           3             43     201
24 months   MAL-ED           SOUTH AFRICA                   4+           183     238
24 months   MAL-ED           SOUTH AFRICA                   1             13     238
24 months   MAL-ED           SOUTH AFRICA                   2             19     238
24 months   MAL-ED           SOUTH AFRICA                   3             23     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            98     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             50     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             57     214
24 months   NIH-Crypto       BANGLADESH                     4+            82     514
24 months   NIH-Crypto       BANGLADESH                     1            217     514
24 months   NIH-Crypto       BANGLADESH                     2            137     514
24 months   NIH-Crypto       BANGLADESH                     3             78     514
24 months   PROVIDE          BANGLADESH                     4+            22     578
24 months   PROVIDE          BANGLADESH                     1            407     578
24 months   PROVIDE          BANGLADESH                     2             92     578
24 months   PROVIDE          BANGLADESH                     3             57     578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Error in self$observed_likelihood$get_likelihood(tmle_task, node, fold_number) : 
##   cached likelihood value is out of sync with updates
## lf_uuid: 9f165128-62cd-11ea-a06a-ac1f6b41467c
## task_uuid: eb5229421595f354ec9fac3e127344d8
## node: Y fold_number: validation
## cached_step: 0
## update_step: 1
## 
## Error in self$observed_likelihood$get_likelihood(tmle_task, node, fold_number) : 
##   cached likelihood value is out of sync with updates
## lf_uuid: 5efabdca-62d9-11ea-a06a-ac1f6b41467c
## task_uuid: 2d98328f122b3b20588e468ab7d6336f
## node: Y fold_number: validation
## cached_step: 0
## update_step: 1
```




# Results Detail

## Results Plots
![](/tmp/d99aa600-77f1-450d-a5a5-19a4b7080da7/a26d98c7-d501-44fb-b64a-4a760ceb833a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -1.4517997   -2.1320522   -0.7715472
Birth       COHORTS          INDIA                          optimal              observed          -0.5632005   -0.6363341   -0.4900668
Birth       GMS-Nepal        NEPAL                          optimal              observed          -1.0325032   -1.1683804   -0.8966260
Birth       IRC              INDIA                          optimal              observed          -0.0333021   -0.5480463    0.4814420
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.4503797   -1.5004117   -1.4003477
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.5122107   -1.1563246    0.1319032
Birth       MAL-ED           PERU                           optimal              observed          -0.9849564   -1.1734308   -0.7964821
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.2737542   -0.7174486    0.1699403
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1848226   -1.7735513   -0.5960938
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.9386696   -1.1329654   -0.7443739
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.0200617   -1.2275943   -0.8125290
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.9291247   -1.3799414   -0.4783080
6 months    COHORTS          INDIA                          optimal              observed          -0.9611697   -1.0379830   -0.8843564
6 months    CONTENT          PERU                           optimal              observed          -0.2166489   -0.7832274    0.3499296
6 months    GMS-Nepal        NEPAL                          optimal              observed          -1.2856061   -1.4416154   -1.1295967
6 months    IRC              INDIA                          optimal              observed          -1.5137391   -2.0758562   -0.9516220
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.2330251   -1.2843616   -1.1816885
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -1.3895692   -1.4818874   -1.2972509
6 months    MAL-ED           BANGLADESH                     optimal              observed          -1.1133573   -1.6689898   -0.5577248
6 months    MAL-ED           INDIA                          optimal              observed          -1.1190135   -1.3481059   -0.8899212
6 months    MAL-ED           NEPAL                          optimal              observed          -0.7172273   -0.9221943   -0.5122603
6 months    MAL-ED           PERU                           optimal              observed          -1.2143611   -1.4278851   -1.0008372
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -1.0832394   -1.4215750   -0.7449038
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4782134   -1.7811925   -1.1752344
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.8953397   -1.1057501   -0.6849294
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.9587917   -1.3009017   -0.6166817
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.3762440   -2.7660233   -1.9864647
24 months   COHORTS          INDIA                          optimal              observed          -1.2492265   -1.3820100   -1.1164430
24 months   CONTENT          PERU                           optimal              observed          -0.9037878   -1.1934458   -0.6141297
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.8958549   -2.0557274   -1.7359824
24 months   IRC              INDIA                          optimal              observed          -1.6585010   -1.8025925   -1.5144096
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.9858106   -2.0535125   -1.9181087
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.7277567   -1.8281587   -1.6273546
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.4410596   -1.9200461   -0.9620731
24 months   MAL-ED           INDIA                          optimal              observed          -1.7817509   -2.0279287   -1.5355730
24 months   MAL-ED           NEPAL                          optimal              observed          -1.3369605   -1.6250704   -1.0488506
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.2258834   -1.7505178   -0.7012491
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -3.0845735   -3.6595509   -2.5095961
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -1.1171694   -1.3176005   -0.9167382
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.9778249   -1.4625938   -0.4930559


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       COHORTS          INDIA                          observed             observed          -0.6777626   -0.7107167   -0.6448086
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          observed             observed          -0.3079016   -0.4694769   -0.1463262
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5898426   -1.6091216   -1.5705636
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.0530516   -1.1896058   -0.9164975
Birth       MAL-ED           PERU                           observed             observed          -0.9141395   -1.0364098   -0.7918693
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.5523958   -0.7550074   -0.3497843
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1225000   -1.3335666   -0.9114334
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    COHORTS          INDIA                          observed             observed          -1.0413281   -1.0740395   -1.0086167
6 months    CONTENT          PERU                           observed             observed          -0.2785256   -0.4098735   -0.1471776
6 months    GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    IRC              INDIA                          observed             observed          -1.2470123   -1.3779341   -1.1160906
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3132988   -1.3364412   -1.2901565
6 months    JiVitA-4         BANGLADESH                     observed             observed          -1.3440477   -1.3813060   -1.3067894
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.2026806   -1.3203025   -1.0850586
6 months    MAL-ED           INDIA                          observed             observed          -1.2070638   -1.3255909   -1.0885368
6 months    MAL-ED           NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           observed             observed          -1.3248549   -1.4336721   -1.2160378
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0547925   -1.1843544   -0.9252306
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   COHORTS          INDIA                          observed             observed          -2.2131714   -2.2523749   -2.1739679
24 months   CONTENT          PERU                           observed             observed          -0.6868598   -0.8388476   -0.5348719
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          observed             observed          -1.8014906   -1.8952579   -1.7077232
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0137471   -2.0414306   -1.9860636
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.7803708   -1.8158650   -1.7448765
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed           0.4906040   -0.1423165    1.1235246
Birth       COHORTS          INDIA                          optimal              observed          -0.1145622   -0.1797233   -0.0494010
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.0526548   -0.1724166    0.0671069
Birth       IRC              INDIA                          optimal              observed          -0.2745994   -0.7760089    0.2268100
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.1394629   -0.1893629   -0.0895629
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.5408410   -1.1640534    0.0823715
Birth       MAL-ED           PERU                           optimal              observed           0.0708169   -0.0816798    0.2233136
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.2786417   -0.7540509    0.1967676
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0623226   -0.4956213    0.6202665
Birth       NIH-Crypto       BANGLADESH                     optimal              observed           0.0291751   -0.1546816    0.2130318
Birth       PROVIDE          BANGLADESH                     optimal              observed           0.1349596   -0.0685490    0.3384682
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4943261   -0.9359160   -0.0527362
6 months    COHORTS          INDIA                          optimal              observed          -0.0801584   -0.1559755   -0.0043413
6 months    CONTENT          PERU                           optimal              observed          -0.0618767   -0.6110355    0.4872821
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.0652332   -0.2050509    0.0745846
6 months    IRC              INDIA                          optimal              observed           0.2667268   -0.2718651    0.8053186
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0802737   -0.1281289   -0.0324186
6 months    JiVitA-4         BANGLADESH                     optimal              observed           0.0455215   -0.0419128    0.1329558
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.0893232   -0.6322661    0.4536197
6 months    MAL-ED           INDIA                          optimal              observed          -0.0880503   -0.3122534    0.1361528
6 months    MAL-ED           NEPAL                          optimal              observed           0.1556454   -0.0270977    0.3383884
6 months    MAL-ED           PERU                           optimal              observed          -0.1104938   -0.3115870    0.0905994
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.0284469   -0.3051841    0.3620779
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1094685   -0.1677272    0.3866641
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.3033386   -0.5015391   -0.1051380
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1328998   -0.4691194    0.2033197
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1826239   -0.5723750    0.2071271
24 months   COHORTS          INDIA                          optimal              observed          -0.9639449   -1.0985509   -0.8293389
24 months   CONTENT          PERU                           optimal              observed           0.2169280   -0.0320447    0.4659007
24 months   GMS-Nepal        NEPAL                          optimal              observed           0.0084369   -0.1225655    0.1394393
24 months   IRC              INDIA                          optimal              observed          -0.1429896   -0.2545536   -0.0314255
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0279365   -0.0911652    0.0352922
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.0526141   -0.1499305    0.0447023
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.5373366   -1.0102176   -0.0644556
24 months   MAL-ED           INDIA                          optimal              observed          -0.1044386   -0.2986227    0.0897456
24 months   MAL-ED           NEPAL                          optimal              observed           0.0293728   -0.2402426    0.2989882
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.4191761   -0.9256183    0.0872661
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4390127   -0.1141072    0.9921326
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.3240952   -0.5165098   -0.1316807
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.6245973   -1.0990399   -0.1501546
