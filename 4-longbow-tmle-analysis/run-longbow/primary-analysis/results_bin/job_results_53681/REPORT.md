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
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
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
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
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
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0       25    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1       46    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0       18    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1       33    122
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0        3     24
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1        6     24
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0        3     24
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1       12     24
0-24 months   ki0047075b-MAL-ED         INDIA                          1                    0       44    181
0-24 months   ki0047075b-MAL-ED         INDIA                          1                    1       63    181
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    0       27    181
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    1       47    181
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0        9     98
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1       33     98
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0       11     98
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1       45     98
0-24 months   ki0047075b-MAL-ED         PERU                           1                    0        5     35
0-24 months   ki0047075b-MAL-ED         PERU                           1                    1       26     35
0-24 months   ki0047075b-MAL-ED         PERU                           0                    0        1     35
0-24 months   ki0047075b-MAL-ED         PERU                           0                    1        3     35
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        8     84
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       46     84
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        7     84
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       23     84
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        7     51
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       39     51
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        2     51
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     51
0-24 months   ki1000109-EE              PAKISTAN                       1                    0       25    314
0-24 months   ki1000109-EE              PAKISTAN                       1                    1       30    314
0-24 months   ki1000109-EE              PAKISTAN                       0                    0      130    314
0-24 months   ki1000109-EE              PAKISTAN                       0                    1      129    314
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    0       33    810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1       29    810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    0      467    810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1      281    810
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      104    310
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1      170    310
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       13    310
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1       23    310
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0       67    582
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1       94    582
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0      199    582
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1      222    582
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      759   3274
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      832   3274
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      728   3274
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      955   3274
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0       43   7562
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1       13   7562
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0     4323   7562
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     3183   7562
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0      958   2069
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      357   2069
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0      576   2069
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      178   2069
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0        7     63
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1       30     63
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0        6     63
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1       20     63
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                    0        1     15
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1        5     15
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    0        0     15
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1        9     15
0-6 months    ki0047075b-MAL-ED         INDIA                          1                    0       15     86
0-6 months    ki0047075b-MAL-ED         INDIA                          1                    1       33     86
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    0       12     86
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    1       26     86
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                    0        5     48
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                    1       15     48
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    0        4     48
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    1       24     48
0-6 months    ki0047075b-MAL-ED         PERU                           1                    0        0     11
0-6 months    ki0047075b-MAL-ED         PERU                           1                    1        9     11
0-6 months    ki0047075b-MAL-ED         PERU                           0                    0        0     11
0-6 months    ki0047075b-MAL-ED         PERU                           0                    1        2     11
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        3     33
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       16     33
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        3     33
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       11     33
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        1     14
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       12     14
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        0     14
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        1     14
0-6 months    ki1000109-EE              PAKISTAN                       1                    0        8    124
0-6 months    ki1000109-EE              PAKISTAN                       1                    1       12    124
0-6 months    ki1000109-EE              PAKISTAN                       0                    0       45    124
0-6 months    ki1000109-EE              PAKISTAN                       0                    1       59    124
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0       12    337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1       18    337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0      150    337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1      157    337
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0       13    197
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1      154    197
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0        8    197
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1       22    197
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                    0       31    242
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1       39    242
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    0       67    242
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1      105    242
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      268   2290
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      778   2290
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      305   2290
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      939   2290
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0       38   4725
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1       13   4725
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0     1491   4725
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1     3183   4725
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0      152    553
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1      207    553
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0       92    553
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1      102    553
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0       18     59
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1       16     59
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0       12     59
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1       13     59
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0        2      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1        1      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0        3      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1        3      9
6-24 months   ki0047075b-MAL-ED         INDIA                          1                    0       29     95
6-24 months   ki0047075b-MAL-ED         INDIA                          1                    1       30     95
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    0       15     95
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    1       21     95
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0        4     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1       18     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0        7     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1       21     50
6-24 months   ki0047075b-MAL-ED         PERU                           1                    0        5     24
6-24 months   ki0047075b-MAL-ED         PERU                           1                    1       17     24
6-24 months   ki0047075b-MAL-ED         PERU                           0                    0        1     24
6-24 months   ki0047075b-MAL-ED         PERU                           0                    1        1     24
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        5     51
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       30     51
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        4     51
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       12     51
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        6     37
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       27     37
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        2     37
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        2     37
6-24 months   ki1000109-EE              PAKISTAN                       1                    0       17    190
6-24 months   ki1000109-EE              PAKISTAN                       1                    1       18    190
6-24 months   ki1000109-EE              PAKISTAN                       0                    0       85    190
6-24 months   ki1000109-EE              PAKISTAN                       0                    1       70    190
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    0       21    473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1       11    473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    0      317    473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1      124    473
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0       91    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       16    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0        5    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        1    113
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0       36    340
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1       55    340
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0      132    340
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1      117    340
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      491    984
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1       54    984
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      423    984
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1       16    984
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




