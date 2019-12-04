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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        predfeed6    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       15    114
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       30    114
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       25    114
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       44    114
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       17     24
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0    162
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        2    162
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       62    162
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       98    162
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1     94
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        2     94
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       18     94
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       73     94
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        6     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       22     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     75
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     75
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       11     75
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       64     75
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        9     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       41     50
0-24 months   ki1000109-EE               PAKISTAN                       1                      0       15     34
0-24 months   ki1000109-EE               PAKISTAN                       1                      1       16     34
0-24 months   ki1000109-EE               PAKISTAN                       0                      0        0     34
0-24 months   ki1000109-EE               PAKISTAN                       0                      1        3     34
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      100    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8    108
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      192    594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      251    594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       70    594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       81    594
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5     34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       22     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5     34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2004   4526
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1506   4526
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      594   4526
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      422   4526
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      986   1841
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      372   1841
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      349   1841
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      134   1841
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        4     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1       14     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        8     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       32     58
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1       13     15
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        0     72
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1        1     72
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       20     72
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       51     72
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        0     44
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        1     44
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        8     44
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       35     44
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        3     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1        7     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        4     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       24     28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       13     14
0-6 months    ki1000109-EE               PAKISTAN                       1                      0        6     15
0-6 months    ki1000109-EE               PAKISTAN                       1                      1        7     15
0-6 months    ki1000109-EE               PAKISTAN                       0                      0        0     15
0-6 months    ki1000109-EE               PAKISTAN                       0                      1        2     15
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       48     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0     48
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0       54    228
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1      116    228
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0       24    228
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1       34    228
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0      702   2832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1506   2832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      202   2832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      422   2832
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      141    526
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      229    526
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0       77    526
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       79    526
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       11     56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       16     56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       17     56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       12     56
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0     90
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        1     90
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       42     90
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       47     90
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       10     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       38     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        2     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        3     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       15     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        7     47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       40     47
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        8     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       28     36
6-24 months   ki1000109-EE               PAKISTAN                       1                      0        9     19
6-24 months   ki1000109-EE               PAKISTAN                       1                      1        9     19
6-24 months   ki1000109-EE               PAKISTAN                       0                      0        0     19
6-24 months   ki1000109-EE               PAKISTAN                       0                      1        1     19
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       52     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8     60
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      138    366
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      135    366
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       46    366
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       47    366
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5     30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       18     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5     30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1302   1694
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0   1694
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      392   1694
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0   1694
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      845   1315
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      143   1315
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      272   1315
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       55   1315


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/cd6d3261-2135-48eb-b68b-ff4840eba26d/40311fdc-0bef-42e2-80c1-e2bb88d0873b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cd6d3261-2135-48eb-b68b-ff4840eba26d/40311fdc-0bef-42e2-80c1-e2bb88d0873b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cd6d3261-2135-48eb-b68b-ff4840eba26d/40311fdc-0bef-42e2-80c1-e2bb88d0873b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cd6d3261-2135-48eb-b68b-ff4840eba26d/40311fdc-0bef-42e2-80c1-e2bb88d0873b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6400471   0.5064151   0.7736791
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6194977   0.4933562   0.7456392
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5682498   0.5181912   0.6183083
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5471050   0.4574213   0.6367887
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4266101   0.4105981   0.4426220
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4216247   0.3928853   0.4503641
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2751309   0.2512270   0.2990348
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2769606   0.2394553   0.3144658
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6837027   0.6130805   0.7543249
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5865265   0.4548835   0.7181694
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.6822398   0.6630272   0.7014523
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6737579   0.6374359   0.7100800
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.5969030   0.5495843   0.6442217
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.5508750   0.4869850   0.6147651
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6147429   0.4237978   0.8056881
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4298755   0.2357624   0.6239886
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4978627   0.4332669   0.5624586
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5000846   0.3897694   0.6103998
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1458924   0.1241991   0.1675858
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1630208   0.1230267   0.2030149


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6491228   0.5591034   0.7391422
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5589226   0.5151400   0.6027051
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4259832   0.4115786   0.4403878
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2748506   0.2539041   0.2957971
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6578947   0.5956613   0.7201282
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.6807910   0.6636189   0.6979630
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.5855513   0.5434121   0.6276905
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.5000000   0.3630175   0.6369825
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4972678   0.4417121   0.5528234
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1505703   0.1316510   0.1694897


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9678940   0.7211023   1.299148
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9627896   0.7993071   1.159709
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9883140   0.9165557   1.065690
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0066503   0.8641097   1.172704
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.8578677   0.6698032   1.098736
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9875677   0.9299458   1.048760
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9228887   0.8156441   1.044234
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6992769   0.4028386   1.213856
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0044628   0.7791038   1.295008
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1174040   0.8386502   1.488811


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0090757   -0.1025579   0.1207093
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0093272   -0.0356999   0.0170454
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0006269   -0.0077689   0.0065152
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0002803   -0.0112725   0.0107120
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0258080   -0.0639814   0.0123655
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0014488   -0.0103902   0.0074926
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0113517   -0.0316744   0.0089710
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1147429   -0.2645027   0.0350169
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0005950   -0.0320654   0.0308755
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0046779   -0.0067393   0.0160951


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0139815   -0.1736052   0.1715848
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0166878   -0.0650668   0.0294936
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0014716   -0.0183792   0.0151554
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0010197   -0.0418209   0.0381837
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0392281   -0.0993093   0.0175695
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0021281   -0.0153495   0.0109211
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0193863   -0.0546774   0.0147239
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2294858   -0.5860165   0.0468981
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0011965   -0.0665225   0.0601282
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0310678   -0.0477401   0.1039481
