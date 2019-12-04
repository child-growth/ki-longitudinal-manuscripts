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
* W_birthwt
* W_birthlen
* W_nrooms
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
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

agecat        studyid                   country                        earlybf    pers_wast   n_cell       n
------------  ------------------------  -----------------------------  --------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  0      144     247
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  1        8     247
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  0       90     247
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  1        5     247
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  0       99     218
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  1        1     218
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  0      117     218
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  1        1     218
0-24 months   ki0047075b-MAL-ED         INDIA                          1                  0      127     241
0-24 months   ki0047075b-MAL-ED         INDIA                          1                  1       16     241
0-24 months   ki0047075b-MAL-ED         INDIA                          0                  0       93     241
0-24 months   ki0047075b-MAL-ED         INDIA                          0                  1        5     241
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                  0       94     238
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                  1        3     238
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                  0      140     238
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                  1        1     238
0-24 months   ki0047075b-MAL-ED         PERU                           1                  0      211     284
0-24 months   ki0047075b-MAL-ED         PERU                           1                  1        1     284
0-24 months   ki0047075b-MAL-ED         PERU                           0                  0       72     284
0-24 months   ki0047075b-MAL-ED         PERU                           0                  1        0     284
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      166     270
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1     270
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0      102     270
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1     270
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210     253
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43     253
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
0-24 months   ki1000109-EE              PAKISTAN                       1                  0       63     366
0-24 months   ki1000109-EE              PAKISTAN                       1                  1        6     366
0-24 months   ki1000109-EE              PAKISTAN                       0                  0      271     366
0-24 months   ki1000109-EE              PAKISTAN                       0                  1       26     366
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  0       92    1366
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  1        9    1366
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  0     1160    1366
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  1      105    1366
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  0      607     730
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  1       25     730
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  0       97     730
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  1        1     730
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  0      143     543
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  1       18     543
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  0      327     543
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  1       55     543
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  0     4499    8450
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  1       74    8450
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  0     3796    8450
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  1       81    8450
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  0       20   15803
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  1        4   15803
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  0    14885   15803
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  1      894   15803
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  0     3096    5281
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  1      266    5281
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  0     1759    5281
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  1      160    5281
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                  0      149     247
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                  1        3     247
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                  0       91     247
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                  1        4     247
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                  0       99     218
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                  1        1     218
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                  0      118     218
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                  1        0     218
0-6 months    ki0047075b-MAL-ED         INDIA                          1                  0      131     240
0-6 months    ki0047075b-MAL-ED         INDIA                          1                  1       12     240
0-6 months    ki0047075b-MAL-ED         INDIA                          0                  0       90     240
0-6 months    ki0047075b-MAL-ED         INDIA                          0                  1        7     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                  0       94     238
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                  1        3     238
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                  0      137     238
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                  1        4     238
0-6 months    ki0047075b-MAL-ED         PERU                           1                  0      212     284
0-6 months    ki0047075b-MAL-ED         PERU                           1                  1        0     284
0-6 months    ki0047075b-MAL-ED         PERU                           0                  0       72     284
0-6 months    ki0047075b-MAL-ED         PERU                           0                  1        0     284
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      166     269
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1     269
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0      101     269
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1     269
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210     253
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43     253
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
0-6 months    ki1000109-EE              PAKISTAN                       1                  0       65     360
0-6 months    ki1000109-EE              PAKISTAN                       1                  1        3     360
0-6 months    ki1000109-EE              PAKISTAN                       0                  0      271     360
0-6 months    ki1000109-EE              PAKISTAN                       0                  1       21     360
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                  0      222     250
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                  1        3     250
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                  0       23     250
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                  1        2     250
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                  0      139     514
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                  1       16     514
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                  0      317     514
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                  1       42     514
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                  0      295     560
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                  1        6     560
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                  0      251     560
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                  1        8     560
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                  0        0      50
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                  1        0      50
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                  0       48      50
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                  1        2      50
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  0      144     247
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  1        8     247
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  0       90     247
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  1        5     247
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  0       99     218
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  1        1     218
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  0      117     218
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  1        1     218
6-24 months   ki0047075b-MAL-ED         INDIA                          1                  0      127     241
6-24 months   ki0047075b-MAL-ED         INDIA                          1                  1       16     241
6-24 months   ki0047075b-MAL-ED         INDIA                          0                  0       93     241
6-24 months   ki0047075b-MAL-ED         INDIA                          0                  1        5     241
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                  0       94     238
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                  1        3     238
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                  0      140     238
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                  1        1     238
6-24 months   ki0047075b-MAL-ED         PERU                           1                  0      211     284
6-24 months   ki0047075b-MAL-ED         PERU                           1                  1        1     284
6-24 months   ki0047075b-MAL-ED         PERU                           0                  0       72     284
6-24 months   ki0047075b-MAL-ED         PERU                           0                  1        0     284
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      166     270
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1     270
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0      102     270
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1     270
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210     253
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43     253
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
6-24 months   ki1000109-EE              PAKISTAN                       1                  0       63     366
6-24 months   ki1000109-EE              PAKISTAN                       1                  1        6     366
6-24 months   ki1000109-EE              PAKISTAN                       0                  0      271     366
6-24 months   ki1000109-EE              PAKISTAN                       0                  1       26     366
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  0       92    1366
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  1        9    1366
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  0     1160    1366
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  1      105    1366
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  0      607     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  1       25     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  0       97     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  1        1     730
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  0      143     543
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  1       18     543
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  0      327     543
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  1       55     543
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  0     4499    8450
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  1       74    8450
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  0     3796    8450
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  1       81    8450
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  0       20   15803
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  1        4   15803
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  0    14885   15803
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  1      894   15803
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  0     3096    5281
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  1      266    5281
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  0     1759    5281
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  1      160    5281


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
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/0e7f23c7-15ee-4129-be4e-b22343254061/c343aaa3-d3b4-4ece-b6af-f86188830ba2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0e7f23c7-15ee-4129-be4e-b22343254061/c343aaa3-d3b4-4ece-b6af-f86188830ba2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0e7f23c7-15ee-4129-be4e-b22343254061/c343aaa3-d3b4-4ece-b6af-f86188830ba2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0e7f23c7-15ee-4129-be4e-b22343254061/c343aaa3-d3b4-4ece-b6af-f86188830ba2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0526316   0.0170611   0.0882021
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0526316   0.0076381   0.0976251
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1118881   0.0601145   0.1636618
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.0510204   0.0073650   0.0946758
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.0869565   0.0203810   0.1535320
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.0875421   0.0553552   0.1197290
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0891089   0.0534033   0.1248146
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0830040   0.0588611   0.1071469
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1173637   0.0680081   0.1667193
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1442941   0.1091946   0.1793936
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0164589   0.0127453   0.0201725
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0206472   0.0161651   0.0251292
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0802459   0.0692409   0.0912509
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0830341   0.0701356   0.0959327
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.0839161   0.0383778   0.1294544
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.0721649   0.0205628   0.1237671
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1010086   0.0549622   0.1470550
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1174954   0.0842103   0.1507805
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0199336   0.0041293   0.0357378
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0308880   0.0097984   0.0519776
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0526316   0.0170611   0.0882021
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0526316   0.0076381   0.0976251
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1118881   0.0601145   0.1636618
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.0510204   0.0073650   0.0946758
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.0869565   0.0203810   0.1535320
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.0875421   0.0553552   0.1197290
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0891089   0.0534033   0.1248146
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0830040   0.0588611   0.1071469
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1197225   0.0697387   0.1697063
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1441271   0.1089867   0.1792676
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0163710   0.0126687   0.0200732
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0207564   0.0162628   0.0252500
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0804568   0.0695322   0.0913814
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0815538   0.0688352   0.0942724


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0526316   0.0247278   0.0805354
0-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.0871369   0.0514552   0.1228187
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.0874317   0.0584537   0.1164097
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1344383   0.1057200   0.1631566
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0183432   0.0154819   0.0212045
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0806665   0.0720540   0.0892791
0-6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.0791667   0.0449364   0.1133970
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1128405   0.0854611   0.1402198
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0250000   0.0120576   0.0379424
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0526316   0.0247278   0.0805354
6-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.0871369   0.0514552   0.1228187
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.0874317   0.0584537   0.1164097
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1344383   0.1057200   0.1631566
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0183432   0.0154819   0.0212045
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0806665   0.0720540   0.0892791


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.0000000   0.3362978   2.973555
0-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 0.4559949   0.1723848   1.206205
0-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.0067340   0.4305832   2.353815
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 0.9314888   0.6140480   1.413035
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.2294613   0.7551270   2.001749
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.2544675   0.9176755   1.714864
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0347458   0.8482579   1.262233
0-6 months    ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED         INDIA        0                    1                 0.8599656   0.3504552   2.110230
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1632216   0.6791504   1.992320
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.5495495   0.5442448   4.411808
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.0000000   0.3362978   2.973555
6-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 0.4559949   0.1723848   1.206205
6-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.0067340   0.4305832   2.353815
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 0.9314888   0.6140480   1.413035
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.2038432   0.7416149   1.954166
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.2678791   0.9275026   1.733168
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0136343   0.8312220   1.236077


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.0220599   0.0220599
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0247512   -0.0525483   0.0030459
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0004752   -0.0595317   0.0604821
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0056536   -0.0393651   0.0280580
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0170746   -0.0260306   0.0601799
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0018843   -0.0008179   0.0045864
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0004206   -0.0055506   0.0063919
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.0047494   -0.0325747   0.0230759
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0118319   -0.0276539   0.0513177
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0050664   -0.0071308   0.0172637
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.0220599   0.0220599
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0247512   -0.0525483   0.0030459
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0004752   -0.0595317   0.0604821
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0056536   -0.0393651   0.0280580
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0147158   -0.0287769   0.0582085
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0019722   -0.0007213   0.0046658
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0002097   -0.0057125   0.0061319


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.5206498    0.3423864
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.2840493   -0.6252463   -0.0144817
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0054348   -0.9830339    0.5011886
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0677436   -0.5664076    0.2721713
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.1270071   -0.2581768    0.3942690
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.1027242   -0.0563199    0.2378220
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0052144   -0.0717010    0.0766096
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.0599926   -0.4756633    0.2385903
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.1048550   -0.3214093    0.3936137
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.2026578   -0.4501982    0.5616085
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.5206498    0.3423864
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.2840493   -0.6252463   -0.0144817
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0054348   -0.9830339    0.5011886
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0677436   -0.5664076    0.2721713
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.1094614   -0.2789072    0.3798932
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.1075177   -0.0509943    0.2421227
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0025998   -0.0736153    0.0734045
