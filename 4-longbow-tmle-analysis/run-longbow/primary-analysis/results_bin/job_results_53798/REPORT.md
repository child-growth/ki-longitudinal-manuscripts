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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** predfeed36

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

agecat        studyid                    country                        predfeed36    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  -----------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       81    247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        3    247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      153    247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1       10    247
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       27    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      188    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        2    217
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       16    238
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        1    238
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      201    238
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       20    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        8    236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        1    236
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      224    236
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1        3    236
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0       78    282
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        0    282
0-24 months   ki0047075b-MAL-ED          PERU                           0                     0      203    282
0-24 months   ki0047075b-MAL-ED          PERU                           0                     1        1    282
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        5    271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0    271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      264    271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2    271
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        5    249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      244    249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
0-24 months   ki1000109-EE               PAKISTAN                       1                     0        4      9
0-24 months   ki1000109-EE               PAKISTAN                       1                     1        0      9
0-24 months   ki1000109-EE               PAKISTAN                       0                     0        5      9
0-24 months   ki1000109-EE               PAKISTAN                       0                     1        0      9
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        0    166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0    166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      136    166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       30    166
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      369    528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       54    528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0       90    528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       15    528
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       42    240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0    240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      195    240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     1        3    240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     5971   8221
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      363   8221
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1774   8221
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      113   8221
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3243   4495
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      252   4495
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      896   4495
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      104   4495
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0       81    247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1        3    247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     0      159    247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     1        4    247
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0       27    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     0      189    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     1        1    217
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       16    237
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        1    237
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     0      202    237
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     1       18    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0        8    236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        1    236
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     0      221    236
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     1        6    236
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0       78    282
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        0    282
0-6 months    ki0047075b-MAL-ED          PERU                           0                     0      204    282
0-6 months    ki0047075b-MAL-ED          PERU                           0                     1        0    282
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        5    270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0    270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      263    270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2    270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        5    249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      244    249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
0-6 months    ki1000109-EE               PAKISTAN                       1                     0        4      9
0-6 months    ki1000109-EE               PAKISTAN                       1                     1        0      9
0-6 months    ki1000109-EE               PAKISTAN                       0                     0        5      9
0-6 months    ki1000109-EE               PAKISTAN                       0                     1        0      9
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0      380    520
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1       37    520
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     0       86    520
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     1       17    520
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0       11     19
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1        2     19
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     0        6     19
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     1        0     19
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       81    247
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        3    247
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      153    247
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1       10    247
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       27    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      188    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        2    217
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       16    238
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        1    238
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      201    238
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       20    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        8    236
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        1    236
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      224    236
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1        3    236
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0       78    282
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        0    282
6-24 months   ki0047075b-MAL-ED          PERU                           0                     0      203    282
6-24 months   ki0047075b-MAL-ED          PERU                           0                     1        1    282
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        5    271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0    271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      264    271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2    271
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        5    249
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      244    249
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
6-24 months   ki1000109-EE               PAKISTAN                       1                     0        4      9
6-24 months   ki1000109-EE               PAKISTAN                       1                     1        0      9
6-24 months   ki1000109-EE               PAKISTAN                       0                     0        5      9
6-24 months   ki1000109-EE               PAKISTAN                       0                     1        0      9
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        0    166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0    166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      136    166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       30    166
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      369    528
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       54    528
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0       90    528
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       15    528
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       42    240
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0    240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      195    240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     1        3    240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     5971   8221
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      363   8221
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1774   8221
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      113   8221
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3243   4495
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      252   4495
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      896   4495
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      104   4495


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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1eb5f1bc-9d55-435e-b2ca-dd9cc489a6ed/d3877dab-c4ae-4cad-adeb-5685532ad08d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1eb5f1bc-9d55-435e-b2ca-dd9cc489a6ed/d3877dab-c4ae-4cad-adeb-5685532ad08d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1eb5f1bc-9d55-435e-b2ca-dd9cc489a6ed/d3877dab-c4ae-4cad-adeb-5685532ad08d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1eb5f1bc-9d55-435e-b2ca-dd9cc489a6ed/d3877dab-c4ae-4cad-adeb-5685532ad08d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1279885   0.0960969   0.1598800
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1453382   0.0784377   0.2122386
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0568642   0.0500957   0.0636326
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0622711   0.0509598   0.0735823
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0755796   0.0650629   0.0860962
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0895639   0.0705434   0.1085844
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0885744   0.0611624   0.1159865
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1604078   0.0860791   0.2347366
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1273791   0.0955100   0.1592481
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1416423   0.0732737   0.2100109
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0569347   0.0501573   0.0637121
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0617501   0.0503920   0.0731083
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0754191   0.0650616   0.0857767
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0903425   0.0713657   0.1093192


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1306818   0.1019052   0.1594584
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0579005   0.0521352   0.0636658
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0791991   0.0699871   0.0884111
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1038462   0.0776009   0.1300914
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1306818   0.1019052   0.1594584
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0579005   0.0521352   0.0636658
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0791991   0.0699871   0.0884111


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.135557   0.6727198   1.916829
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.095085   0.8791288   1.364089
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.185027   0.9240256   1.519752
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.810995   1.0362322   3.165026
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.111975   0.6454921   1.915574
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.084579   0.8689422   1.353727
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.197872   0.9382573   1.529321


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0026934   -0.0121263   0.0175130
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0010363   -0.0020073   0.0040800
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0036195   -0.0013725   0.0086115
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0152717   -0.0002758   0.0308193
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0033027   -0.0114995   0.0181050
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0009658   -0.0020920   0.0040236
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0037800   -0.0010884   0.0086483


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0206100   -0.0995379   0.1276292
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0178987   -0.0363094   0.0692712
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0457017   -0.0197468   0.1069497
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1470610   -0.0123333   0.2813583
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0252732   -0.0947617   0.1321468
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0166807   -0.0377684   0.0682730
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0477273   -0.0159519   0.1074152
