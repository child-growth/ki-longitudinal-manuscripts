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

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        safeh20    stunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0        0     213  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     213  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      176     213  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1       37     213  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        0      41  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0      41  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0       32      41  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        9      41  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1                0        0      41  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1                1        0      41  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0                0       33      41  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0                1        8      41  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        1      26  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0      26  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                0       23      26  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        2      26  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1                0        8     207  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1                1        1     207  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0                0      176     207  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0                1       22     207  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       12      96  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1      96  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0       76      96  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        7      96  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       68     119  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       11     119  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       30     119  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       10     119  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0      511     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1       95     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0        0     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        2     608  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0       43      45  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1        2      45  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                0        0      45  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                1        0      45  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0      631     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1      101     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     732  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    15028   22432  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     7364   22432  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0       22   22432  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1       18   22432  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0     1964    2820  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      856    2820  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0        0    2820  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    2820  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0        0     240  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     240  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      196     240  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1       44     240  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0        0     142  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     142  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      140     142  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        2     142  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1                0        0     235  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1                1        0     235  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0                0      191     235  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0                1       44     235  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                0        1     233  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     233  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      221     233  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                1       11     233  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1                0        8     259  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1                1        3     259  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0                0      195     259  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0                1       53     259  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       27     248  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       10     248  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      172     248  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       39     248  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      130     246  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       38     246  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       58     246  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       20     246  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      217     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1      163     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0        0     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1        0     380  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0      391     537  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1      144     537  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0        2     537  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1        0     537  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       10      11  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        1      11  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0        0      11  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        0      11  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      565     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1      150     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     715  stunted          
6 months    ki1114097-CONTENT          PERU                           1                0       52      57  stunted          
6 months    ki1114097-CONTENT          PERU                           1                1        2      57  stunted          
6 months    ki1114097-CONTENT          PERU                           0                0        3      57  stunted          
6 months    ki1114097-CONTENT          PERU                           0                1        0      57  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         1                0      428     816  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         1                1      244     816  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         0                0       92     816  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         0                1       52     816  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    12567   16803  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     4216   16803  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0       12   16803  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        8   16803  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     3606    4825  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1     1218    4825  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    4825  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    4825  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        0     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      111     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1      101     212  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0        0     113  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     113  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      110     113  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        3     113  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1                0        0     227  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     227  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0                0      130     227  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0                1       97     227  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                0        1     226  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     226  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      175     226  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                1       50     226  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1                0        3     193  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1                1        4     193  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0                0      117     193  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0                1       69     193  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       22     237  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       12     237  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      131     237  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       72     237  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       40     213  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1      105     213  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       18     213  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       50     213  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0      184     429  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1      243     429  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0        1     429  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1        1     429  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0        5       9  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        4       9  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0        0       9  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        0       9  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      382     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1      132     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     514  stunted          
24 months   ki1114097-CONTENT          PERU                           1                0       42      48  stunted          
24 months   ki1114097-CONTENT          PERU                           1                1        3      48  stunted          
24 months   ki1114097-CONTENT          PERU                           0                0        3      48  stunted          
24 months   ki1114097-CONTENT          PERU                           0                1        0      48  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         1                0      263     574  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         1                1      212     574  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         0                0       57     574  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         0                1       42     574  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4385    8623  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     4227    8623  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0        3    8623  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1        8    8623  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     2843    4747  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1     1903    4747  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    4747  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    4747  stunted          


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/75050194-e12f-4b79-ac45-9b337754be1a/e7e04b16-7d0e-405d-92c1-e8ac997c10b4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/75050194-e12f-4b79-ac45-9b337754be1a/e7e04b16-7d0e-405d-92c1-e8ac997c10b4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/75050194-e12f-4b79-ac45-9b337754be1a/e7e04b16-7d0e-405d-92c1-e8ac997c10b4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/75050194-e12f-4b79-ac45-9b337754be1a/e7e04b16-7d0e-405d-92c1-e8ac997c10b4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1392405   0.0625766   0.2159044
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2500000   0.1152430   0.3847570
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.3288675   0.3213251   0.3364098
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.4500000   0.4385953   0.4614047
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.2702703   0.1268849   0.4136556
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1848341   0.1323536   0.2373147
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2261905   0.1627988   0.2895821
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2564103   0.1593102   0.3535104
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                0.3630952   0.3267140   0.3994765
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                0.3611111   0.2826117   0.4396105
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.2512066   0.2428938   0.2595194
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.4000000   0.3887912   0.4112088
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.3529412   0.1919694   0.5139130
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.3546798   0.2887284   0.4206312
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7241379   0.6512186   0.7970573
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7352941   0.6301880   0.8404002
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.4463158   0.4015721   0.4910595
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.4242424   0.3268027   0.5216821


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1764706   0.1076873   0.2452539
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.3290835   0.3217078   0.3364591
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1975806   0.1479246   0.2472367
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2357724   0.1826200   0.2889248
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                0.3627451   0.3297365   0.3957537
6 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.2513837   0.2432545   0.2595129
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.3544304   0.2934024   0.4154584
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7276995   0.6677783   0.7876207
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.4425087   0.4018409   0.4831765


### Parameter: RR


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 1.7954545   0.8308895   3.879766
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 1.3683324   1.3233952   1.414796
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 0.6838863   0.3746770   1.248276
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 1.1336032   0.7077139   1.815785
6 months    ki1148112-LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5    MALAWI                         0                    1                 0.9945355   0.7828275   1.263498
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 1.5923150   1.5266883   1.660763
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 1.0049261   0.6140853   1.644522
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0154062   0.8525161   1.209420
24 months   ki1148112-LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 0.9505432   0.7398360   1.221260


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0372301   -0.0157317   0.0901918
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0002160   -0.0001229   0.0005549
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0726896   -0.2026528   0.0572736
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0095819   -0.0272284   0.0463921
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0003501   -0.0156185   0.0149182
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0001771   -0.0001696   0.0005239
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0014892   -0.1475131   0.1504915
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0035616   -0.0372839   0.0444071
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0038071   -0.0223126   0.0146985


### Parameter: PAF


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2109705   -0.1432103   0.4554216
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0006564   -0.0003812   0.0016928
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.3678985   -1.2091031   0.1529837
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0406404   -0.1287788   0.1846313
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0009653   -0.0439539   0.0402532
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0007045   -0.0006877   0.0020948
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0042017   -0.5188642   0.3471343
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0048943   -0.0528552   0.0594762
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0086034   -0.0513068   0.0323654
