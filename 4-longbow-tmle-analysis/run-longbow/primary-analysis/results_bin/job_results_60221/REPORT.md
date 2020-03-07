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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nchldlt5
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        mwtkg         ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  -----------  --------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                   0      871    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                   1       66    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                    0     1032    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                    1      169    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg                0      975    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg                1      103    3216
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg                   0      575   27196
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg                   1       94   27196
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                    0    20106   27196
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                    1     4647   27196
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg                0     1498   27196
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg                1      276   27196
0-24 months   LCNI-5           MALAWI                         >=58 kg                   0      102     838
0-24 months   LCNI-5           MALAWI                         >=58 kg                   1       12     838
0-24 months   LCNI-5           MALAWI                         <52 kg                    0      370     838
0-24 months   LCNI-5           MALAWI                         <52 kg                    1      134     838
0-24 months   LCNI-5           MALAWI                         [52-58) kg                0      189     838
0-24 months   LCNI-5           MALAWI                         [52-58) kg                1       31     838
0-24 months   MAL-ED           BANGLADESH                     >=58 kg                   0       45     254
0-24 months   MAL-ED           BANGLADESH                     >=58 kg                   1        3     254
0-24 months   MAL-ED           BANGLADESH                     <52 kg                    0      113     254
0-24 months   MAL-ED           BANGLADESH                     <52 kg                    1       49     254
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg                0       40     254
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg                1        4     254
0-24 months   MAL-ED           BRAZIL                         >=58 kg                   0      132     221
0-24 months   MAL-ED           BRAZIL                         >=58 kg                   1       11     221
0-24 months   MAL-ED           BRAZIL                         <52 kg                    0       38     221
0-24 months   MAL-ED           BRAZIL                         <52 kg                    1        4     221
0-24 months   MAL-ED           BRAZIL                         [52-58) kg                0       30     221
0-24 months   MAL-ED           BRAZIL                         [52-58) kg                1        6     221
0-24 months   MAL-ED           INDIA                          >=58 kg                   0       36     242
0-24 months   MAL-ED           INDIA                          >=58 kg                   1        6     242
0-24 months   MAL-ED           INDIA                          <52 kg                    0      112     242
0-24 months   MAL-ED           INDIA                          <52 kg                    1       38     242
0-24 months   MAL-ED           INDIA                          [52-58) kg                0       36     242
0-24 months   MAL-ED           INDIA                          [52-58) kg                1       14     242
0-24 months   MAL-ED           NEPAL                          >=58 kg                   0       75     238
0-24 months   MAL-ED           NEPAL                          >=58 kg                   1        5     238
0-24 months   MAL-ED           NEPAL                          <52 kg                    0       61     238
0-24 months   MAL-ED           NEPAL                          <52 kg                    1       15     238
0-24 months   MAL-ED           NEPAL                          [52-58) kg                0       81     238
0-24 months   MAL-ED           NEPAL                          [52-58) kg                1        1     238
0-24 months   MAL-ED           PERU                           >=58 kg                   0       87     290
0-24 months   MAL-ED           PERU                           >=58 kg                   1       17     290
0-24 months   MAL-ED           PERU                           <52 kg                    0       87     290
0-24 months   MAL-ED           PERU                           <52 kg                    1       28     290
0-24 months   MAL-ED           PERU                           [52-58) kg                0       53     290
0-24 months   MAL-ED           PERU                           [52-58) kg                1       18     290
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                   0      154     270
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                   1       40     270
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                    0       16     270
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                    1       14     270
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg                0       30     270
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg                1       16     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                   0       51     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                   1       47     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                    0       38     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                    1       61     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg                0       31     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg                1       28     256
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg                   0       64     629
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg                   1       18     629
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                    0      295     629
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                    1      158     629
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg                0       74     629
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg                1       20     629
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                   0      182     755
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                   1       10     755
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                    0      338     755
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                    1       68     755
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg                0      136     755
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg                1       21     755
0-24 months   PROBIT           BELARUS                        >=58 kg                   0    10014   13772
0-24 months   PROBIT           BELARUS                        >=58 kg                   1      265   13772
0-24 months   PROBIT           BELARUS                        <52 kg                    0     1088   13772
0-24 months   PROBIT           BELARUS                        <52 kg                    1       43   13772
0-24 months   PROBIT           BELARUS                        [52-58) kg                0     2294   13772
0-24 months   PROBIT           BELARUS                        [52-58) kg                1       68   13772
0-24 months   PROVIDE          BANGLADESH                     >=58 kg                   0      112     669
0-24 months   PROVIDE          BANGLADESH                     >=58 kg                   1        8     669
0-24 months   PROVIDE          BANGLADESH                     <52 kg                    0      356     669
0-24 months   PROVIDE          BANGLADESH                     <52 kg                    1       76     669
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg                0      107     669
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg                1       10     669
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                   0       96    1515
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                   1       17    1515
0-24 months   SAS-CompFeed     INDIA                          <52 kg                    0      725    1515
0-24 months   SAS-CompFeed     INDIA                          <52 kg                    1      435    1515
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg                0      193    1515
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg                1       49    1515
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                   0     1351    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                   1      125    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                    0      333    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                    1       60    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg                0      435    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg                1       48    2352
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                   0     4997   11204
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                   1      846   11204
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                    0     1786   11204
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                    1      622   11204
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg                0     2364   11204
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg                1      589   11204
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg                   0      595   27130
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg                   1       73   27130
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                    0    20989   27130
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                    1     3703   27130
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg                0     1548   27130
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg                1      222   27130
0-6 months    LCNI-5           MALAWI                         >=58 kg                   0       30     271
0-6 months    LCNI-5           MALAWI                         >=58 kg                   1        3     271
0-6 months    LCNI-5           MALAWI                         <52 kg                    0      151     271
0-6 months    LCNI-5           MALAWI                         <52 kg                    1       16     271
0-6 months    LCNI-5           MALAWI                         [52-58) kg                0       70     271
0-6 months    LCNI-5           MALAWI                         [52-58) kg                1        1     271
0-6 months    MAL-ED           BANGLADESH                     >=58 kg                   0       47     254
0-6 months    MAL-ED           BANGLADESH                     >=58 kg                   1        1     254
0-6 months    MAL-ED           BANGLADESH                     <52 kg                    0      146     254
0-6 months    MAL-ED           BANGLADESH                     <52 kg                    1       16     254
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg                0       42     254
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg                1        2     254
0-6 months    MAL-ED           BRAZIL                         >=58 kg                   0      135     221
0-6 months    MAL-ED           BRAZIL                         >=58 kg                   1        8     221
0-6 months    MAL-ED           BRAZIL                         <52 kg                    0       40     221
0-6 months    MAL-ED           BRAZIL                         <52 kg                    1        2     221
0-6 months    MAL-ED           BRAZIL                         [52-58) kg                0       30     221
0-6 months    MAL-ED           BRAZIL                         [52-58) kg                1        6     221
0-6 months    MAL-ED           INDIA                          >=58 kg                   0       41     242
0-6 months    MAL-ED           INDIA                          >=58 kg                   1        1     242
0-6 months    MAL-ED           INDIA                          <52 kg                    0      135     242
0-6 months    MAL-ED           INDIA                          <52 kg                    1       15     242
0-6 months    MAL-ED           INDIA                          [52-58) kg                0       46     242
0-6 months    MAL-ED           INDIA                          [52-58) kg                1        4     242
0-6 months    MAL-ED           NEPAL                          >=58 kg                   0       78     238
0-6 months    MAL-ED           NEPAL                          >=58 kg                   1        2     238
0-6 months    MAL-ED           NEPAL                          <52 kg                    0       68     238
0-6 months    MAL-ED           NEPAL                          <52 kg                    1        8     238
0-6 months    MAL-ED           NEPAL                          [52-58) kg                0       82     238
0-6 months    MAL-ED           NEPAL                          [52-58) kg                1        0     238
0-6 months    MAL-ED           PERU                           >=58 kg                   0       90     290
0-6 months    MAL-ED           PERU                           >=58 kg                   1       14     290
0-6 months    MAL-ED           PERU                           <52 kg                    0      101     290
0-6 months    MAL-ED           PERU                           <52 kg                    1       14     290
0-6 months    MAL-ED           PERU                           [52-58) kg                0       62     290
0-6 months    MAL-ED           PERU                           [52-58) kg                1        9     290
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg                   0      177     270
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg                   1       17     270
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                    0       24     270
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                    1        6     270
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg                0       42     270
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg                1        4     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                   0       87     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                   1       11     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                    0       81     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                    1       18     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg                0       51     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg                1        8     256
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg                   0       76     629
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg                   1        6     629
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                    0      407     629
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                    1       46     629
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg                0       87     629
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg                1        7     629
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg                   0      187     755
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg                   1        5     755
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                    0      376     755
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                    1       30     755
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg                0      145     755
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg                1       12     755
0-6 months    PROBIT           BELARUS                        >=58 kg                   0    10182   13772
0-6 months    PROBIT           BELARUS                        >=58 kg                   1       97   13772
0-6 months    PROBIT           BELARUS                        <52 kg                    0     1117   13772
0-6 months    PROBIT           BELARUS                        <52 kg                    1       14   13772
0-6 months    PROBIT           BELARUS                        [52-58) kg                0     2338   13772
0-6 months    PROBIT           BELARUS                        [52-58) kg                1       24   13772
0-6 months    PROVIDE          BANGLADESH                     >=58 kg                   0      116     669
0-6 months    PROVIDE          BANGLADESH                     >=58 kg                   1        4     669
0-6 months    PROVIDE          BANGLADESH                     <52 kg                    0      411     669
0-6 months    PROVIDE          BANGLADESH                     <52 kg                    1       21     669
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg                0      111     669
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg                1        6     669
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                   0      108    1512
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                   1        5    1512
0-6 months    SAS-CompFeed     INDIA                          <52 kg                    0      958    1512
0-6 months    SAS-CompFeed     INDIA                          <52 kg                    1      200    1512
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg                0      221    1512
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg                1       20    1512
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                   0     1428    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                   1       48    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                    0      365    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                    1       28    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg                0      458    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg                1       25    2352
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg                   0     5381   11190
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg                   1      456   11190
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                    0     2064   11190
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                    1      341   11190
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg                0     2635   11190
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg                1      313   11190


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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




