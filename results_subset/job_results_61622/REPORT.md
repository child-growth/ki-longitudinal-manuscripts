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

**Intervention Variable:** trth2o

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
* W_nrooms
* W_nhh
* W_nchldlt5
* brthmon
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_brthmon
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        trth2o    n_cell     n
----------  ---------------  -----------------------------  -------  -------  ----
Birth       CMC-V-BCS-2002   INDIA                          1             24    24
Birth       CMC-V-BCS-2002   INDIA                          0              0    24
Birth       GMS-Nepal        NEPAL                          1              1     4
Birth       GMS-Nepal        NEPAL                          0              3     4
Birth       IRC              INDIA                          1            105   105
Birth       IRC              INDIA                          0              0   105
Birth       MAL-ED           BANGLADESH                     1            110   112
Birth       MAL-ED           BANGLADESH                     0              2   112
Birth       MAL-ED           BRAZIL                         1              3    20
Birth       MAL-ED           BRAZIL                         0             17    20
Birth       MAL-ED           INDIA                          1              0     1
Birth       MAL-ED           INDIA                          0              1     1
Birth       MAL-ED           NEPAL                          1              7     9
Birth       MAL-ED           NEPAL                          0              2     9
Birth       MAL-ED           PERU                           1             28    36
Birth       MAL-ED           PERU                           0              8    36
Birth       MAL-ED           SOUTH AFRICA                   1              1     5
Birth       MAL-ED           SOUTH AFRICA                   0              4     5
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              4    21
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             17    21
Birth       NIH-Crypto       BANGLADESH                     1            397   707
Birth       NIH-Crypto       BANGLADESH                     0            310   707
Birth       PROVIDE          BANGLADESH                     1             11   532
Birth       PROVIDE          BANGLADESH                     0            521   532
6 months    CMC-V-BCS-2002   INDIA                          1            120   120
6 months    CMC-V-BCS-2002   INDIA                          0              0   120
6 months    GMS-Nepal        NEPAL                          1              1     4
6 months    GMS-Nepal        NEPAL                          0              3     4
6 months    IRC              INDIA                          1            121   121
6 months    IRC              INDIA                          0              0   121
6 months    MAL-ED           BANGLADESH                     1            132   134
6 months    MAL-ED           BANGLADESH                     0              2   134
6 months    MAL-ED           BRAZIL                         1             13   103
6 months    MAL-ED           BRAZIL                         0             90   103
6 months    MAL-ED           INDIA                          1              4     9
6 months    MAL-ED           INDIA                          0              5     9
6 months    MAL-ED           NEPAL                          1             69    83
6 months    MAL-ED           NEPAL                          0             14    83
6 months    MAL-ED           PERU                           1             39    49
6 months    MAL-ED           PERU                           0             10    49
6 months    MAL-ED           SOUTH AFRICA                   1              2    12
6 months    MAL-ED           SOUTH AFRICA                   0             10    12
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    42
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             36    42
6 months    NIH-Crypto       BANGLADESH                     1            396   715
6 months    NIH-Crypto       BANGLADESH                     0            319   715
6 months    PROVIDE          BANGLADESH                     1             14   603
6 months    PROVIDE          BANGLADESH                     0            589   603
24 months   CMC-V-BCS-2002   INDIA                          1            119   119
24 months   CMC-V-BCS-2002   INDIA                          0              0   119
24 months   GMS-Nepal        NEPAL                          1              1     4
24 months   GMS-Nepal        NEPAL                          0              3     4
24 months   IRC              INDIA                          1            121   121
24 months   IRC              INDIA                          0              0   121
24 months   MAL-ED           BANGLADESH                     1            133   135
24 months   MAL-ED           BANGLADESH                     0              2   135
24 months   MAL-ED           BRAZIL                         1             13   103
24 months   MAL-ED           BRAZIL                         0             90   103
24 months   MAL-ED           INDIA                          1              4     9
24 months   MAL-ED           INDIA                          0              5     9
24 months   MAL-ED           NEPAL                          1             69    83
24 months   MAL-ED           NEPAL                          0             14    83
24 months   MAL-ED           PERU                           1             39    49
24 months   MAL-ED           PERU                           0             10    49
24 months   MAL-ED           SOUTH AFRICA                   1              2    11
24 months   MAL-ED           SOUTH AFRICA                   0              9    11
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    43
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             37    43
24 months   NIH-Crypto       BANGLADESH                     1            242   514
24 months   NIH-Crypto       BANGLADESH                     0            272   514
24 months   PROVIDE          BANGLADESH                     1             14   579
24 months   PROVIDE          BANGLADESH                     0            565   579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
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
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
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
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
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

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/467a6028-4930-44ee-884f-42b12c752c23/221a6ea9-f0c8-4889-b756-dd2f53a10afd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           optimal              observed           0.0085673   -0.5627029    0.5798375
Birth       NIH-Crypto   BANGLADESH                     optimal              observed          -1.2039674   -1.3311175   -1.0768174
Birth       PROVIDE      BANGLADESH                     optimal              observed          -1.2610101   -1.7796262   -0.7423941
6 months    MAL-ED       BRAZIL                         optimal              observed           1.0246408    0.7669117    1.2823700
6 months    MAL-ED       NEPAL                          optimal              observed           0.1474478   -0.5058711    0.8007668
6 months    MAL-ED       PERU                           optimal              observed           1.0182898    0.6564471    1.3801325
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.2791224    0.8959845    1.6622604
6 months    NIH-Crypto   BANGLADESH                     optimal              observed          -0.1091259   -0.2360936    0.0178419
6 months    PROVIDE      BANGLADESH                     optimal              observed           0.6832609    0.1404784    1.2260434
24 months   MAL-ED       BRAZIL                         optimal              observed           0.3942874   -0.1964006    0.9849755
24 months   MAL-ED       NEPAL                          optimal              observed           0.0990619   -0.4347132    0.6328370
24 months   MAL-ED       PERU                           optimal              observed           0.4146118   -0.0822370    0.9114606
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3454052   -0.9086469    0.2178364
24 months   NIH-Crypto   BANGLADESH                     optimal              observed          -0.4820269   -0.6290527   -0.3350011
24 months   PROVIDE      BANGLADESH                     optimal              observed          -0.3912527   -0.7900381    0.0075327


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           observed             observed          -0.1791667   -0.4729428    0.1146094
Birth       NIH-Crypto   BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE      BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
6 months    MAL-ED       BRAZIL                         observed             observed           0.9731715    0.7347562    1.2115869
6 months    MAL-ED       NEPAL                          observed             observed           0.1447189   -0.1029021    0.3923399
6 months    MAL-ED       PERU                           observed             observed           0.9109184    0.5934529    1.2283839
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7418651    0.4248303    1.0588998
6 months    NIH-Crypto   BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROVIDE      BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
24 months   MAL-ED       BRAZIL                         observed             observed           0.5203560    0.2632846    0.7774274
24 months   MAL-ED       NEPAL                          observed             observed          -0.2262651   -0.4277663   -0.0247638
24 months   MAL-ED       PERU                           observed             observed           0.1148299   -0.1831101    0.4127700
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1037209   -0.1942394    0.4016813
24 months   NIH-Crypto   BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE      BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           optimal              observed          -0.1877340   -0.7511944    0.3757264
Birth       NIH-Crypto   BANGLADESH                     optimal              observed          -0.0401839   -0.1376770    0.0573092
Birth       PROVIDE      BANGLADESH                     optimal              observed          -0.0374485   -0.5434150    0.4685180
6 months    MAL-ED       BRAZIL                         optimal              observed          -0.0514693   -0.1382962    0.0353575
6 months    MAL-ED       NEPAL                          optimal              observed          -0.0027290   -0.6006879    0.5952300
6 months    MAL-ED       PERU                           optimal              observed          -0.1073715   -0.2593630    0.0446201
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5372574   -1.0085398   -0.0659750
6 months    NIH-Crypto   BANGLADESH                     optimal              observed           0.1388881    0.0361602    0.2416160
6 months    PROVIDE      BANGLADESH                     optimal              observed          -0.8823515   -1.4187828   -0.3459203
24 months   MAL-ED       BRAZIL                         optimal              observed           0.1260686   -0.4065312    0.6586683
24 months   MAL-ED       NEPAL                          optimal              observed          -0.3253269   -0.8051026    0.1544487
24 months   MAL-ED       PERU                           optimal              observed          -0.2997818   -0.6422818    0.0427181
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4491261   -0.1059622    1.0042145
24 months   NIH-Crypto   BANGLADESH                     optimal              observed          -0.1283233   -0.2387528   -0.0178938
24 months   PROVIDE      BANGLADESH                     optimal              observed          -0.5016143   -0.8991785   -0.1040501
