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

**Outcome Variable:** wasted

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

agecat      studyid          country                        trth2o    wasted   n_cell     n
----------  ---------------  -----------------------------  -------  -------  -------  ----
Birth       CMC-V-BCS-2002   INDIA                          1              0       23    24
Birth       CMC-V-BCS-2002   INDIA                          1              1        1    24
Birth       CMC-V-BCS-2002   INDIA                          0              0        0    24
Birth       CMC-V-BCS-2002   INDIA                          0              1        0    24
Birth       GMS-Nepal        NEPAL                          1              0        1     4
Birth       GMS-Nepal        NEPAL                          1              1        0     4
Birth       GMS-Nepal        NEPAL                          0              0        3     4
Birth       GMS-Nepal        NEPAL                          0              1        0     4
Birth       IRC              INDIA                          1              0       77   105
Birth       IRC              INDIA                          1              1       28   105
Birth       IRC              INDIA                          0              0        0   105
Birth       IRC              INDIA                          0              1        0   105
Birth       MAL-ED           BANGLADESH                     1              0       93   112
Birth       MAL-ED           BANGLADESH                     1              1       17   112
Birth       MAL-ED           BANGLADESH                     0              0        2   112
Birth       MAL-ED           BANGLADESH                     0              1        0   112
Birth       MAL-ED           BRAZIL                         1              0        3    20
Birth       MAL-ED           BRAZIL                         1              1        0    20
Birth       MAL-ED           BRAZIL                         0              0       16    20
Birth       MAL-ED           BRAZIL                         0              1        1    20
Birth       MAL-ED           INDIA                          1              0        0     1
Birth       MAL-ED           INDIA                          1              1        0     1
Birth       MAL-ED           INDIA                          0              0        1     1
Birth       MAL-ED           INDIA                          0              1        0     1
Birth       MAL-ED           NEPAL                          1              0        7     9
Birth       MAL-ED           NEPAL                          1              1        0     9
Birth       MAL-ED           NEPAL                          0              0        2     9
Birth       MAL-ED           NEPAL                          0              1        0     9
Birth       MAL-ED           PERU                           1              0       26    36
Birth       MAL-ED           PERU                           1              1        2    36
Birth       MAL-ED           PERU                           0              0        8    36
Birth       MAL-ED           PERU                           0              1        0    36
Birth       MAL-ED           SOUTH AFRICA                   1              0        1     5
Birth       MAL-ED           SOUTH AFRICA                   1              1        0     5
Birth       MAL-ED           SOUTH AFRICA                   0              0        4     5
Birth       MAL-ED           SOUTH AFRICA                   0              1        0     5
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0        4    21
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        0    21
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              0       17    21
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              1        0    21
Birth       NIH-Crypto       BANGLADESH                     1              0      319   707
Birth       NIH-Crypto       BANGLADESH                     1              1       78   707
Birth       NIH-Crypto       BANGLADESH                     0              0      216   707
Birth       NIH-Crypto       BANGLADESH                     0              1       94   707
Birth       PROVIDE          BANGLADESH                     1              0        9   532
Birth       PROVIDE          BANGLADESH                     1              1        2   532
Birth       PROVIDE          BANGLADESH                     0              0      406   532
Birth       PROVIDE          BANGLADESH                     0              1      115   532
6 months    CMC-V-BCS-2002   INDIA                          1              0      101   120
6 months    CMC-V-BCS-2002   INDIA                          1              1       19   120
6 months    CMC-V-BCS-2002   INDIA                          0              0        0   120
6 months    CMC-V-BCS-2002   INDIA                          0              1        0   120
6 months    GMS-Nepal        NEPAL                          1              0        1     4
6 months    GMS-Nepal        NEPAL                          1              1        0     4
6 months    GMS-Nepal        NEPAL                          0              0        3     4
6 months    GMS-Nepal        NEPAL                          0              1        0     4
6 months    IRC              INDIA                          1              0      106   121
6 months    IRC              INDIA                          1              1       15   121
6 months    IRC              INDIA                          0              0        0   121
6 months    IRC              INDIA                          0              1        0   121
6 months    MAL-ED           BANGLADESH                     1              0      129   134
6 months    MAL-ED           BANGLADESH                     1              1        3   134
6 months    MAL-ED           BANGLADESH                     0              0        2   134
6 months    MAL-ED           BANGLADESH                     0              1        0   134
6 months    MAL-ED           BRAZIL                         1              0       13   103
6 months    MAL-ED           BRAZIL                         1              1        0   103
6 months    MAL-ED           BRAZIL                         0              0       90   103
6 months    MAL-ED           BRAZIL                         0              1        0   103
6 months    MAL-ED           INDIA                          1              0        4     9
6 months    MAL-ED           INDIA                          1              1        0     9
6 months    MAL-ED           INDIA                          0              0        5     9
6 months    MAL-ED           INDIA                          0              1        0     9
6 months    MAL-ED           NEPAL                          1              0       69    83
6 months    MAL-ED           NEPAL                          1              1        0    83
6 months    MAL-ED           NEPAL                          0              0       13    83
6 months    MAL-ED           NEPAL                          0              1        1    83
6 months    MAL-ED           PERU                           1              0       39    49
6 months    MAL-ED           PERU                           1              1        0    49
6 months    MAL-ED           PERU                           0              0       10    49
6 months    MAL-ED           PERU                           0              1        0    49
6 months    MAL-ED           SOUTH AFRICA                   1              0        2    12
6 months    MAL-ED           SOUTH AFRICA                   1              1        0    12
6 months    MAL-ED           SOUTH AFRICA                   0              0        7    12
6 months    MAL-ED           SOUTH AFRICA                   0              1        3    12
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0        6    42
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        0    42
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              0       36    42
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              1        0    42
6 months    NIH-Crypto       BANGLADESH                     1              0      385   715
6 months    NIH-Crypto       BANGLADESH                     1              1       11   715
6 months    NIH-Crypto       BANGLADESH                     0              0      309   715
6 months    NIH-Crypto       BANGLADESH                     0              1       10   715
6 months    PROVIDE          BANGLADESH                     1              0       14   603
6 months    PROVIDE          BANGLADESH                     1              1        0   603
6 months    PROVIDE          BANGLADESH                     0              0      564   603
6 months    PROVIDE          BANGLADESH                     0              1       25   603
24 months   CMC-V-BCS-2002   INDIA                          1              0      112   119
24 months   CMC-V-BCS-2002   INDIA                          1              1        7   119
24 months   CMC-V-BCS-2002   INDIA                          0              0        0   119
24 months   CMC-V-BCS-2002   INDIA                          0              1        0   119
24 months   GMS-Nepal        NEPAL                          1              0        1     4
24 months   GMS-Nepal        NEPAL                          1              1        0     4
24 months   GMS-Nepal        NEPAL                          0              0        1     4
24 months   GMS-Nepal        NEPAL                          0              1        2     4
24 months   IRC              INDIA                          1              0      111   121
24 months   IRC              INDIA                          1              1       10   121
24 months   IRC              INDIA                          0              0        0   121
24 months   IRC              INDIA                          0              1        0   121
24 months   MAL-ED           BANGLADESH                     1              0      120   135
24 months   MAL-ED           BANGLADESH                     1              1       13   135
24 months   MAL-ED           BANGLADESH                     0              0        2   135
24 months   MAL-ED           BANGLADESH                     0              1        0   135
24 months   MAL-ED           BRAZIL                         1              0       13   103
24 months   MAL-ED           BRAZIL                         1              1        0   103
24 months   MAL-ED           BRAZIL                         0              0       90   103
24 months   MAL-ED           BRAZIL                         0              1        0   103
24 months   MAL-ED           INDIA                          1              0        4     9
24 months   MAL-ED           INDIA                          1              1        0     9
24 months   MAL-ED           INDIA                          0              0        2     9
24 months   MAL-ED           INDIA                          0              1        3     9
24 months   MAL-ED           NEPAL                          1              0       69    83
24 months   MAL-ED           NEPAL                          1              1        0    83
24 months   MAL-ED           NEPAL                          0              0       14    83
24 months   MAL-ED           NEPAL                          0              1        0    83
24 months   MAL-ED           PERU                           1              0       37    49
24 months   MAL-ED           PERU                           1              1        2    49
24 months   MAL-ED           PERU                           0              0       10    49
24 months   MAL-ED           PERU                           0              1        0    49
24 months   MAL-ED           SOUTH AFRICA                   1              0        2    11
24 months   MAL-ED           SOUTH AFRICA                   1              1        0    11
24 months   MAL-ED           SOUTH AFRICA                   0              0        9    11
24 months   MAL-ED           SOUTH AFRICA                   0              1        0    11
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0        6    43
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        0    43
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              0       36    43
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              1        1    43
24 months   NIH-Crypto       BANGLADESH                     1              0      218   514
24 months   NIH-Crypto       BANGLADESH                     1              1       24   514
24 months   NIH-Crypto       BANGLADESH                     0              0      251   514
24 months   NIH-Crypto       BANGLADESH                     0              1       21   514
24 months   PROVIDE          BANGLADESH                     1              0       14   579
24 months   PROVIDE          BANGLADESH                     1              1        0   579
24 months   PROVIDE          BANGLADESH                     0              0      503   579
24 months   PROVIDE          BANGLADESH                     0              1       62   579


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
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/05783f24-70a3-49e1-ae2c-7e779b02544c/df1dee0d-e119-4702-89dc-a48d30008fb9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/05783f24-70a3-49e1-ae2c-7e779b02544c/df1dee0d-e119-4702-89dc-a48d30008fb9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/05783f24-70a3-49e1-ae2c-7e779b02544c/df1dee0d-e119-4702-89dc-a48d30008fb9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/05783f24-70a3-49e1-ae2c-7e779b02544c/df1dee0d-e119-4702-89dc-a48d30008fb9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NIH-Crypto   BANGLADESH   1                    NA                0.1997094   0.1598219   0.2395968
Birth       NIH-Crypto   BANGLADESH   0                    NA                0.3044182   0.2516672   0.3571692
6 months    NIH-Crypto   BANGLADESH   1                    NA                0.0266834   0.0108369   0.0425298
6 months    NIH-Crypto   BANGLADESH   0                    NA                0.0335692   0.0135634   0.0535750
24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0982583   0.0603360   0.1361806
24 months   NIH-Crypto   BANGLADESH   0                    NA                0.0758993   0.0440533   0.1077454


### Parameter: E(Y)


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NIH-Crypto   BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
6 months    NIH-Crypto   BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065


### Parameter: RR


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH   0                    1                 1.5243063   1.1704122   1.985206
6 months    NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto   BANGLADESH   0                    1                 1.2580573   0.5429466   2.915034
24 months   NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto   BANGLADESH   0                    1                 0.7724471   0.4365095   1.366922


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       NIH-Crypto   BANGLADESH   1                    NA                 0.0435721    0.0142467   0.0728976
6 months    NIH-Crypto   BANGLADESH   1                    NA                 0.0026872   -0.0082807   0.0136552
24 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0107097   -0.0370091   0.0155898


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       NIH-Crypto   BANGLADESH   1                    NA                 0.1791017    0.0505928   0.2902159
6 months    NIH-Crypto   BANGLADESH   1                    NA                 0.0914942   -0.3685498   0.3968924
24 months   NIH-Crypto   BANGLADESH   1                    NA                -0.1223282   -0.4641554   0.1396947
