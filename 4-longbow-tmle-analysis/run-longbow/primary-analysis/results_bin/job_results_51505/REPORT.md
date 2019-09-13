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

agecat        studyid                    country                        predfeed6    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      101     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       24     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       98     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       15     238
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       36     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      174     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     212
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        2     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      165     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       50     234
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       25     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        4     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      189     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       17     235
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0      113     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      148     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      224     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       21     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      223     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       23     248
0-24 months   ki1000109-EE               PAKISTAN                       1                  0      141     379
0-24 months   ki1000109-EE               PAKISTAN                       1                  1       82     379
0-24 months   ki1000109-EE               PAKISTAN                       0                  0       94     379
0-24 months   ki1000109-EE               PAKISTAN                       0                  1       62     379
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       73     184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      283     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      136     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       96     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       50     565
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    19205   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1548   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4906   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      818   26477
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3155    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      550    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      804    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      213    4722
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      122     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        3     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      107     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        6     238
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       36     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      176     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     212
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0       18     234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        1     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0      199     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       16     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       28     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        1     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      200     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        6     235
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0      114     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      155     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        1     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      241     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        4     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      242     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     248
0-6 months    ki1000109-EE               PAKISTAN                       1                  0      198     379
0-6 months    ki1000109-EE               PAKISTAN                       1                  1       25     379
0-6 months    ki1000109-EE               PAKISTAN                       0                  0      128     379
0-6 months    ki1000109-EE               PAKISTAN                       0                  1       28     379
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       26     183
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      407     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       12     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      135     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       11     565
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    20146   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      593   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     5256   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      455   26450
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3623    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       78    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      964    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       44    4709
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      101     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       23     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       97     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       12     233
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       35     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      170     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        1     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      168     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       45     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       26     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        3     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      192     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       13     234
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0      111     267
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     267
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      147     267
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        8     267
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      224     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       19     246
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      219     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       21     242
6-24 months   ki1000109-EE               PAKISTAN                       1                  0      142     373
6-24 months   ki1000109-EE               PAKISTAN                       1                  1       76     373
6-24 months   ki1000109-EE               PAKISTAN                       0                  0       99     373
6-24 months   ki1000109-EE               PAKISTAN                       0                  1       56     373
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       65     176
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      279     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      135     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       95     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       48     557
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    12526   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1049   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3109   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      443   17127
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3197    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      501    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      819    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      194    4711


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ee7d9209-3710-4cbd-b674-035763a74eca/3a139764-11dc-4133-a016-5da5a33ff167/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ee7d9209-3710-4cbd-b674-035763a74eca/3a139764-11dc-4133-a016-5da5a33ff167/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ee7d9209-3710-4cbd-b674-035763a74eca/3a139764-11dc-4133-a016-5da5a33ff167/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ee7d9209-3710-4cbd-b674-035763a74eca/3a139764-11dc-4133-a016-5da5a33ff167/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1930850   0.1231334   0.2630367
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1328957   0.0697038   0.1960876
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3794654   0.3160119   0.4429189
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3759237   0.2997678   0.4520796
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3261927   0.2813688   0.3710165
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3384877   0.2605375   0.4164380
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0794282   0.0753033   0.0835530
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1197587   0.1110948   0.1284226
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1538747   0.1407171   0.1670324
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1859238   0.1619110   0.2099366
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1102249   0.0686284   0.1518215
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1714219   0.1109929   0.2318509
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0286684   0.0127190   0.0446177
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0809559   0.0379815   0.1239304
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0321399   0.0296512   0.0346287
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0607483   0.0548032   0.0666935
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0210929   0.0152969   0.0268890
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0424044   0.0289371   0.0558716
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1774556   0.1085462   0.2463650
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1007462   0.0412084   0.1602840
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3517485   0.2885851   0.4149120
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3578615   0.2812143   0.4345086
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3254852   0.2803471   0.3706234
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3370945   0.2589001   0.4152890
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0806562   0.0756562   0.0856563
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1100608   0.0990690   0.1210525
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1403973   0.1279232   0.1528715
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1699109   0.1464156   0.1934061


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1638655   0.1167401   0.2109910
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3799472   0.3310169   0.4288776
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3292035   0.2904210   0.3679861
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0893606   0.0854348   0.0932864
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1615841   0.1496375   0.1735306
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1398417   0.1048786   0.1748048
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0407080   0.0243991   0.0570168
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0396219   0.0371297   0.0421141
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0259078   0.0204779   0.0313377
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1502146   0.1042403   0.1961889
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3538874   0.3052956   0.4024792
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3285458   0.2895051   0.3675864
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0871139   0.0824317   0.0917961
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1475271   0.1364035   0.1586506


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6882756   0.3783132   1.252199
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.9906667   0.7644063   1.283899
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0376927   0.7931871   1.357569
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5077616   1.3867481   1.639335
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2082801   1.0409938   1.402449
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 1.5552008   0.9277550   2.606992
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.8238748   1.3066776   6.102706
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.8901199   1.6837974   2.121724
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.0103582   1.3334265   3.030943
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.5677263   0.2793657   1.153732
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.0173788   0.7701059   1.344048
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0356676   0.7908079   1.356344
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.3645657   1.2165703   1.530565
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2102145   1.0298051   1.422230


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0292195   -0.0743209   0.0158820
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0004818   -0.0403667   0.0413303
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0030109   -0.0202099   0.0262317
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0099324    0.0077419   0.0121229
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0077093    0.0016745   0.0137442
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0296167   -0.0009347   0.0601682
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0120396    0.0001015   0.0239777
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0074820    0.0059323   0.0090317
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0048149    0.0017619   0.0078678
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0272410   -0.0704983   0.0160163
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0021389   -0.0387452   0.0430229
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0030605   -0.0199009   0.0260220
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0064577    0.0038756   0.0090397
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0071297    0.0012309   0.0130286


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1783137   -0.4846424   0.0648097
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0012681   -0.1122414   0.1031935
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0091460   -0.0639485   0.0772188
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1111498    0.0867324   0.1349144
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0477110    0.0096006   0.0843548
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.2117877   -0.0344762   0.3994268
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2957548   -0.0323151   0.5195640
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1888346    0.1508237   0.2251440
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1858468    0.0586879   0.2958283
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1813471   -0.5006289   0.0700026
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0060440   -0.1164595   0.1151057
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0093154   -0.0630971   0.0767955
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0741290    0.0443453   0.1029845
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0483283    0.0074032   0.0875661
