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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mbmi             wasted   n_cell       n
----------  -------------------------  -----------------------------  --------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight         0      154     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight         1       29     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight           0       20     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight           1        6     209
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight         0       55      61
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight         1        1      61
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           0        4      61
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           1        1      61
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight         0       29      41
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight         1        4      41
Birth       ki0047075b-MAL-ED          INDIA                          Underweight           0        7      41
Birth       ki0047075b-MAL-ED          INDIA                          Underweight           1        1      41
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight         0       24      26
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight         1        2      26
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           1        0      26
Birth       ki0047075b-MAL-ED          PERU                           Normal weight         0      211     221
Birth       ki0047075b-MAL-ED          PERU                           Normal weight         1        5     221
Birth       ki0047075b-MAL-ED          PERU                           Underweight           0        5     221
Birth       ki0047075b-MAL-ED          PERU                           Underweight           1        0     221
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         0       87     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         1       10     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           0        3     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           1        0     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         0      106     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         1        1     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           0        6     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           1        0     113
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight         0      667     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight         1       68     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight           0      218     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight           1       39     992
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight         0      348     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight         1      135     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight           0       59     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight           1       33     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight         0      331     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight         1       80     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight           0       66     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight           1       33     510
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         0      486     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         1      153     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           0       47     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           1       18     704
Birth       ki1119695-PROBIT           BELARUS                        Normal weight         0    10426   13664
Birth       ki1119695-PROBIT           BELARUS                        Normal weight         1     2717   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight           0      386   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight           1      135   13664
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         0     7276    9030
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         1     1298    9030
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           0      360    9030
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           1       96    9030
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight         0     9723   17935
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight         1     1211   17935
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight           0     6244   17935
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight           1      757   17935
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         0      206     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         1        3     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           0       27     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           1        5     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight         0      198     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight         1        1     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           0        9     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         0      175     235
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         1       11     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight           0       41     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight           1        8     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight         0      232     236
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight         1        4     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight         0      267     272
6 months    ki0047075b-MAL-ED          PERU                           Normal weight         1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight           0        5     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight           1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         0      235     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         1        7     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           0        7     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           1        0     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         0      232     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           0       14     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           1        0     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         0      801    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         1      101    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           0      279    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           1       45    1226
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         0      421     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         1       23     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           0       81     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           1       12     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         0      480     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         1       17     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           0       97     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           1        8     602
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         0      633     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         1       15     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           0       61     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         0     1867    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         1       82    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       30    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           1        3    1982
6 months    ki1119695-PROBIT           BELARUS                        Normal weight         0    12421   13024
6 months    ki1119695-PROBIT           BELARUS                        Normal weight         1       98   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight           0      500   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight           1        5   13024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         0     6683    7253
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         1      198    7253
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           0      347    7253
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           1       25    7253
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight         0      678     836
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight         1       13     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight           0      144     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight           1        1     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight         0     9492   16733
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight         1      811   16733
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight           0     5826   16733
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight           1      604   16733
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         0      169     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         1       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           0       22     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           1        7     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight         0      159     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight         1        3     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           0        6     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           1        0     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         0      161     226
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         1       19     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight           0       38     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight           1        8     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight         0      223     228
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight         1        5     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           1        0     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight         0      195     201
24 months   ki0047075b-MAL-ED          PERU                           Normal weight         1        2     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight           0        2     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight           1        2     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         0      226     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         1        1     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           0        7     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           1        0     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         0      200     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           0       10     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           1        1     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         0      316     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         1       32     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           0       59     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           1       21     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         0      440     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         1       38     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           0       76     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           1       24     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         0      430     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         1       41     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           0       39     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           1        4     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         0        6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           1        0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight         0     3763    3942
24 months   ki1119695-PROBIT           BELARUS                        Normal weight         1       38    3942
24 months   ki1119695-PROBIT           BELARUS                        Underweight           0      136    3942
24 months   ki1119695-PROBIT           BELARUS                        Underweight           1        5    3942
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         0      283     366
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         1       56     366
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           0       19     366
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           1        8     366
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         0      462     561
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         1        5     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight           0       89     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight           1        5     561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight         0     4147    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight         1     1125    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight           0     2555    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight           1      743    8570


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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/553a148b-01dd-4095-907a-9e3c3303a31d/83dd7bdd-4733-437e-a913-8db4e8e0ae98/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/553a148b-01dd-4095-907a-9e3c3303a31d/83dd7bdd-4733-437e-a913-8db4e8e0ae98/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/553a148b-01dd-4095-907a-9e3c3303a31d/83dd7bdd-4733-437e-a913-8db4e8e0ae98/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/553a148b-01dd-4095-907a-9e3c3303a31d/83dd7bdd-4733-437e-a913-8db4e8e0ae98/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.1584699    0.1054338   0.2115061
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight          NA                0.2307692    0.0684312   0.3931072
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.0920907    0.0605491   0.1236324
Birth       ki1000304b-SAS-CompFeed   INDIA        Underweight          NA                0.1539705    0.1118333   0.1961077
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.2809351    0.2408869   0.3209833
Birth       ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.3710390    0.2734941   0.4685840
Birth       ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.1912619    0.1532252   0.2292986
Birth       ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.3493659    0.2473093   0.4514225
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.2398957    0.2066843   0.2731071
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.2481064    0.1356071   0.3606057
Birth       ki1119695-PROBIT          BELARUS      Normal weight        NA                0.2067665    0.1415377   0.2719953
Birth       ki1119695-PROBIT          BELARUS      Underweight          NA                0.2547182    0.1706829   0.3387534
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.1517534    0.1441505   0.1593563
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.2084723    0.1702178   0.2467268
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.1108267    0.1041025   0.1175509
Birth       kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.1079640    0.1000335   0.1158945
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.0591398    0.0251679   0.0931117
6 months    ki0047075b-MAL-ED         INDIA        Underweight          NA                0.1632653    0.0595562   0.2669744
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.1111975    0.0898431   0.1325519
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          NA                0.1395451    0.0841492   0.1949409
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.0512113    0.0305792   0.0718434
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.1330037    0.0633501   0.2026572
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.0342052    0.0182126   0.0501979
6 months    ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.0761905    0.0254031   0.1269779
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.0231481    0.0115621   0.0347342
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.0895522    0.0211327   0.1579718
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0078281    0.0057317   0.0099246
6 months    ki1119695-PROBIT          BELARUS      Underweight          NA                0.0099010   -0.0006297   0.0204317
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0287979    0.0248416   0.0327542
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.0785372    0.0496274   0.1074471
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.0787139    0.0729996   0.0844282
6 months    kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.0937723    0.0860753   0.1014694
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.0765027    0.0379011   0.1151044
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight          NA                0.2413793    0.0852666   0.3974920
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.1055556    0.0605680   0.1505431
24 months   ki0047075b-MAL-ED         INDIA        Underweight          NA                0.1739130    0.0641361   0.2836900
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.0908674    0.0604527   0.1212821
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.2666234    0.1694598   0.3637869
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.0805471    0.0557610   0.1053331
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.2562137    0.1625784   0.3498491
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0099974    0.0031354   0.0168593
24 months   ki1119695-PROBIT          BELARUS      Underweight          NA                0.0354610    0.0131851   0.0577369
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.1651917    0.1256068   0.2047767
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.2962963    0.1238244   0.4687682
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                0.0107066    0.0013641   0.0200492
24 months   ki1148112-LCNI-5          MALAWI       Underweight          NA                0.0531915    0.0077844   0.0985986
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                0.2135779    0.2018578   0.2252981
24 months   kiGH5241-JiVitA-3         BANGLADESH   Underweight          NA                0.2250352    0.2087182   0.2413522


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1674641   0.1167208   0.2182074
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1078629   0.0749278   0.1407980
Birth       ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.2921739   0.2549711   0.3293768
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2215686   0.1854897   0.2576475
Birth       ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.2428977   0.2111977   0.2745977
Birth       ki1119695-PROBIT          BELARUS      NA                   NA                0.2087237   0.1432464   0.2742009
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1543743   0.1469218   0.1618269
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1097296   0.1045905   0.1148686
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.0808511   0.0459229   0.1157792
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1190865   0.0945854   0.1435876
6 months    ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0415282   0.0255778   0.0574787
6 months    ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.0079085   0.0059160   0.0099010
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0307459   0.0267728   0.0347190
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0845634   0.0797479   0.0893790
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0990566   0.0587480   0.1393652
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.1194690   0.0770894   0.1618486
24 months   ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1072664   0.0820169   0.1325160
24 months   ki1119695-PROBIT          BELARUS      NA                   NA                0.0109082   0.0040825   0.0177338
24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1748634   0.1358949   0.2138319
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.0178253   0.0068664   0.0287842
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2179697   0.2080911   0.2278482


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight          Normal weight     1.4562334   0.6682012    3.173619
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed   INDIA        Underweight          Normal weight     1.6719437   1.3023307    2.146456
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     1.3207285   0.9795166    1.780801
Birth       ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     1.8266362   1.2824783    2.601681
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.0342261   0.6436556    1.661795
Birth       ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ki1119695-PROBIT          BELARUS      Underweight          Normal weight     1.2319121   1.0002983    1.517155
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.3737570   1.1357620    1.661623
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     0.9741698   0.8858740    1.071266
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED         INDIA        Underweight          Normal weight     2.7606679   1.1723848    6.500671
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          Normal weight     1.2549296   0.8649048    1.820834
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     2.5971547   1.3414918    5.028143
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     2.2274510   0.9867371    5.028227
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     3.8686567   1.5519898    9.643430
6 months    ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT          BELARUS      Underweight          Normal weight     1.2648010   0.4065976    3.934409
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     2.7271833   1.8410073    4.039924
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     1.1913053   1.0735232    1.322010
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight          Normal weight     3.1551724   1.3892244    7.165950
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED         INDIA        Underweight          Normal weight     1.6475972   0.7692713    3.528764
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     2.9342031   1.7896253    4.810810
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     3.1809198   1.9714837    5.132303
24 months   ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT          BELARUS      Underweight          Normal weight     3.5470325   1.5784515    7.970748
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.7936508   0.9557734    3.366052
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5          MALAWI       Underweight          Normal weight     4.9680851   1.4656789   16.839889
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   Underweight          Normal weight     1.0536445   0.9651201    1.150289


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0089942   -0.0124975   0.0304858
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0157722    0.0083930   0.0231513
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0112388   -0.0057958   0.0282734
Birth       ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0303067    0.0098092   0.0508042
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0030020   -0.0077126   0.0137166
Birth       ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0019572   -0.0002089   0.0041232
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0026209    0.0006643   0.0045776
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0010971   -0.0051504   0.0029561
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                 0.0217113   -0.0016803   0.0451029
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0078889   -0.0048544   0.0206323
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0139656    0.0013851   0.0265461
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0073230   -0.0020510   0.0166970
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0062225   -0.0004333   0.0128782
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0000804   -0.0003444   0.0005052
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0019480    0.0006087   0.0032872
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                 0.0058495    0.0023182   0.0093808
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0225539   -0.0007348   0.0458425
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                 0.0139135   -0.0105003   0.0383272
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0329644    0.0129934   0.0529354
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0267194    0.0106378   0.0428009
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0009108    0.0001787   0.0016429
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0096716   -0.0038477   0.0231909
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0071187   -0.0007594   0.0149967
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                 0.0043917   -0.0030682   0.0118517


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0537080   -0.0830039   0.1731623
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.1462243    0.0735844   0.2131685
Birth       ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0384661   -0.0215704   0.0949743
Birth       ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.1367826    0.0407702   0.2231848
Birth       ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0123592   -0.0327417   0.0554904
Birth       ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0093768   -0.0010869   0.0197310
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0169777    0.0042386   0.0295537
Birth       kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                -0.0099986   -0.0475964   0.0262499
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                 0.2685342   -0.0555650   0.4931225
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0662454   -0.0404365   0.1619885
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.2142724    0.0083778   0.3774163
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.1763380   -0.0707412   0.3664024
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.2118607   -0.0276962   0.3955766
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0101632   -0.0454865   0.0628507
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0633571    0.0195227   0.1052317
6 months    kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                 0.0691729    0.0266334   0.1098533
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.2276867   -0.0260841   0.4186950
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                 0.1164609   -0.1094308   0.2963587
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.2662030    0.0989112   0.4024362
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.2490936    0.0942748   0.3774487
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0834970   -0.0054495   0.1645749
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0553097   -0.0246139   0.1289990
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.3993576   -0.1107537   0.6752014
24 months   kiGH5241-JiVitA-3         BANGLADESH   Normal weight        NA                 0.0201483   -0.0145917   0.0536988
