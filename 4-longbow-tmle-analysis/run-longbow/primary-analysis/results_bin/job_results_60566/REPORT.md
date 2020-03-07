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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** predfeed6

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
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

agecat        studyid         country                        predfeed6    ever_co   n_cell       n
------------  --------------  -----------------------------  ----------  --------  -------  ------
0-24 months   EE              PAKISTAN                       1                  0       20      48
0-24 months   EE              PAKISTAN                       1                  1       23      48
0-24 months   EE              PAKISTAN                       0                  0        5      48
0-24 months   EE              PAKISTAN                       0                  1        0      48
0-24 months   GMS-Nepal       NEPAL                          1                  0      279     565
0-24 months   GMS-Nepal       NEPAL                          1                  1      141     565
0-24 months   GMS-Nepal       NEPAL                          0                  0       93     565
0-24 months   GMS-Nepal       NEPAL                          0                  1       52     565
0-24 months   JiVitA-3        BANGLADESH                     1                  0    11280   15902
0-24 months   JiVitA-3        BANGLADESH                     1                  1     1121   15902
0-24 months   JiVitA-3        BANGLADESH                     0                  0     3166   15902
0-24 months   JiVitA-3        BANGLADESH                     0                  1      335   15902
0-24 months   JiVitA-4        BANGLADESH                     1                  0     3154    4753
0-24 months   JiVitA-4        BANGLADESH                     1                  1      549    4753
0-24 months   JiVitA-4        BANGLADESH                     0                  0      834    4753
0-24 months   JiVitA-4        BANGLADESH                     0                  1      216    4753
0-24 months   LCNI-5          MALAWI                         1                  0       44     272
0-24 months   LCNI-5          MALAWI                         1                  1        3     272
0-24 months   LCNI-5          MALAWI                         0                  0      212     272
0-24 months   LCNI-5          MALAWI                         0                  1       13     272
0-24 months   MAL-ED          BANGLADESH                     1                  0       69     233
0-24 months   MAL-ED          BANGLADESH                     1                  1       16     233
0-24 months   MAL-ED          BANGLADESH                     0                  0      127     233
0-24 months   MAL-ED          BANGLADESH                     0                  1       21     233
0-24 months   MAL-ED          BRAZIL                         1                  0       29     210
0-24 months   MAL-ED          BRAZIL                         1                  1        1     210
0-24 months   MAL-ED          BRAZIL                         0                  0      178     210
0-24 months   MAL-ED          BRAZIL                         0                  1        2     210
0-24 months   MAL-ED          INDIA                          1                  0       11     219
0-24 months   MAL-ED          INDIA                          1                  1        0     219
0-24 months   MAL-ED          INDIA                          0                  0      161     219
0-24 months   MAL-ED          INDIA                          0                  1       47     219
0-24 months   MAL-ED          NEPAL                          1                  0       10     225
0-24 months   MAL-ED          NEPAL                          1                  1        2     225
0-24 months   MAL-ED          NEPAL                          0                  0      195     225
0-24 months   MAL-ED          NEPAL                          0                  1       18     225
0-24 months   MAL-ED          PERU                           1                  0       90     271
0-24 months   MAL-ED          PERU                           1                  1        2     271
0-24 months   MAL-ED          PERU                           0                  0      170     271
0-24 months   MAL-ED          PERU                           0                  1        9     271
0-24 months   MAL-ED          SOUTH AFRICA                   1                  0        3     237
0-24 months   MAL-ED          SOUTH AFRICA                   1                  1        0     237
0-24 months   MAL-ED          SOUTH AFRICA                   0                  0      214     237
0-24 months   MAL-ED          SOUTH AFRICA                   0                  1       20     237
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     235
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     235
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      211     235
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       23     235
0-24 months   SAS-FoodSuppl   INDIA                          1                  0        0     184
0-24 months   SAS-FoodSuppl   INDIA                          1                  1        0     184
0-24 months   SAS-FoodSuppl   INDIA                          0                  0      111     184
0-24 months   SAS-FoodSuppl   INDIA                          0                  1       73     184
0-6 months    EE              PAKISTAN                       1                  0       35      48
0-6 months    EE              PAKISTAN                       1                  1        8      48
0-6 months    EE              PAKISTAN                       0                  0        5      48
0-6 months    EE              PAKISTAN                       0                  1        0      48
0-6 months    GMS-Nepal       NEPAL                          1                  0      399     565
0-6 months    GMS-Nepal       NEPAL                          1                  1       21     565
0-6 months    GMS-Nepal       NEPAL                          0                  0      133     565
0-6 months    GMS-Nepal       NEPAL                          0                  1       12     565
0-6 months    JiVitA-3        BANGLADESH                     1                  0    11859   15873
0-6 months    JiVitA-3        BANGLADESH                     1                  1      519   15873
0-6 months    JiVitA-3        BANGLADESH                     0                  0     3351   15873
0-6 months    JiVitA-3        BANGLADESH                     0                  1      144   15873
0-6 months    JiVitA-4        BANGLADESH                     1                  0     3607    4703
0-6 months    JiVitA-4        BANGLADESH                     1                  1       78    4703
0-6 months    JiVitA-4        BANGLADESH                     0                  0      973    4703
0-6 months    JiVitA-4        BANGLADESH                     0                  1       45    4703
0-6 months    LCNI-5          MALAWI                         1                  0       47     272
0-6 months    LCNI-5          MALAWI                         1                  1        0     272
0-6 months    LCNI-5          MALAWI                         0                  0      225     272
0-6 months    LCNI-5          MALAWI                         0                  1        0     272
0-6 months    MAL-ED          BANGLADESH                     1                  0       83     233
0-6 months    MAL-ED          BANGLADESH                     1                  1        2     233
0-6 months    MAL-ED          BANGLADESH                     0                  0      141     233
0-6 months    MAL-ED          BANGLADESH                     0                  1        7     233
0-6 months    MAL-ED          BRAZIL                         1                  0       29     210
0-6 months    MAL-ED          BRAZIL                         1                  1        1     210
0-6 months    MAL-ED          BRAZIL                         0                  0      180     210
0-6 months    MAL-ED          BRAZIL                         0                  1        0     210
0-6 months    MAL-ED          INDIA                          1                  0       11     219
0-6 months    MAL-ED          INDIA                          1                  1        0     219
0-6 months    MAL-ED          INDIA                          0                  0      192     219
0-6 months    MAL-ED          INDIA                          0                  1       16     219
0-6 months    MAL-ED          NEPAL                          1                  0       12     225
0-6 months    MAL-ED          NEPAL                          1                  1        0     225
0-6 months    MAL-ED          NEPAL                          0                  0      207     225
0-6 months    MAL-ED          NEPAL                          0                  1        6     225
0-6 months    MAL-ED          PERU                           1                  0       92     271
0-6 months    MAL-ED          PERU                           1                  1        0     271
0-6 months    MAL-ED          PERU                           0                  0      178     271
0-6 months    MAL-ED          PERU                           0                  1        1     271
0-6 months    MAL-ED          SOUTH AFRICA                   1                  0        3     237
0-6 months    MAL-ED          SOUTH AFRICA                   1                  1        0     237
0-6 months    MAL-ED          SOUTH AFRICA                   0                  0      231     237
0-6 months    MAL-ED          SOUTH AFRICA                   0                  1        3     237
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     235
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     235
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      230     235
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     235
0-6 months    SAS-FoodSuppl   INDIA                          1                  0        0     183
0-6 months    SAS-FoodSuppl   INDIA                          1                  1        0     183
0-6 months    SAS-FoodSuppl   INDIA                          0                  0      157     183
0-6 months    SAS-FoodSuppl   INDIA                          0                  1       26     183
6-24 months   EE              PAKISTAN                       1                  0       23      47
6-24 months   EE              PAKISTAN                       1                  1       19      47
6-24 months   EE              PAKISTAN                       0                  0        5      47
6-24 months   EE              PAKISTAN                       0                  1        0      47
6-24 months   GMS-Nepal       NEPAL                          1                  0      278     557
6-24 months   GMS-Nepal       NEPAL                          1                  1      137     557
6-24 months   GMS-Nepal       NEPAL                          0                  0       94     557
6-24 months   GMS-Nepal       NEPAL                          0                  1       48     557
6-24 months   JiVitA-3        BANGLADESH                     1                  0     7189   10192
6-24 months   JiVitA-3        BANGLADESH                     1                  1      689   10192
6-24 months   JiVitA-3        BANGLADESH                     0                  0     2104   10192
6-24 months   JiVitA-3        BANGLADESH                     0                  1      210   10192
6-24 months   JiVitA-4        BANGLADESH                     1                  0     3195    4741
6-24 months   JiVitA-4        BANGLADESH                     1                  1      500    4741
6-24 months   JiVitA-4        BANGLADESH                     0                  0      850    4741
6-24 months   JiVitA-4        BANGLADESH                     0                  1      196    4741
6-24 months   LCNI-5          MALAWI                         1                  0       42     258
6-24 months   LCNI-5          MALAWI                         1                  1        3     258
6-24 months   LCNI-5          MALAWI                         0                  0      200     258
6-24 months   LCNI-5          MALAWI                         0                  1       13     258
6-24 months   MAL-ED          BANGLADESH                     1                  0       68     229
6-24 months   MAL-ED          BANGLADESH                     1                  1       16     229
6-24 months   MAL-ED          BANGLADESH                     0                  0      128     229
6-24 months   MAL-ED          BANGLADESH                     0                  1       17     229
6-24 months   MAL-ED          BRAZIL                         1                  0       30     207
6-24 months   MAL-ED          BRAZIL                         1                  1        0     207
6-24 months   MAL-ED          BRAZIL                         0                  0      175     207
6-24 months   MAL-ED          BRAZIL                         0                  1        2     207
6-24 months   MAL-ED          INDIA                          1                  0       11     217
6-24 months   MAL-ED          INDIA                          1                  1        0     217
6-24 months   MAL-ED          INDIA                          0                  0      164     217
6-24 months   MAL-ED          INDIA                          0                  1       42     217
6-24 months   MAL-ED          NEPAL                          1                  0       10     224
6-24 months   MAL-ED          NEPAL                          1                  1        2     224
6-24 months   MAL-ED          NEPAL                          0                  0      198     224
6-24 months   MAL-ED          NEPAL                          0                  1       14     224
6-24 months   MAL-ED          PERU                           1                  0       89     269
6-24 months   MAL-ED          PERU                           1                  1        2     269
6-24 months   MAL-ED          PERU                           0                  0      169     269
6-24 months   MAL-ED          PERU                           0                  1        9     269
6-24 months   MAL-ED          SOUTH AFRICA                   1                  0        3     235
6-24 months   MAL-ED          SOUTH AFRICA                   1                  1        0     235
6-24 months   MAL-ED          SOUTH AFRICA                   0                  0      214     235
6-24 months   MAL-ED          SOUTH AFRICA                   0                  1       18     235
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     231
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     231
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      209     231
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       21     231
6-24 months   SAS-FoodSuppl   INDIA                          1                  0        0     176
6-24 months   SAS-FoodSuppl   INDIA                          1                  1        0     176
6-24 months   SAS-FoodSuppl   INDIA                          0                  0      111     176
6-24 months   SAS-FoodSuppl   INDIA                          0                  1       65     176


