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

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_birthwt
* W_birthlen
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
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_birthwt
* delta_W_birthlen
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

agecat        studyid                   country                        earlybf    wast_rec90d   n_cell      n
------------  ------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0       26    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1       46    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0       18    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1       32    122
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0        3     23
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1        5     23
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0        3     23
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1       12     23
0-24 months   ki0047075b-MAL-ED         INDIA                          1                    0       44    178
0-24 months   ki0047075b-MAL-ED         INDIA                          1                    1       62    178
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    0       27    178
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    1       45    178
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0        9     93
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1       33     93
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0       11     93
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1       40     93
0-24 months   ki0047075b-MAL-ED         PERU                           1                    0        5     34
0-24 months   ki0047075b-MAL-ED         PERU                           1                    1       25     34
0-24 months   ki0047075b-MAL-ED         PERU                           0                    0        1     34
0-24 months   ki0047075b-MAL-ED         PERU                           0                    1        3     34
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        8     80
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       42     80
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        6     80
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       24     80
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        6     45
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       35     45
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        2     45
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        2     45
0-24 months   ki1000109-EE              PAKISTAN                       1                    0       23    257
0-24 months   ki1000109-EE              PAKISTAN                       1                    1       14    257
0-24 months   ki1000109-EE              PAKISTAN                       0                    0      127    257
0-24 months   ki1000109-EE              PAKISTAN                       0                    1       93    257
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    0       33    810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1       29    810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    0      467    810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1      281    810
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      104    311
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1      171    311
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       13    311
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1       23    311
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0       58    505
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1       75    505
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0      183    505
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1      189    505
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      752   3236
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      821   3236
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      713   3236
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      950   3236
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0       43   7566
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1       13   7566
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0     4324   7566
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     3186   7566
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0      958   2069
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      357   2069
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0      576   2069
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      178   2069
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0        7     62
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1       30     62
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0        6     62
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1       19     62
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                    0        1     14
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1        4     14
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    0        0     14
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1        9     14
0-6 months    ki0047075b-MAL-ED         INDIA                          1                    0       14     83
0-6 months    ki0047075b-MAL-ED         INDIA                          1                    1       33     83
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    0       12     83
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    1       24     83
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                    0        5     43
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                    1       15     43
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    0        4     43
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    1       19     43
0-6 months    ki0047075b-MAL-ED         PERU                           1                    0        0     11
0-6 months    ki0047075b-MAL-ED         PERU                           1                    1        9     11
0-6 months    ki0047075b-MAL-ED         PERU                           0                    0        0     11
0-6 months    ki0047075b-MAL-ED         PERU                           0                    1        2     11
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        3     30
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       14     30
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        2     30
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       11     30
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        1     12
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       10     12
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        0     12
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        1     12
0-6 months    ki1000109-EE              PAKISTAN                       1                    0        8    108
0-6 months    ki1000109-EE              PAKISTAN                       1                    1        8    108
0-6 months    ki1000109-EE              PAKISTAN                       0                    0       39    108
0-6 months    ki1000109-EE              PAKISTAN                       0                    1       53    108
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0       12    337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1       18    337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0      150    337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1      157    337
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0       13    198
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1      155    198
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0        8    198
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1       22    198
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                    0       22    164
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1       20    164
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    0       50    164
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1       72    164
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      273   2288
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      772   2288
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      308   2288
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      935   2288
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0       38   4729
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1       13   4729
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0     1492   4729
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1     3186   4729
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0      152    553
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1      207    553
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0       92    553
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1      102    553
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0       19     60
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1       16     60
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0       12     60
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1       13     60
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0        2      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1        1      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0        3      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1        3      9
6-24 months   ki0047075b-MAL-ED         INDIA                          1                    0       30     95
6-24 months   ki0047075b-MAL-ED         INDIA                          1                    1       29     95
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    0       15     95
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    1       21     95
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0        4     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1       18     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0        7     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1       21     50
6-24 months   ki0047075b-MAL-ED         PERU                           1                    0        5     23
6-24 months   ki0047075b-MAL-ED         PERU                           1                    1       16     23
6-24 months   ki0047075b-MAL-ED         PERU                           0                    0        1     23
6-24 months   ki0047075b-MAL-ED         PERU                           0                    1        1     23
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        5     50
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       28     50
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        4     50
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       13     50
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        5     33
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       25     33
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        2     33
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        1     33
6-24 months   ki1000109-EE              PAKISTAN                       1                    0       15    149
6-24 months   ki1000109-EE              PAKISTAN                       1                    1        6    149
6-24 months   ki1000109-EE              PAKISTAN                       0                    0       88    149
6-24 months   ki1000109-EE              PAKISTAN                       0                    1       40    149
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    0       21    473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1       11    473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    0      317    473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1      124    473
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0       91    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       16    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0        5    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        1    113
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0       36    341
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1       55    341
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0      133    341
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1      117    341
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      479    948
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1       49    948
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      405    948
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1       15    948
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0        5   2837
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1        0   2837
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0     2832   2837
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1        0   2837
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0      806   1516
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      150   1516
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0      484   1516
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1       76   1516


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/d22ba1ce-4d8f-48a5-99fb-caa0eba0afd2/769db3a4-d1e8-4d34-963f-d4f63c99ec48/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d22ba1ce-4d8f-48a5-99fb-caa0eba0afd2/769db3a4-d1e8-4d34-963f-d4f63c99ec48/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d22ba1ce-4d8f-48a5-99fb-caa0eba0afd2/769db3a4-d1e8-4d34-963f-d4f63c99ec48/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d22ba1ce-4d8f-48a5-99fb-caa0eba0afd2/769db3a4-d1e8-4d34-963f-d4f63c99ec48/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.6513871   0.5397525   0.7630218
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.6424022   0.5012892   0.7835153
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.5813934   0.4779050   0.6848818
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.6362303   0.5082091   0.7642515
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                0.7857143   0.6655613   0.9058673
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                0.7843137   0.6765475   0.8920799
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.8400000   0.7318211   0.9481789
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.8000000   0.6657395   0.9342605
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.3445807   0.1748500   0.5143114
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.4266777   0.3560815   0.4972739
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.4522576   0.3155993   0.5889159
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3778373   0.3412853   0.4143893
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.6275150   0.5713351   0.6836950
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.6771541   0.4802690   0.8740392
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.5647610   0.4662155   0.6633066
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5077328   0.4531557   0.5623099
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.5432973   0.5200762   0.5665185
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.5493916   0.5268444   0.5719388
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.2373752   0.2016367   0.2731137
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.4242891   0.4129239   0.4356542
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2753749   0.2517293   0.2990206
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2327372   0.2022263   0.2632480
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.8108108   0.6847315   0.9368901
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.7600000   0.5939976   0.9260024
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                0.7069020   0.5718187   0.8419853
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                0.6850096   0.5210211   0.8489981
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                0.5000000   0.2418553   0.7581447
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                0.5760870   0.4734543   0.6787196
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.6140894   0.4268111   0.8013676
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.5133891   0.4570412   0.5697370
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.9226190   0.8817191   0.9635190
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.7333333   0.5730670   0.8935997
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4614550   0.3071156   0.6157944
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5902526   0.5023499   0.6781553
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.7378384   0.7124611   0.7632158
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.7534284   0.7303826   0.7764742
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.2528584   0.2003679   0.3053489
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.6810622   0.6675116   0.6946128
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.5998291   0.5535819   0.6460762
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.4943062   0.4272881   0.5613242
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.4498101   0.2781359   0.6214842
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.4967980   0.2746896   0.7189064
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.4876474   0.3486119   0.6266828
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.5949383   0.3781387   0.8117378
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.2857143   0.0885683   0.4828603
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.3125000   0.2313361   0.3936639
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.3134346   0.1564674   0.4704018
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.2823305   0.2390692   0.3255917
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.5904168   0.4767959   0.7040378
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.4712896   0.4034472   0.5391320
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0942207   0.0694400   0.1190014
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0358535   0.0173006   0.0544065
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1569576   0.1346399   0.1792754
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1356589   0.1069782   0.1643396


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.6393443   0.5524803   0.7262082
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.6011236   0.5212729   0.6809743
0-24 months   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.7849462   0.7049947   0.8648978
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.8250000   0.7407860   0.9092140
0-24 months   ki1000109-EE              PAKISTAN       NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.3827160   0.3474971   0.4179350
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5227723   0.4753649   0.5701796
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.5472806   0.5299898   0.5645714
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.4228126   0.4116855   0.4339397
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.2585790   0.2392503   0.2779077
0-6 months    ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.7903226   0.6894772   0.8911679
0-6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.6867470   0.5837430   0.7897510
0-6 months    ki1000109-EE              PAKISTAN       NA                   NA                0.5648148   0.4692893   0.6603404
0-6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.5192878   0.4654446   0.5731311
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.8939394   0.8505280   0.9373508
0-6 months    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5609756   0.4845156   0.6374356
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.7460664   0.7282412   0.7638917
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.6764644   0.6631306   0.6897982
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.5587703   0.5173487   0.6001920
6-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.4833333   0.3508378   0.6158289
6-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1000109-EE              PAKISTAN       NA                   NA                0.3087248   0.2336906   0.3837591
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5043988   0.4461732   0.5626244
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0675105   0.0516864   0.0833347
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1490765   0.1314900   0.1666630


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 0.9862065   0.7415547   1.3115733
0-24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA          0                    1                 1.0943197   0.8361238   1.4322469
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    1                 0.9982175   0.8121387   1.2269310
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 0.9523810   0.7706578   1.1769549
0-24 months   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN       0                    1                 1.2382520   0.7348771   2.0864277
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.8354471   0.6086223   1.1468063
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 1.0791042   0.7961686   1.4625871
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 0.8990225   0.7321933   1.1038634
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.0112171   0.9575484   1.0678938
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    1                 1.7874198   1.5337635   2.0830262
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.8451647   0.7268177   0.9827819
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    1                 0.9373333   0.7168762   1.2255865
0-6 months    ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA          0                    1                 0.9690305   0.7118206   1.3191807
0-6 months    ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN       0                    1                 1.1521739   0.6673022   1.9893607
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.8360169   0.6046934   1.1558324
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 0.7948387   0.6359650   0.9934016
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    1                 1.2791119   0.8861435   1.8463459
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.0211292   0.9774327   1.0667792
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    1                 2.6934532   2.1864824   3.3179734
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.8240784   0.7140793   0.9510221
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.1044617   0.6126774   1.9909917
6-24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA          0                    1                 1.2200174   0.7656422   1.9440444
6-24 months   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN       0                    1                 1.0937500   0.5231204   2.2868333
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.9007635   0.5340988   1.5191477
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 0.7982320   0.6276076   1.0152430
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 0.3805272   0.2129774   0.6798889
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.8643026   0.6698267   1.1152422


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.0120429   -0.0873963    0.0633106
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                 0.0197302   -0.0466780    0.0861383
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.0007680   -0.0895672    0.0880311
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0150000   -0.0795179    0.0495179
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.0717617   -0.0859884    0.2295119
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0695415   -0.2008114    0.0617283
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0037208   -0.0256118    0.0181702
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.0419887   -0.1262425    0.0422650
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0039833   -0.0114490    0.0194155
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.1854374    0.1487981    0.2220767
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0167959   -0.0302025   -0.0033894
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.0204882   -0.1046649    0.0636884
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                -0.0201551   -0.1126436    0.0723335
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                 0.0648148   -0.1718685    0.3014982
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0948016   -0.2737858    0.0841827
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0286797   -0.0555072   -0.0018521
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0995206   -0.0340554    0.2330966
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0082280   -0.0095280    0.0259840
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.4236060    0.3707159    0.4764961
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0410587   -0.0672912   -0.0148262
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0335233   -0.0846286    0.1516751
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                 0.0386684   -0.0539949    0.1313318
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.0230105   -0.1601382    0.2061593
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0280223   -0.1793298    0.1232852
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.0860180   -0.1846124    0.0125764
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0267102   -0.0410696   -0.0123507
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0078811   -0.0213147    0.0055524


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.0188363   -0.1439827    0.0926197
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                 0.0328222   -0.0842689    0.1372685
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.0009785   -0.1207455    0.1059898
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0181818   -0.0994081    0.0570433
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.1723623   -0.3090006    0.4767121
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.1817053   -0.5797189    0.1160279
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0059648   -0.0417347    0.0285768
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.0803194   -0.2539338    0.0692571
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0072783   -0.0213260    0.0350814
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.4385807    0.3471253    0.5172249
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0649547   -0.1182660   -0.0141849
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.0259239   -0.1385086    0.0755276
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                -0.0293486   -0.1735554    0.0971380
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                 0.1147541   -0.4229150    0.4492571
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.1825607   -0.5832333    0.1167127
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0320823   -0.0632092   -0.0018667
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.1774063   -0.1005959    0.3851872
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0110285   -0.0130658    0.0345498
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.6262059    0.5404184    0.6959800
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0734805   -0.1224833   -0.0266169
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0693585   -0.2095523    0.2839552
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                 0.0734700   -0.1191126    0.2329120
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.0745342   -0.7570615    0.5125458
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0981820   -0.7799316    0.3224438
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.1705357   -0.3848482    0.0106108
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.3956443   -0.6111740   -0.2089463
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0528663   -0.1470619    0.0335940