# Results Detail

## Results Plots
![](/tmp/823541a4-afcc-447c-bca6-4345cda8a47b/0d76f7ec-7736-413a-8ae1-df2490c2fa15/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/823541a4-afcc-447c-bca6-4345cda8a47b/0d76f7ec-7736-413a-8ae1-df2490c2fa15/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/823541a4-afcc-447c-bca6-4345cda8a47b/0d76f7ec-7736-413a-8ae1-df2490c2fa15/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/823541a4-afcc-447c-bca6-4345cda8a47b/0d76f7ec-7736-413a-8ae1-df2490c2fa15/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0719358   0.0473379   0.0965336
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1400046   0.1143664   0.1656427
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0940839   0.0655968   0.1225711
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.1659893   0.1420538   0.1899247
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.1863643   0.1805538   0.1921748
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.1696590   0.1510677   0.1882504
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.1009868   0.0430651   0.1589085
0-24 months   LCNI-5           MALAWI                         <52 kg               NA                0.2663969   0.2277262   0.3050676
0-24 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.1351173   0.0887182   0.1815163
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.1428571   0.0368097   0.2489046
0-24 months   MAL-ED           INDIA                          <52 kg               NA                0.2533333   0.1835886   0.3230780
0-24 months   MAL-ED           INDIA                          [52-58) kg           NA                0.2800000   0.1552882   0.4047118
0-24 months   MAL-ED           PERU                           >=58 kg              NA                0.1391187   0.0745904   0.2036471
0-24 months   MAL-ED           PERU                           <52 kg               NA                0.2330448   0.1548687   0.3112208
0-24 months   MAL-ED           PERU                           [52-58) kg           NA                0.2447263   0.1396306   0.3498220
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.2063319   0.1488374   0.2638264
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.4802864   0.3014055   0.6591673
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.3319740   0.1831549   0.4807931
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.4781009   0.3778929   0.5783090
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.6137155   0.5170990   0.7103320
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.4749106   0.3464940   0.6033272
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2138056   0.1199480   0.3076631
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.3521023   0.3079451   0.3962594
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2077677   0.1260768   0.2894586
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0601964   0.0238109   0.0965819
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1609596   0.1253446   0.1965746
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.1327028   0.0788827   0.1865229
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0260513   0.0186058   0.0334968
0-24 months   PROBIT           BELARUS                        <52 kg               NA                0.0375646   0.0223215   0.0528076
0-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.0302972   0.0194441   0.0411503
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.0666667   0.0220029   0.1113304
0-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.1759259   0.1399941   0.2118577
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.0854701   0.0347726   0.1361675
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.2016896   0.1326257   0.2707535
0-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.3636297   0.3271629   0.4000964
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.2061081   0.1311438   0.2810724
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0847729   0.0704805   0.0990653
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1584996   0.1215825   0.1954168
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1009752   0.0725299   0.1294204
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1443559   0.1352635   0.1534483
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2604986   0.2425662   0.2784310
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2037763   0.1888384   0.2187143
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.1301444   0.1084360   0.1518528
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                0.1487149   0.1434986   0.1539313
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.1352398   0.1186227   0.1518569
0-6 months    MAL-ED           PERU                           >=58 kg              NA                0.1346154   0.0689051   0.2003257
0-6 months    MAL-ED           PERU                           <52 kg               NA                0.1217391   0.0618737   0.1816046
0-6 months    MAL-ED           PERU                           [52-58) kg           NA                0.1267606   0.0492381   0.2042831
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1122449   0.0496246   0.1748652
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1818182   0.1056938   0.2579426
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1355932   0.0480646   0.2231218
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0731707   0.0167608   0.1295806
0-6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                0.1015453   0.0737083   0.1293823
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.0744681   0.0213539   0.1275823
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0260417   0.0034998   0.0485835
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                0.0738916   0.0484291   0.0993541
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.0764331   0.0348458   0.1180205
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0094679   0.0061651   0.0127707
0-6 months    PROBIT           BELARUS                        <52 kg               NA                0.0121334   0.0019736   0.0222932
0-6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.0101028   0.0032164   0.0169891
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.0442478   0.0170549   0.0714407
0-6 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.1727116   0.1479652   0.1974580
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                0.0829876   0.0537728   0.1122023
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0339284   0.0244780   0.0433787
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0742425   0.0478932   0.1005918
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0515556   0.0306515   0.0724597
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0778445   0.0709067   0.0847822
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1418053   0.1274568   0.1561537
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1086333   0.0970408   0.1202258


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1050995   0.0855497   0.1246493
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1844757   0.1788759   0.1900754
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.2112172   0.1835650   0.2388693
0-24 months   MAL-ED           INDIA                          NA                   NA                0.2396694   0.1857746   0.2935643
0-24 months   MAL-ED           PERU                           NA                   NA                0.2172414   0.1696986   0.2647841
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2592593   0.2068905   0.3116280
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5312500   0.4700011   0.5924989
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1311258   0.1070332   0.1552185
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0273018   0.0201306   0.0344729
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1405082   0.1141551   0.1668613
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3306931   0.3017014   0.3596847
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0990646   0.0869885   0.1111408
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1835951   0.1764261   0.1907642
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1473645   0.1423155   0.1524136
0-6 months    MAL-ED           PERU                           NA                   NA                0.1275862   0.0891215   0.1660509
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1445312   0.1013733   0.1876892
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0622517   0.0450059   0.0794974
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0098025   0.0063729   0.0132321
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1488095   0.1307571   0.1668620
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0429422   0.0347475   0.0511369
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0991957   0.0936569   0.1047345


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.9462442   1.4211428   2.665366
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3078880   0.9005506   1.899472
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.1227491   0.9721137   1.296726
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.0221085   0.8528821   1.224913
0-24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           2.6379381   1.4593368   4.768410
0-24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.3379697   0.6858149   2.610271
0-24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           1.7733333   0.8034193   3.914159
0-24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           1.9600000   0.8246831   4.658274
0-24 months   MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           <52 kg               >=58 kg           1.6751502   0.9440312   2.972495
0-24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           1.7591185   0.9327916   3.317459
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           2.3277370   1.4600049   3.711193
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           1.6089319   0.9467438   2.734279
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2836526   0.9874295   1.668741
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9933271   0.7053254   1.398927
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.6468341   1.0427210   2.600947
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9717600   0.5390297   1.751884
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           2.6739090   1.4062733   5.084210
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           2.2044986   1.0641170   4.566992
0-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           1.4419484   0.9729252   2.137076
0-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1629852   0.8742659   1.547052
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           2.6388889   1.3099126   5.316183
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.2820513   0.5239569   3.137005
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.8029177   1.2366372   2.628509
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.0219077   0.6001578   1.740035
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.8696974   1.4022173   2.493029
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1911258   0.8576600   1.654246
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.8045583   1.6439178   1.980896
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4116246   1.2817204   1.554695
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.1426915   0.9673410   1.349828
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.0391518   0.8481491   1.273168
0-6 months    MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           PERU                           <52 kg               >=58 kg           0.9043478   0.4522910   1.808228
0-6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           0.9416499   0.4305852   2.059301
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6198347   0.8063817   3.253874
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2080123   0.5146756   2.835366
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.3877851   0.6123111   3.145374
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0177305   0.3560469   2.909098
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           2.8374384   1.1176468   7.203579
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           2.9350318   1.0558100   8.159055
0-6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           1.2815311   0.5476834   2.998671
0-6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0670525   0.5904805   1.928262
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           3.9032815   1.9049723   7.997810
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.8755187   1.0096478   3.483958
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           2.1882142   1.3931718   3.436964
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.5195435   0.9288116   2.485986
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.8216483   1.5919987   2.084426
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3955177   1.2144743   1.603549


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0331637    0.0173024   0.0490251
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0184864   -0.0048475   0.0418203
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.1102304    0.0533609   0.1670999
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                 0.0968123   -0.0044158   0.1980403
0-24 months   MAL-ED           PERU                           >=58 kg              NA                 0.0781227    0.0207408   0.1355045
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0529273    0.0160353   0.0898194
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0531491   -0.0256121   0.1319102
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0978002    0.0086447   0.1869556
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0709295    0.0345199   0.1073391
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0012505   -0.0003492   0.0028502
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                 0.0738416    0.0294153   0.1182678
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.1290035    0.0498653   0.2081417
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0142917    0.0044546   0.0241289
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0392392    0.0322209   0.0462576
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0172201   -0.0039025   0.0383427
0-6 months    MAL-ED           PERU                           >=58 kg              NA                -0.0070292   -0.0589949   0.0449366
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0322864   -0.0204551   0.0850278
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0206290   -0.0329654   0.0742233
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0362100    0.0128197   0.0596003
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.0003346   -0.0009497   0.0016189
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                 0.1045617    0.0641514   0.1449721
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0090138    0.0019626   0.0160651
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0213512    0.0159225   0.0267800


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3155461    0.1360864   0.4577269
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.1002105   -0.0356023   0.2182123
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.5218818    0.1697217   0.7246743
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                 0.4039409   -0.1982678   0.7034999
0-24 months   MAL-ED           PERU                           >=58 kg              NA                 0.3596122    0.0453448   0.5704245
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.2041483    0.0513958   0.3323033
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1000453   -0.0617724   0.2372014
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.3138587   -0.0408044   0.5476673
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.5409267    0.1875954   0.7405870
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0458032   -0.0167172   0.1044790
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                 0.5255319    0.1015731   0.7494287
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.3901004    0.1196287   0.5774766
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1442668    0.0404214   0.2368742
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.2137271    0.1751691   0.2504826
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.1168540   -0.0388261   0.2492036
0-6 months    MAL-ED           PERU                           >=58 kg              NA                -0.0550936   -0.5518361   0.2826418
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2233867   -0.2352083   0.5117193
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2199256   -0.6183339   0.6239861
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.5816711    0.0535431   0.8151009
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.0341336   -0.1028948   0.1541369
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                 0.7026549    0.4061002   0.8511295
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2099060    0.0332061   0.3543106
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.2152436    0.1597333   0.2670867
