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

agecat        studyid                    country                        predfeed36    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       13    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       30    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       30    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       48    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        6     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1       17     24
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        2    178
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        6    178
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       68    178
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       1      102    178
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        1     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        1     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       19     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       77     98
0-24 months   ki0047075b-MAL-ED          PERU                           1                       0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                       1        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                       0        5     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                       1       24     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       14     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       66     80
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        9     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       41     50
0-24 months   ki1000109-EE               PAKISTAN                       1                       0        1      4
0-24 months   ki1000109-EE               PAKISTAN                       1                       1        0      4
0-24 months   ki1000109-EE               PAKISTAN                       0                       0        0      4
0-24 months   ki1000109-EE               PAKISTAN                       0                       1        3      4
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      100    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        8    108
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      190    559
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      257    559
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       52    559
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       60    559
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5     34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       22     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5     34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     1676   3743
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1227   3743
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      495   3743
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      345   3743
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      949   1787
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      360   1787
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      344   1787
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      134   1787
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       0        3     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       1       15     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       0        9     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       1       33     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       1        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       1       13     15
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       0        2     83
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       1        4     83
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       0       24     83
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       1       53     83
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       0        1     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       1        1     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       0        8     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       1       38     48
0-6 months    ki0047075b-MAL-ED          PERU                           1                       0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                       1        2     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                       0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                       1        8     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        5     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       24     29
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       13     14
0-6 months    ki1000109-EE               PAKISTAN                       1                       0        1      3
0-6 months    ki1000109-EE               PAKISTAN                       1                       1        0      3
0-6 months    ki1000109-EE               PAKISTAN                       0                       0        0      3
0-6 months    ki1000109-EE               PAKISTAN                       0                       1        2      3
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       48     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     48
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       0       54    216
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       1      117    216
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       0       18    216
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       1       27    216
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       0      542   2265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1227   2265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       0      151   2265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      345   2265
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       0      136    516
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      226    516
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       0       75    516
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       79    516
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       10     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       15     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       21     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       15     61
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       44     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       49     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       11     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       39     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                       0        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                       1        2     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                       0        5     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                       1       16     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        9     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       42     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        8     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       28     36
6-24 months   ki1000109-EE               PAKISTAN                       1                       0        0      1
6-24 months   ki1000109-EE               PAKISTAN                       1                       1        0      1
6-24 months   ki1000109-EE               PAKISTAN                       0                       0        0      1
6-24 months   ki1000109-EE               PAKISTAN                       0                       1        1      1
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       52     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        8     60
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      136    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      140    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       34    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       33    343
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5     30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       18     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5     30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     1134   1478
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1        0   1478
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      344   1478
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1        0   1478
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      813   1271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      134   1271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      269   1271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       55   1271


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
![](/tmp/bc9cf1d0-f71a-48d3-a0f0-b91f4fe2d71e/b853695b-7eab-4bfd-b571-608d7bd85d74/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bc9cf1d0-f71a-48d3-a0f0-b91f4fe2d71e/b853695b-7eab-4bfd-b571-608d7bd85d74/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bc9cf1d0-f71a-48d3-a0f0-b91f4fe2d71e/b853695b-7eab-4bfd-b571-608d7bd85d74/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bc9cf1d0-f71a-48d3-a0f0-b91f4fe2d71e/b853695b-7eab-4bfd-b571-608d7bd85d74/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.7036931   0.5672927   0.8400936
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6178767   0.5009983   0.7347551
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5747315   0.5248953   0.6245677
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5397101   0.4293080   0.6501122
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4201452   0.4025286   0.4377617
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4165533   0.3849427   0.4481639
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2793289   0.2548245   0.3038332
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2730116   0.2330953   0.3129280
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6824947   0.6121949   0.7527946
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6097956   0.4615895   0.7580018
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.6943731   0.6730766   0.7156696
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6938034   0.6534580   0.7341487
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.5975753   0.5498138   0.6453368
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.5668650   0.5021994   0.6315305
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5889972   0.3837927   0.7942017
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.3944858   0.2328789   0.5560927
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5060832   0.4411759   0.5709905
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4860674   0.3604358   0.6116990
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1426180   0.1206260   0.1646100
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1675117   0.1261856   0.2088379


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6446281   0.5577732   0.7314830
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5670841   0.5219813   0.6121868
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4199840   0.4041851   0.4357828
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2764410   0.2550939   0.2977881
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6666667   0.6030996   0.7302337
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.6940397   0.6750581   0.7130214
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.5910853   0.5486247   0.6335459
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4918033   0.3610932   0.6225134
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5043732   0.4466684   0.5620780
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1487018   0.1295178   0.1678858


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8780485   0.6685529   1.153191
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9390648   0.7520860   1.172529
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9914510   0.9113858   1.078550
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9773841   0.8299003   1.151078
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.8934804   0.6864638   1.162927
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9991794   0.9360848   1.066527
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9486084   0.8400520   1.071193
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6697584   0.3887932   1.153766
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9604496   0.7203461   1.280584
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1745482   0.8778002   1.571614


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0590650   -0.1762489   0.0581188
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0076474   -0.0308446   0.0155497
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0001612   -0.0080138   0.0076914
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0028879   -0.0144814   0.0087056
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0158280   -0.0497730   0.0181169
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003334   -0.0101812   0.0095144
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0064900   -0.0269389   0.0139589
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0971939   -0.2530760   0.0586881
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0017100   -0.0289205   0.0255005
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0060838   -0.0057529   0.0179205


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0916265   -0.2918214   0.0775440
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0134855   -0.0552902   0.0266631
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003838   -0.0192571   0.0181400
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0104468   -0.0532583   0.0306245
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0237421   -0.0761380   0.0261027
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0004804   -0.0147708   0.0136088
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0109799   -0.0461552   0.0230128
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1976277   -0.5649256   0.0834631
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0033903   -0.0587989   0.0491186
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0409129   -0.0419647   0.1171984
