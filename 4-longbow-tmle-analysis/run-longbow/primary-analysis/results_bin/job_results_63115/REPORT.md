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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
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

agecat      studyid      country        hfoodsec                stunted   n_cell       n  outcome_variable 
----------  -----------  -------------  ---------------------  --------  -------  ------  -----------------
Birth       GMS-Nepal    NEPAL          Food Secure                   0      401     672  stunted          
Birth       GMS-Nepal    NEPAL          Food Secure                   1       76     672  stunted          
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure          0       86     672  stunted          
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure          1       20     672  stunted          
Birth       GMS-Nepal    NEPAL          Food Insecure                 0       69     672  stunted          
Birth       GMS-Nepal    NEPAL          Food Insecure                 1       20     672  stunted          
Birth       JiVitA-3     BANGLADESH     Food Secure                   0     4894   14364  stunted          
Birth       JiVitA-3     BANGLADESH     Food Secure                   1     2057   14364  stunted          
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure          0     3303   14364  stunted          
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure          1     1574   14364  stunted          
Birth       JiVitA-3     BANGLADESH     Food Insecure                 0     1696   14364  stunted          
Birth       JiVitA-3     BANGLADESH     Food Insecure                 1      840   14364  stunted          
Birth       JiVitA-4     BANGLADESH     Food Secure                   0      978    2810  stunted          
Birth       JiVitA-4     BANGLADESH     Food Secure                   1      455    2810  stunted          
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure          0      722    2810  stunted          
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure          1      296    2810  stunted          
Birth       JiVitA-4     BANGLADESH     Food Insecure                 0      253    2810  stunted          
Birth       JiVitA-4     BANGLADESH     Food Insecure                 1      106    2810  stunted          
Birth       MAL-ED       BANGLADESH     Food Secure                   0      121     172  stunted          
Birth       MAL-ED       BANGLADESH     Food Secure                   1       23     172  stunted          
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     172  stunted          
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     172  stunted          
Birth       MAL-ED       BANGLADESH     Food Insecure                 0       19     172  stunted          
Birth       MAL-ED       BANGLADESH     Food Insecure                 1        5     172  stunted          
Birth       MAL-ED       BRAZIL         Food Secure                   0        0      28  stunted          
Birth       MAL-ED       BRAZIL         Food Secure                   1        0      28  stunted          
Birth       MAL-ED       BRAZIL         Mildly Food Insecure          0        3      28  stunted          
Birth       MAL-ED       BRAZIL         Mildly Food Insecure          1        1      28  stunted          
Birth       MAL-ED       BRAZIL         Food Insecure                 0       20      28  stunted          
Birth       MAL-ED       BRAZIL         Food Insecure                 1        4      28  stunted          
Birth       MAL-ED       INDIA          Food Secure                   0       28      37  stunted          
Birth       MAL-ED       INDIA          Food Secure                   1        6      37  stunted          
Birth       MAL-ED       INDIA          Mildly Food Insecure          0        1      37  stunted          
Birth       MAL-ED       INDIA          Mildly Food Insecure          1        0      37  stunted          
Birth       MAL-ED       INDIA          Food Insecure                 0        1      37  stunted          
Birth       MAL-ED       INDIA          Food Insecure                 1        1      37  stunted          
Birth       MAL-ED       NEPAL          Food Secure                   0       10      14  stunted          
Birth       MAL-ED       NEPAL          Food Secure                   1        0      14  stunted          
Birth       MAL-ED       NEPAL          Mildly Food Insecure          0        1      14  stunted          
Birth       MAL-ED       NEPAL          Mildly Food Insecure          1        0      14  stunted          
Birth       MAL-ED       NEPAL          Food Insecure                 0        3      14  stunted          
Birth       MAL-ED       NEPAL          Food Insecure                 1        0      14  stunted          
Birth       MAL-ED       PERU           Food Secure                   0       20      91  stunted          
Birth       MAL-ED       PERU           Food Secure                   1        4      91  stunted          
Birth       MAL-ED       PERU           Mildly Food Insecure          0       21      91  stunted          
Birth       MAL-ED       PERU           Mildly Food Insecure          1        2      91  stunted          
Birth       MAL-ED       PERU           Food Insecure                 0       39      91  stunted          
Birth       MAL-ED       PERU           Food Insecure                 1        5      91  stunted          
Birth       MAL-ED       SOUTH AFRICA   Food Secure                   0       41      88  stunted          
Birth       MAL-ED       SOUTH AFRICA   Food Secure                   1        4      88  stunted          
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0        9      88  stunted          
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0      88  stunted          
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                 0       31      88  stunted          
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                 1        3      88  stunted          
Birth       NIH-Birth    BANGLADESH     Food Secure                   0       78     608  stunted          
Birth       NIH-Birth    BANGLADESH     Food Secure                   1       12     608  stunted          
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure          0      404     608  stunted          
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure          1       74     608  stunted          
Birth       NIH-Birth    BANGLADESH     Food Insecure                 0       29     608  stunted          
Birth       NIH-Birth    BANGLADESH     Food Insecure                 1       11     608  stunted          
Birth       NIH-Crypto   BANGLADESH     Food Secure                   0      387     732  stunted          
Birth       NIH-Crypto   BANGLADESH     Food Secure                   1       52     732  stunted          
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      175     732  stunted          
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       34     732  stunted          
Birth       NIH-Crypto   BANGLADESH     Food Insecure                 0       69     732  stunted          
Birth       NIH-Crypto   BANGLADESH     Food Insecure                 1       15     732  stunted          
6 months    GMS-Nepal    NEPAL          Food Secure                   0      314     546  stunted          
6 months    GMS-Nepal    NEPAL          Food Secure                   1       82     546  stunted          
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure          0       54     546  stunted          
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure          1       22     546  stunted          
6 months    GMS-Nepal    NEPAL          Food Insecure                 0       60     546  stunted          
6 months    GMS-Nepal    NEPAL          Food Insecure                 1       14     546  stunted          
6 months    JiVitA-3     BANGLADESH     Food Secure                   0     6526   16791  stunted          
6 months    JiVitA-3     BANGLADESH     Food Secure                   1     1889   16791  stunted          
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure          0     4125   16791  stunted          
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure          1     1477   16791  stunted          
6 months    JiVitA-3     BANGLADESH     Food Insecure                 0     1918   16791  stunted          
6 months    JiVitA-3     BANGLADESH     Food Insecure                 1      856   16791  stunted          
6 months    JiVitA-4     BANGLADESH     Food Secure                   0     1828    4793  stunted          
6 months    JiVitA-4     BANGLADESH     Food Secure                   1      614    4793  stunted          
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure          0     1276    4793  stunted          
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure          1      453    4793  stunted          
6 months    JiVitA-4     BANGLADESH     Food Insecure                 0      477    4793  stunted          
6 months    JiVitA-4     BANGLADESH     Food Insecure                 1      145    4793  stunted          
6 months    MAL-ED       BANGLADESH     Food Secure                   0      129     193  stunted          
6 months    MAL-ED       BANGLADESH     Food Secure                   1       31     193  stunted          
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure          0        2     193  stunted          
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure          1        2     193  stunted          
6 months    MAL-ED       BANGLADESH     Food Insecure                 0       25     193  stunted          
6 months    MAL-ED       BANGLADESH     Food Insecure                 1        4     193  stunted          
6 months    MAL-ED       BRAZIL         Food Secure                   0        3     129  stunted          
6 months    MAL-ED       BRAZIL         Food Secure                   1        0     129  stunted          
6 months    MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129  stunted          
6 months    MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129  stunted          
6 months    MAL-ED       BRAZIL         Food Insecure                 0      113     129  stunted          
6 months    MAL-ED       BRAZIL         Food Insecure                 1        2     129  stunted          
6 months    MAL-ED       INDIA          Food Secure                   0      153     212  stunted          
6 months    MAL-ED       INDIA          Food Secure                   1       37     212  stunted          
6 months    MAL-ED       INDIA          Mildly Food Insecure          0        5     212  stunted          
6 months    MAL-ED       INDIA          Mildly Food Insecure          1        0     212  stunted          
6 months    MAL-ED       INDIA          Food Insecure                 0       14     212  stunted          
6 months    MAL-ED       INDIA          Food Insecure                 1        3     212  stunted          
6 months    MAL-ED       NEPAL          Food Secure                   0       91     128  stunted          
6 months    MAL-ED       NEPAL          Food Secure                   1        3     128  stunted          
6 months    MAL-ED       NEPAL          Mildly Food Insecure          0       15     128  stunted          
6 months    MAL-ED       NEPAL          Mildly Food Insecure          1        0     128  stunted          
6 months    MAL-ED       NEPAL          Food Insecure                 0       15     128  stunted          
6 months    MAL-ED       NEPAL          Food Insecure                 1        4     128  stunted          
6 months    MAL-ED       PERU           Food Secure                   0       19     111  stunted          
6 months    MAL-ED       PERU           Food Secure                   1        8     111  stunted          
6 months    MAL-ED       PERU           Mildly Food Insecure          0       22     111  stunted          
6 months    MAL-ED       PERU           Mildly Food Insecure          1        6     111  stunted          
6 months    MAL-ED       PERU           Food Insecure                 0       41     111  stunted          
6 months    MAL-ED       PERU           Food Insecure                 1       15     111  stunted          
6 months    MAL-ED       SOUTH AFRICA   Food Secure                   0      104     228  stunted          
6 months    MAL-ED       SOUTH AFRICA   Food Secure                   1       25     228  stunted          
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       15     228  stunted          
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        3     228  stunted          
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                 0       65     228  stunted          
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                 1       16     228  stunted          
6 months    NIH-Birth    BANGLADESH     Food Secure                   0       60     537  stunted          
6 months    NIH-Birth    BANGLADESH     Food Secure                   1       20     537  stunted          
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure          0      308     537  stunted          
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure          1      109     537  stunted          
6 months    NIH-Birth    BANGLADESH     Food Insecure                 0       25     537  stunted          
6 months    NIH-Birth    BANGLADESH     Food Insecure                 1       15     537  stunted          
6 months    NIH-Crypto   BANGLADESH     Food Secure                   0      342     715  stunted          
6 months    NIH-Crypto   BANGLADESH     Food Secure                   1       85     715  stunted          
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      158     715  stunted          
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       46     715  stunted          
6 months    NIH-Crypto   BANGLADESH     Food Insecure                 0       65     715  stunted          
6 months    NIH-Crypto   BANGLADESH     Food Insecure                 1       19     715  stunted          
24 months   GMS-Nepal    NEPAL          Food Secure                   0      202     478  stunted          
24 months   GMS-Nepal    NEPAL          Food Secure                   1      140     478  stunted          
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure          0       29     478  stunted          
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure          1       38     478  stunted          
24 months   GMS-Nepal    NEPAL          Food Insecure                 0       36     478  stunted          
24 months   GMS-Nepal    NEPAL          Food Insecure                 1       33     478  stunted          
24 months   JiVitA-3     BANGLADESH     Food Secure                   0     2152    8214  stunted          
24 months   JiVitA-3     BANGLADESH     Food Secure                   1     1723    8214  stunted          
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure          0     1368    8214  stunted          
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure          1     1393    8214  stunted          
24 months   JiVitA-3     BANGLADESH     Food Insecure                 0      677    8214  stunted          
24 months   JiVitA-3     BANGLADESH     Food Insecure                 1      901    8214  stunted          
24 months   JiVitA-4     BANGLADESH     Food Secure                   0     1435    4713  stunted          
24 months   JiVitA-4     BANGLADESH     Food Secure                   1      964    4713  stunted          
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure          0     1007    4713  stunted          
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure          1      698    4713  stunted          
24 months   JiVitA-4     BANGLADESH     Food Insecure                 0      381    4713  stunted          
24 months   JiVitA-4     BANGLADESH     Food Insecure                 1      228    4713  stunted          
24 months   MAL-ED       BANGLADESH     Food Secure                   0       87     194  stunted          
24 months   MAL-ED       BANGLADESH     Food Secure                   1       74     194  stunted          
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure          0        1     194  stunted          
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure          1        3     194  stunted          
24 months   MAL-ED       BANGLADESH     Food Insecure                 0       12     194  stunted          
24 months   MAL-ED       BANGLADESH     Food Insecure                 1       17     194  stunted          
24 months   MAL-ED       BRAZIL         Food Secure                   0        3     129  stunted          
24 months   MAL-ED       BRAZIL         Food Secure                   1        0     129  stunted          
24 months   MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129  stunted          
24 months   MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129  stunted          
24 months   MAL-ED       BRAZIL         Food Insecure                 0      112     129  stunted          
24 months   MAL-ED       BRAZIL         Food Insecure                 1        3     129  stunted          
24 months   MAL-ED       INDIA          Food Secure                   0      107     212  stunted          
24 months   MAL-ED       INDIA          Food Secure                   1       83     212  stunted          
24 months   MAL-ED       INDIA          Mildly Food Insecure          0        5     212  stunted          
24 months   MAL-ED       INDIA          Mildly Food Insecure          1        0     212  stunted          
24 months   MAL-ED       INDIA          Food Insecure                 0        9     212  stunted          
24 months   MAL-ED       INDIA          Food Insecure                 1        8     212  stunted          
24 months   MAL-ED       NEPAL          Food Secure                   0       76     128  stunted          
24 months   MAL-ED       NEPAL          Food Secure                   1       18     128  stunted          
24 months   MAL-ED       NEPAL          Mildly Food Insecure          0       12     128  stunted          
24 months   MAL-ED       NEPAL          Mildly Food Insecure          1        3     128  stunted          
24 months   MAL-ED       NEPAL          Food Insecure                 0       10     128  stunted          
24 months   MAL-ED       NEPAL          Food Insecure                 1        9     128  stunted          
24 months   MAL-ED       PERU           Food Secure                   0       14     107  stunted          
24 months   MAL-ED       PERU           Food Secure                   1       12     107  stunted          
24 months   MAL-ED       PERU           Mildly Food Insecure          0       20     107  stunted          
24 months   MAL-ED       PERU           Mildly Food Insecure          1        7     107  stunted          
24 months   MAL-ED       PERU           Food Insecure                 0       33     107  stunted          
24 months   MAL-ED       PERU           Food Insecure                 1       21     107  stunted          
24 months   MAL-ED       SOUTH AFRICA   Food Secure                   0       88     228  stunted          
24 months   MAL-ED       SOUTH AFRICA   Food Secure                   1       41     228  stunted          
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       12     228  stunted          
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        6     228  stunted          
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                 0       49     228  stunted          
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                 1       32     228  stunted          
24 months   NIH-Birth    BANGLADESH     Food Secure                   0       45     429  stunted          
24 months   NIH-Birth    BANGLADESH     Food Secure                   1       23     429  stunted          
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure          0      131     429  stunted          
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure          1      197     429  stunted          
24 months   NIH-Birth    BANGLADESH     Food Insecure                 0        9     429  stunted          
24 months   NIH-Birth    BANGLADESH     Food Insecure                 1       24     429  stunted          
24 months   NIH-Crypto   BANGLADESH     Food Secure                   0      254     514  stunted          
24 months   NIH-Crypto   BANGLADESH     Food Secure                   1       80     514  stunted          
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure          0       91     514  stunted          
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       33     514  stunted          
24 months   NIH-Crypto   BANGLADESH     Food Insecure                 0       37     514  stunted          
24 months   NIH-Crypto   BANGLADESH     Food Insecure                 1       19     514  stunted          


The following strata were considered:

* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
