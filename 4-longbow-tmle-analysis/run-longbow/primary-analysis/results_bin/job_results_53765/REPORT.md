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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        gagebrth             pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ------------------  ----------  -------  ------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      201     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       14     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       49     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        3     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       81     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        3     351
0-24 months   ki1000108-IRC              INDIA                          Full or late term            0      225     390
0-24 months   ki1000108-IRC              INDIA                          Full or late term            1       25     390
0-24 months   ki1000108-IRC              INDIA                          Preterm                      0       34     390
0-24 months   ki1000108-IRC              INDIA                          Preterm                      1        8     390
0-24 months   ki1000108-IRC              INDIA                          Early term                   0       85     390
0-24 months   ki1000108-IRC              INDIA                          Early term                   1       13     390
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term            0       16     377
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term            1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                      0      274     377
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                      1       27     377
0-24 months   ki1000109-EE               PAKISTAN                       Early term                   0       54     377
0-24 months   ki1000109-EE               PAKISTAN                       Early term                   1        5     377
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            0      156     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            1        2     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      0      241     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      1       14     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   0      307     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   1       10     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1212    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       33    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      306    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1       11    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      462    2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       11    2035
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            0      733    1579
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            1       45    1579
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      0      226    1579
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      1       13    1579
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                   0      533    1579
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                   1       29    1579
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            0     8383   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            1       89   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      0      573   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      1        7   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                   0     7466   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                   1       63   16581
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            0      401     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            1        8     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      0      113     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      1        6     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   0      198     732
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   1        6     732
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term            0      470    1186
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term            1       42    1186
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                      0      248    1186
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                      1       18    1186
0-24 months   ki1135781-COHORTS          INDIA                          Early term                   0      367    1186
0-24 months   ki1135781-COHORTS          INDIA                          Early term                   1       41    1186
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            0     1034    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            1       47    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      0      550    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      1       34    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   0     1062    2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   1       62    2789
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            0     7749   15049
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            1      434   15049
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      0     2534   15049
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      1      172   15049
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   0     3908   15049
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   1      252   15049
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      174     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       32     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       45     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        6     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       72     337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        8     337
0-6 months    ki1000108-IRC              INDIA                          Full or late term            0      211     383
0-6 months    ki1000108-IRC              INDIA                          Full or late term            1       34     383
0-6 months    ki1000108-IRC              INDIA                          Preterm                      0       33     383
0-6 months    ki1000108-IRC              INDIA                          Preterm                      1        9     383
0-6 months    ki1000108-IRC              INDIA                          Early term                   0       78     383
0-6 months    ki1000108-IRC              INDIA                          Early term                   1       18     383
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term            0       16     371
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term            1        1     371
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                      0      275     371
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                      1       22     371
0-6 months    ki1000109-EE               PAKISTAN                       Early term                   0       55     371
0-6 months    ki1000109-EE               PAKISTAN                       Early term                   1        2     371
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            0       80     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            1        1     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      0       65     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      1        2     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   0      100     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   1        2     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1157    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       29    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      290    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1        8    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      438    1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       12    1934
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term            0      658    1408
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term            1       21    1408
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                      0      209    1408
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                      1        9    1408
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                   0      498    1408
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                   1       13    1408
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term            0     6314   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term            1      622   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                      0      423   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                      1       34   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                   0     5662   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                   1      490   13545
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term            0      315     848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term            1       11     848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                      0      158     848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                      1       13     848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                   0      323     848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                   1       28     848
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            0       24      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      0       10      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                   0       11      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                   1        1      46
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      201     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       14     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       49     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        3     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       81     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        3     351
6-24 months   ki1000108-IRC              INDIA                          Full or late term            0      225     390
6-24 months   ki1000108-IRC              INDIA                          Full or late term            1       25     390
6-24 months   ki1000108-IRC              INDIA                          Preterm                      0       34     390
6-24 months   ki1000108-IRC              INDIA                          Preterm                      1        8     390
6-24 months   ki1000108-IRC              INDIA                          Early term                   0       85     390
6-24 months   ki1000108-IRC              INDIA                          Early term                   1       13     390
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term            0       16     377
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term            1        1     377
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                      0      274     377
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                      1       27     377
6-24 months   ki1000109-EE               PAKISTAN                       Early term                   0       54     377
6-24 months   ki1000109-EE               PAKISTAN                       Early term                   1        5     377
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            0      156     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            1        2     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      0      241     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      1       14     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   0      307     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   1       10     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1212    2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       33    2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      306    2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1       11    2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      462    2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       11    2035
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            0      733    1579
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            1       45    1579
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      0      226    1579
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      1       13    1579
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                   0      533    1579
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                   1       29    1579
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            0     8383   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            1       89   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      0      573   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      1        7   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                   0     7466   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                   1       63   16581
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            0      401     732
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            1        8     732
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      0      113     732
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      1        6     732
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   0      198     732
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   1        6     732
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term            0      470    1186
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term            1       42    1186
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                      0      248    1186
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                      1       18    1186
6-24 months   ki1135781-COHORTS          INDIA                          Early term                   0      367    1186
6-24 months   ki1135781-COHORTS          INDIA                          Early term                   1       41    1186
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            0     1034    2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            1       47    2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      0      550    2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      1       34    2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   0     1062    2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   1       62    2789
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            0     7749   15049
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            1      434   15049
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      0     2534   15049
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      1      172   15049
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   0     3908   15049
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   1      252   15049


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

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
![](/tmp/002eafdc-adcf-4caf-ac2a-f5c048862516/a0a0fda8-b115-42ba-9cef-cfa2b235225e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/002eafdc-adcf-4caf-ac2a-f5c048862516/a0a0fda8-b115-42ba-9cef-cfa2b235225e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/002eafdc-adcf-4caf-ac2a-f5c048862516/a0a0fda8-b115-42ba-9cef-cfa2b235225e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/002eafdc-adcf-4caf-ac2a-f5c048862516/a0a0fda8-b115-42ba-9cef-cfa2b235225e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1000000   0.0627645   0.1372355
0-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1904762   0.0715668   0.3093856
0-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1326531   0.0654100   0.1998961
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0263590   0.0174484   0.0352696
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0337045   0.0137715   0.0536376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0239996   0.0099844   0.0380147
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0572845   0.0409863   0.0735828
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0555965   0.0262419   0.0849510
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0517725   0.0334223   0.0701227
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0105052   0.0058392   0.0151712
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0120690   0.0030561   0.0210818
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0083676   0.0038455   0.0128898
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0195599   0.0061299   0.0329899
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0504202   0.0110797   0.0897606
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0294118   0.0062107   0.0526128
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0821006   0.0583357   0.1058655
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0695136   0.0390289   0.0999983
0-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.0992903   0.0702564   0.1283243
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0435979   0.0314321   0.0557637
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0574644   0.0384351   0.0764937
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0553678   0.0419481   0.0687875
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0532245   0.0477578   0.0586912
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0631157   0.0536372   0.0725942
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0608665   0.0531252   0.0686077
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1553398   0.1058014   0.2048782
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1176471   0.0290906   0.2062035
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1000000   0.0341631   0.1658369
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.1387755   0.0954297   0.1821213
0-6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.2142857   0.0900289   0.3385425
0-6 months    ki1000108-IRC              INDIA                          Early term           NA                0.1875000   0.1093206   0.2656794
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0244519   0.0156597   0.0332442
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0268456   0.0084896   0.0452017
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0266667   0.0117775   0.0415558
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0309278   0.0179016   0.0439541
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0412844   0.0148657   0.0677031
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0254403   0.0117832   0.0390974
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0884628   0.0585792   0.1183465
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0696547   0.0360329   0.1032764
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0779030   0.0495493   0.1062567
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0336395   0.0138957   0.0533834
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0743762   0.0344094   0.1143431
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0802460   0.0515389   0.1089531
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1000000   0.0627645   0.1372355
6-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1904762   0.0715668   0.3093856
6-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1326531   0.0654100   0.1998961
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0264477   0.0175260   0.0353695
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0338686   0.0139909   0.0537464
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0239497   0.0100307   0.0378688
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0574072   0.0410795   0.0737348
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0556826   0.0265152   0.0848499
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0520494   0.0337303   0.0703684
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0105052   0.0058392   0.0151712
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0120690   0.0030561   0.0210818
6-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0083676   0.0038455   0.0128898
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0195599   0.0061299   0.0329899
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0504202   0.0110797   0.0897606
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0294118   0.0062107   0.0526128
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0822898   0.0585040   0.1060755
6-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0691431   0.0390030   0.0992832
6-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.1001763   0.0709477   0.1294049
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0435627   0.0314445   0.0556810
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0579760   0.0389395   0.0770126
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0551088   0.0417167   0.0685009
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0533373   0.0478524   0.0588222
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0627681   0.0533315   0.0722047
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0606972   0.0529670   0.0684274


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1179487   0.0858959   0.1500016
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270270   0.0199797   0.0340743
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0550982   0.0438403   0.0663560
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0273224   0.0155047   0.0391401
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0851602   0.0692682   0.1010522
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512729   0.0430860   0.0594597
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0570138   0.0528460   0.0611815
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1364985   0.0997894   0.1732076
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592689   0.1225736   0.1959642
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253361   0.0183307   0.0323414
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0305398   0.0215490   0.0395306
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0846069   0.0570929   0.1121208
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613208   0.0451635   0.0774781
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1179487   0.0858959   0.1500016
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270270   0.0199797   0.0340743
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0550982   0.0438403   0.0663560
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0273224   0.0155047   0.0391401
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0851602   0.0692682   0.1010522
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512729   0.0430860   0.0594597
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0570138   0.0528460   0.0611815


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.9047619   0.9207828   3.940254
0-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.3265306   0.7072263   2.488148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.2786721   0.6470215   2.526968
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9104882   0.4636432   1.787989
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9705318   0.5326909   1.768252
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9037784   0.5736771   1.423824
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1488570   0.5931471   2.225203
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.7965246   0.5427623   1.168931
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.5777311   0.9117126   7.288149
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.5036765   0.5284081   4.278971
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.8466880   0.5005924   1.432065
0-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2093739   0.8010692   1.825792
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3180527   0.8548349   2.032279
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2699646   0.8777016   1.837538
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1858385   0.9895733   1.421029
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.1435797   0.9793259   1.335382
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.7573529   0.3343982   1.715271
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.6437500   0.3097517   1.337891
0-6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    1.5441176   0.7991678   2.983478
0-6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.3511029   0.8024776   2.274804
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0978940   0.5070474   2.377236
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0905747   0.5613548   2.118719
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.3348624   0.6204803   2.871739
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8225701   0.4157567   1.627446
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.7873889   0.4999910   1.239985
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.8806297   0.7144517   1.085460
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    2.2109756   0.9975906   4.900220
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    2.3854669   1.1990855   4.745660
6-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.9047619   0.9207828   3.940254
6-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.3265306   0.7072263   2.488148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.2805874   0.6508499   2.519635
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9055491   0.4625351   1.772880
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9699580   0.5344090   1.760484
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9066697   0.5766111   1.425658
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1488570   0.5931471   2.225203
6-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.7965246   0.5427623   1.168931
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.5777311   0.9117126   7.288149
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.5036765   0.5284081   4.278971
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.8402391   0.4978875   1.417995
6-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2173602   0.8069793   1.836436
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3308626   0.8655436   2.046339
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2650435   0.8744933   1.830014
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1768151   0.9818928   1.410433
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.1379881   0.9742957   1.329183


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0179487   -0.0072768   0.0431742
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0006680   -0.0049681   0.0063042
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0021864   -0.0135437   0.0091710
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0009159   -0.0025910   0.0007592
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0077625   -0.0031218   0.0186468
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0030596   -0.0151157   0.0212349
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0076749   -0.0023446   0.0176945
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0037892    0.0002385   0.0073400
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0188413   -0.0471504   0.0094678
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0204934   -0.0081709   0.0491577
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0008842   -0.0047344   0.0065027
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0003881   -0.0097080   0.0089318
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0038560   -0.0121205   0.0044086
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0276812    0.0088706   0.0464918
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0179487   -0.0072768   0.0431742
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0005793   -0.0050602   0.0062188
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0023090   -0.0136859   0.0090678
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0009159   -0.0025910   0.0007592
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0077625   -0.0031218   0.0186468
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0028704   -0.0153241   0.0210650
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0077101   -0.0022740   0.0176942
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0036765    0.0001164   0.0072365


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1521739   -0.0870878   0.3387755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0247168   -0.2077129   0.2124143
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0396814   -0.2674763   0.1471734
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0955133   -0.2894475   0.0692530
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2841076   -0.2167890   0.5788079
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0359276   -0.2028341   0.2272953
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1496878   -0.0682841   0.3231849
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0664619    0.0018732   0.1268710
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1380329   -0.3629649   0.0497782
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.1286718   -0.0692198   0.2899375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0348969   -0.2141578   0.2328642
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0127068   -0.3688196   0.2507595
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0455750   -0.1467707   0.0466907
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.4514167    0.0777048   0.6737014
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1521739   -0.0870878   0.3387755
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0214338   -0.2110743   0.2093038
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0419074   -0.2700638   0.1452626
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0955133   -0.2894475   0.0692530
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2841076   -0.2167890   0.5788079
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0337064   -0.2052788   0.2253050
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1503741   -0.0666619   0.3232494
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0644841   -0.0002857   0.1250600