The following strata were considered:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/39ac8197-ed4d-41c3-98b1-791c6dd5a6e1/154459b7-7b97-46a0-9319-d72e4164e01b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/39ac8197-ed4d-41c3-98b1-791c6dd5a6e1/154459b7-7b97-46a0-9319-d72e4164e01b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/39ac8197-ed4d-41c3-98b1-791c6dd5a6e1/154459b7-7b97-46a0-9319-d72e4164e01b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/39ac8197-ed4d-41c3-98b1-791c6dd5a6e1/154459b7-7b97-46a0-9319-d72e4164e01b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.3369442   0.2920003   0.3818880
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.3576379   0.2788754   0.4364004
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0908062   0.0853994   0.0962130
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0939885   0.0842602   0.1037168
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.1534824   0.1402663   0.1666986
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1841344   0.1594670   0.2088017
0-24 months   MAL-ED      BANGLADESH   1                    NA                0.1858673   0.1037473   0.2679873
0-24 months   MAL-ED      BANGLADESH   0                    NA                0.1423088   0.0855853   0.1990323
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0490404   0.0281694   0.0699114
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.0758656   0.0298242   0.1219070
0-6 months    JiVitA-3    BANGLADESH   1                    NA                0.0417482   0.0378631   0.0456332
0-6 months    JiVitA-3    BANGLADESH   0                    NA                0.0418440   0.0352288   0.0484592
0-6 months    JiVitA-4    BANGLADESH   1                    NA                0.0208733   0.0150757   0.0266708
0-6 months    JiVitA-4    BANGLADESH   0                    NA                0.0445038   0.0311321   0.0578755
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.3289697   0.2836494   0.3742900
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.3365307   0.2573335   0.4157279
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0875673   0.0809454   0.0941891
6-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0902968   0.0780006   0.1025930
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.1399217   0.1275171   0.1523262
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1664682   0.1425633   0.1903731
6-24 months   MAL-ED      BANGLADESH   1                    NA                0.1810989   0.0994612   0.2627367
6-24 months   MAL-ED      BANGLADESH   0                    NA                0.1200158   0.0663159   0.1737158


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.3415929   0.3024539   0.3807320
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0915608   0.0867079   0.0964137
0-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1609510   0.1491579   0.1727440
0-24 months   MAL-ED      BANGLADESH   NA                   NA                0.1587983   0.1117681   0.2058285
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.0584071   0.0390530   0.0777612
0-6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0417690   0.0384207   0.0451174
0-6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0261535   0.0207066   0.0316005
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.3321364   0.2929882   0.3712847
6-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0882064   0.0821266   0.0942862
6-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1468045   0.1358635   0.1577455
6-24 months   MAL-ED      BANGLADESH   NA                   NA                0.1441048   0.0985189   0.1896907


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 1.0614160   0.8216333   1.371176
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 1.0350450   0.9217191   1.162304
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 1.1997097   1.0257942   1.403111
0-24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED      BANGLADESH   0                    1                 0.7656475   0.4217398   1.389995
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 1.5470029   0.7367634   3.248285
0-6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3    BANGLADESH   0                    1                 1.0022953   0.8336642   1.205037
0-6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4    BANGLADESH   0                    1                 2.1320960   1.4300432   3.178808
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.0229840   0.7787197   1.343868
6-24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3    BANGLADESH   0                    1                 1.0311708   0.8886952   1.196488
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.1897243   1.0031464   1.411004
6-24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED      BANGLADESH   0                    1                 0.6627086   0.3508059   1.251925


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0046488   -0.0183611   0.0276586
0-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0007546   -0.0016272   0.0031364
0-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0074686    0.0010563   0.0138808
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0270690   -0.0902349   0.0360968
0-6 months    GMS-Nepal   NEPAL        1                    NA                 0.0093667   -0.0034471   0.0221805
0-6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0000209   -0.0016734   0.0017152
0-6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0052803    0.0022831   0.0082774
6-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0031667   -0.0199796   0.0263131
6-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0006391   -0.0023887   0.0036670
6-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0068828    0.0005830   0.0131826
6-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0369941   -0.0981690   0.0241807


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0136091   -0.0560856   0.0787043
0-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0082415   -0.0181198   0.0339203
0-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0464027    0.0056975   0.0854415
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.1704616   -0.6422099   0.1657703
0-6 months    GMS-Nepal   NEPAL        1                    NA                 0.1603694   -0.0843034   0.3498318
0-6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0005000   -0.0409024   0.0402557
0-6 months    JiVitA-4    BANGLADESH   1                    NA                 0.2018951    0.0772541   0.3097000
6-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0095345   -0.0626651   0.0768287
6-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0072460   -0.0276529   0.0409598
6-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0468841    0.0029883   0.0888474
6-24 months   MAL-ED      BANGLADESH   1                    NA                -0.2567169   -0.7553704   0.1002825