# Results Detail

## Results Plots
![](/tmp/f03f4d79-fdbc-438e-908d-a339611df3cb/ff5b6b53-bd76-48fb-b95e-4412417f24bd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f03f4d79-fdbc-438e-908d-a339611df3cb/ff5b6b53-bd76-48fb-b95e-4412417f24bd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f03f4d79-fdbc-438e-908d-a339611df3cb/ff5b6b53-bd76-48fb-b95e-4412417f24bd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f03f4d79-fdbc-438e-908d-a339611df3cb/ff5b6b53-bd76-48fb-b95e-4412417f24bd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.6403450   0.5230367   0.7576533
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.6608327   0.5219675   0.7996978
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.5831829   0.4789715   0.6873942
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.6338124   0.5071792   0.7604456
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                0.7857143   0.6676859   0.9037426
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                0.8035714   0.7055573   0.9015856
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.8518519   0.7511196   0.9525841
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.7666667   0.6158718   0.9174615
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.5392762   0.3862999   0.6922526
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.4982145   0.4331828   0.5632461
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.4564047   0.3249513   0.5878581
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3767610   0.3401947   0.4133272
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.6270034   0.5706647   0.6833421
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.7063359   0.5181942   0.8944777
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.5832026   0.4918285   0.6745766
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5271633   0.4762358   0.5780908
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.5496239   0.5267136   0.5725342
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.5404590   0.5180063   0.5629117
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.2337150   0.1963783   0.2710517
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.4241107   0.4127462   0.4354751
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2752233   0.2515701   0.2988764
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2351075   0.2048673   0.2653478
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.8108108   0.6848512   0.9367704
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.7692308   0.6087603   0.9297013
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                0.6825180   0.5461858   0.8188503
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                0.6914455   0.5358533   0.8470376
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                0.6000000   0.3790586   0.8209414
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                0.5673077   0.4716455   0.6629699
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.6140677   0.4241913   0.8039441
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.5136956   0.4573432   0.5700481
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.9221557   0.8810188   0.9632926
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.7333333   0.5730566   0.8936101
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.5588756   0.4392735   0.6784777
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.6099271   0.5365214   0.6833327
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.7505020   0.7259967   0.7750072
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.7467494   0.7236945   0.7698043
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.2614597   0.2077168   0.3152025
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.6809885   0.6674329   0.6945441
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.6011688   0.5550572   0.6472804
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.4941533   0.4268859   0.5614208
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.4416916   0.2811003   0.6022828
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.4894845   0.2785154   0.7004536
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.5098426   0.3672112   0.6524740
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.5826570   0.3817968   0.7835172
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.5993671   0.4252884   0.7734458
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.4567697   0.3737305   0.5398090
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.2953991   0.1141997   0.4765984
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.2811133   0.2380303   0.3241964
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.6128541   0.4984323   0.7272758
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.4731813   0.4051542   0.5412084
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1003867   0.0754400   0.1253334
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0368063   0.0182094   0.0554031
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1568246   0.1344256   0.1792235
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1360581   0.1071535   0.1649627


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.6475410   0.5607680   0.7343140
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.6077348   0.5286689   0.6868008
0-24 months   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.7959184   0.7207268   0.8711100
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.8214286   0.7371305   0.9057266
0-24 months   ki1000109-EE              PAKISTAN       NA                   NA                0.5063694   0.4463277   0.5664112
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.3827160   0.3474971   0.4179350
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5429553   0.4984173   0.5874934
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.5458155   0.5286072   0.5630238
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.4226395   0.4115112   0.4337678
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.2585790   0.2392503   0.2779077
0-6 months    ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.7936508   0.6942781   0.8930235
0-6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.6860465   0.5849088   0.7871842
0-6 months    ki1000109-EE              PAKISTAN       NA                   NA                0.5725806   0.4847582   0.6604031
0-6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.5192878   0.4654446   0.5731311
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5950413   0.5325830   0.6574997
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.7497817   0.7320520   0.7675113
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.6764021   0.6630620   0.6897422
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.5587703   0.5173487   0.6001920
6-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.4915254   0.3576698   0.6253810
6-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   ki1000109-EE              PAKISTAN       NA                   NA                0.4631579   0.3886610   0.5376548
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5058824   0.4476568   0.5641079
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0711382   0.0551795   0.0870969
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1490765   0.1314900   0.1666630


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.0319947   0.7790893   1.3669975
0-24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA          0                    1                 1.0868158   0.8307384   1.4218298
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    1                 1.0227273   0.8422004   1.2419503
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 0.9000000   0.7153015   1.1323896
0-24 months   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN       0                    1                 0.9238576   0.6755015   1.2635249
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.8254975   0.6092041   1.1185843
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 1.1265264   0.8498070   1.4933528
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 0.9039112   0.7518525   1.0867229
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 0.9833252   0.9319456   1.0375375
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    1                 1.8146493   1.5432824   2.1337326
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.8542429   0.7364151   0.9909233
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    1                 0.9487179   0.7314256   1.2305636
0-6 months    ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA          0                    1                 1.0130802   0.7495135   1.3693300
0-6 months    ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN       0                    1                 0.9455128   0.6306298   1.4176218
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.8365456   0.6023171   1.1618606
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 0.7952381   0.6362402   0.9939699
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    1                 1.0913467   0.8535692   1.3953615
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 0.9949999   0.9542813   1.0374559
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    1                 2.6045643   2.1186278   3.2019570
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.8219877   0.7124024   0.9484299
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.1082044   0.6142059   1.9995200
6-24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA          0                    1                 1.1428175   0.7311104   1.7863673
6-24 months   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN       0                    1                 0.7620868   0.5398320   1.0758463
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.9516393   0.5055491   1.7913538
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 0.7720946   0.6094306   0.9781754
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 0.3666450   0.2088180   0.6437595
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.8675817   0.6715631   1.1208150


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0071960   -0.0698595    0.0842515
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                 0.0245519   -0.0424411    0.0915450
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0102041   -0.0780591    0.0984672
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0304233   -0.0951285    0.0342819
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                -0.0329068   -0.1713887    0.1055751
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0736887   -0.1999340    0.0525566
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0044228   -0.0266726    0.0178270
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.0402473   -0.1166156    0.0361210
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0038083   -0.0189462    0.0113295
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.1889246    0.1508197    0.2270295
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0166443   -0.0301195   -0.0031690
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.0171600   -0.1014153    0.0670952
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                 0.0035285   -0.0877553    0.0948122
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                -0.0274194   -0.2293626    0.1745239
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0947799   -0.2765157    0.0869560
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0287547   -0.0557185   -0.0017909
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0361657   -0.0639984    0.1363299
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0007203   -0.0176747    0.0162341
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.4149425    0.3608378    0.4690471
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0423984   -0.0683425   -0.0164544
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0498339   -0.0772904    0.1769582
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                 0.0269995   -0.0658402    0.1198392
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                -0.1362092   -0.2960565    0.0236381
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0099868   -0.1845308    0.1645572
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.1069717   -0.2061728   -0.0077706
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0292485   -0.0436123   -0.0148847
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0077480   -0.0213356    0.0058395


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0111128   -0.1153875    0.1232662
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                 0.0403991   -0.0766235    0.1447020
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0128205   -0.1045999    0.1177590
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0370370   -0.1194057    0.0392707
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                -0.0649858   -0.3765577    0.1760645
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.1925414   -0.5729044    0.0958414
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0071040   -0.0435557    0.0280745
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.0741263   -0.2240096    0.0574034
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0069773   -0.0350982    0.0203795
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.4470111    0.3511683    0.5286964
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0643682   -0.1179689   -0.0133373
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.0216216   -0.1337321    0.0794027
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                 0.0051432   -0.1372264    0.1296895
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                -0.0478873   -0.4672027    0.2515909
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.1825190   -0.5903123    0.1207066
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0321856   -0.0634921   -0.0018007
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0607785   -0.1239510    0.2151464
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0009607   -0.0238306    0.0213983
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.6134553    0.5257049    0.6849708
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0758781   -0.1243873   -0.0294618
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.1013861   -0.1912547    0.3221375
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                 0.0502932   -0.1389564    0.2080970
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                -0.2940880   -0.6958822    0.0125117
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0349908   -0.8683909    0.4266693
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.2114557   -0.4264250   -0.0288834
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.4111504   -0.6147414   -0.2332288
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0519736   -0.1472991    0.0354317
