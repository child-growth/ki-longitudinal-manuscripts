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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enstunt    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             187     231  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              44     231  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0              56      65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1               9      65  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0              37      47  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1              10      47  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0              25      27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1               2      27  haz              
Birth       ki0047075b-MAL-ED          PERU                           0             207     233  haz              
Birth       ki0047075b-MAL-ED          PERU                           1              26     233  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             113     123  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              10     123  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             102     125  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              23     125  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              75      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              17      92  haz              
Birth       ki1000108-IRC              INDIA                          0             343     388  haz              
Birth       ki1000108-IRC              INDIA                          1              45     388  haz              
Birth       ki1000109-EE               PAKISTAN                       0             140     240  haz              
Birth       ki1000109-EE               PAKISTAN                       1             100     240  haz              
Birth       ki1000109-ResPak           PAKISTAN                       0              28      42  haz              
Birth       ki1000109-ResPak           PAKISTAN                       1              14      42  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          0             903    1252  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             349    1252  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     0             511     608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              97     608  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0             491     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              48     539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             631     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             101     732  haz              
Birth       ki1101329-Keneba           GAMBIA                         0            1460    1543  haz              
Birth       ki1101329-Keneba           GAMBIA                         1              83    1543  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0             574     696  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1             122     696  haz              
Birth       ki1114097-CMIN             BANGLADESH                     0              17      26  haz              
Birth       ki1114097-CMIN             BANGLADESH                     1               9      26  haz              
Birth       ki1114097-CONTENT          PERU                           0               2       2  haz              
Birth       ki1114097-CONTENT          PERU                           1               0       2  haz              
Birth       ki1119695-PROBIT           BELARUS                        0           13857   13890  haz              
Birth       ki1119695-PROBIT           BELARUS                        1              33   13890  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0           12441   13875  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            1434   13875  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      0             802     852  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      1              50     852  haz              
Birth       ki1135781-COHORTS          INDIA                          0            5848    6640  haz              
Birth       ki1135781-COHORTS          INDIA                          1             792    6640  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    0            2863    3050  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    1             187    3050  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           15068   22455  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            7387   22455  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            1966    2823  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             857    2823  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             202     241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              39     241  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0             184     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1              25     209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0             198     236  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1              38     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0             208     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1              28     236  haz              
6 months    ki0047075b-MAL-ED          PERU                           0             239     273  haz              
6 months    ki0047075b-MAL-ED          PERU                           1              34     273  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             227     254  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              27     254  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             208     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              39     247  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             294     369  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              75     369  haz              
6 months    ki1000108-IRC              INDIA                          0             358     407  haz              
6 months    ki1000108-IRC              INDIA                          1              49     407  haz              
6 months    ki1000109-EE               PAKISTAN                       0             209     373  haz              
6 months    ki1000109-EE               PAKISTAN                       1             164     373  haz              
6 months    ki1000109-ResPak           PAKISTAN                       0             173     239  haz              
6 months    ki1000109-ResPak           PAKISTAN                       1              66     239  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          0             972    1336  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             364    1336  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             232     380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             148     380  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     0             452     537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              85     537  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             543     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              61     604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             613     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             102     715  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2029  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             139    2029  haz              
6 months    ki1101329-Keneba           GAMBIA                         0            1892    2089  haz              
6 months    ki1101329-Keneba           GAMBIA                         1             197    2089  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0             228     299  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              71     299  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0             473     564  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1              91     564  haz              
6 months    ki1114097-CMIN             BANGLADESH                     0             151     243  haz              
6 months    ki1114097-CMIN             BANGLADESH                     1              92     243  haz              
6 months    ki1114097-CONTENT          PERU                           0             197     215  haz              
6 months    ki1114097-CONTENT          PERU                           1              18     215  haz              
6 months    ki1119695-PROBIT           BELARUS                        0           15632   15761  haz              
6 months    ki1119695-PROBIT           BELARUS                        1             129   15761  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            7795    8669  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             874    8669  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      0             809     961  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      1             152     961  haz              
6 months    ki1135781-COHORTS          INDIA                          0            6048    6860  haz              
6 months    ki1135781-COHORTS          INDIA                          1             812    6860  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    0            2552    2708  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    1             156    2708  haz              
6 months    ki1148112-LCNI-5           MALAWI                         0             530     839  haz              
6 months    ki1148112-LCNI-5           MALAWI                         1             309     839  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           11707   16811  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            5104   16811  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0            3475    4831  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            1356    4831  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0             150     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1              19     169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0             191     227  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1              36     227  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0             201     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1              27     228  haz              
24 months   ki0047075b-MAL-ED          PERU                           0             174     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           1              27     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             214     238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              24     238  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             181     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              33     214  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             294     371  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              77     371  haz              
24 months   ki1000108-IRC              INDIA                          0             358     409  haz              
24 months   ki1000108-IRC              INDIA                          1              51     409  haz              
24 months   ki1000109-EE               PAKISTAN                       0             100     167  haz              
24 months   ki1000109-EE               PAKISTAN                       1              67     167  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     0             355     429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     429  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             518     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              60     578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             444     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              70     514  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6  haz              
24 months   ki1101329-Keneba           GAMBIA                         0            1549    1725  haz              
24 months   ki1101329-Keneba           GAMBIA                         1             176    1725  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0             406     488  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1              82     488  haz              
24 months   ki1114097-CMIN             BANGLADESH                     0             153     242  haz              
24 months   ki1114097-CMIN             BANGLADESH                     1              89     242  haz              
24 months   ki1114097-CONTENT          PERU                           0             147     164  haz              
24 months   ki1114097-CONTENT          PERU                           1              17     164  haz              
24 months   ki1119695-PROBIT           BELARUS                        0            4024    4035  haz              
24 months   ki1119695-PROBIT           BELARUS                        1              11    4035  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            1406    1640  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             234    1640  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      0             740    1070  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      1             330    1070  haz              
24 months   ki1135781-COHORTS          INDIA                          0            4696    5337  haz              
24 months   ki1135781-COHORTS          INDIA                          1             641    5337  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    0            2310    2445  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    1             135    2445  haz              
24 months   ki1148112-LCNI-5           MALAWI                         0             377     579  haz              
24 months   ki1148112-LCNI-5           MALAWI                         1             202     579  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            5942    8632  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2690    8632  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0            3396    4752  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            1356    4752  haz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/0b5b848d-322e-476a-97f8-cc1aa7134d50/efd51ef2-3ffa-4b0c-aa9f-8972eca77631/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0b5b848d-322e-476a-97f8-cc1aa7134d50/efd51ef2-3ffa-4b0c-aa9f-8972eca77631/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0b5b848d-322e-476a-97f8-cc1aa7134d50/efd51ef2-3ffa-4b0c-aa9f-8972eca77631/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.7510274   -0.8578906   -0.6441641
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.6999436   -2.8715236   -2.5283635
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.3512500   -0.5701451   -0.1323549
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -2.6966667   -2.9574559   -2.4358775
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.7766780   -0.9849589   -0.5683971
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -2.5679385   -2.9738237   -2.1620534
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.6826517   -0.7835510   -0.5817524
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -2.4884389   -2.6621231   -2.3147548
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.4368583   -0.5960252   -0.2776913
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -2.6141492   -3.1099980   -2.1183005
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.7181840   -0.8570577   -0.5793102
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0413044   -3.4726455   -2.6099633
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5946897   -0.7581558   -0.4312236
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.6503177   -2.9660879   -2.3345476
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0503085   -0.0882195    0.1888366
Birth       ki1000108-IRC              INDIA                          1                    NA                -3.0294222   -3.3395143   -2.7193300
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.9031553   -1.0613750   -0.7449356
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -3.1955356   -3.3760646   -3.0150066
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -0.1928043   -0.5575061    0.1718974
Birth       ki1000109-ResPak           PAKISTAN                       1                    NA                -2.5715053   -2.7975058   -2.3455048
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.9050161   -0.9416896   -0.8683425
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -2.7908378   -2.9259486   -2.6557271
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.6099626   -0.6866635   -0.5332617
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.6050955   -2.7148449   -2.4953461
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.7355496   -0.8044217   -0.6666774
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -2.3440969   -2.4471449   -2.2410488
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.6576739   -0.7194829   -0.5958649
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.5021326   -2.6036355   -2.4006297
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.2041147    0.1505372    0.2576922
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -3.0227233   -3.2621815   -2.7832651
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.7489215   -0.8152442   -0.6825987
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.6456192   -2.7658376   -2.5254008
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                -0.9811765   -1.4828326   -0.4795203
Birth       ki1114097-CMIN             BANGLADESH                     1                    NA                -3.5811111   -4.2641379   -2.8980843
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.3355831    1.1748764    1.4962898
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -2.4351848   -2.4689182   -2.4014513
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.2347616   -0.2518499   -0.2176734
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.8055772   -2.8469355   -2.7642188
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3062182    0.2345050    0.3779314
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.6626642   -2.8520093   -2.4733190
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.3927593   -0.4163701   -0.3691485
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -2.7189606   -2.7662334   -2.6716878
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0875729   -0.1209770   -0.0541689
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.7139319   -2.8148799   -2.6129838
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.9635998   -0.9768708   -0.9503289
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.8657399   -2.8845626   -2.8469172
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.9830519   -1.0217273   -0.9443765
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.7619524   -2.8139389   -2.7099659
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.0081205   -1.1156838   -0.9005572
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.2307253   -2.5448633   -1.9165874
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1050579   -0.0455486    0.2556644
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.4229723   -0.8824495    0.0365049
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.0395582   -1.1547962   -0.9243202
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -2.1011022   -2.4054919   -1.7967125
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.4269896   -0.5336914   -0.3202879
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.5073127   -1.8402286   -1.1743968
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.1654248   -1.2679964   -1.0628532
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -2.4269976   -2.6997068   -2.1542885
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.9756603   -1.1056043   -0.8457164
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.7804121   -2.2051369   -1.3556873
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1861750   -1.3066420   -1.0657079
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.1639123   -2.4322940   -1.8955305
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.2241135   -1.3752076   -1.0730194
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.2194663   -2.5581774   -1.8807552
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.1200154   -1.2554304   -0.9846003
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.9978099   -2.4482254   -1.5473944
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -1.5248686   -1.6479636   -1.4017735
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.8068313   -2.9729213   -2.6407413
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.1947368   -1.4344773   -0.9549962
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -2.0328781   -2.3927776   -1.6729786
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.0565865   -1.1332183   -0.9799547
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -2.3127978   -2.3895982   -2.2359973
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -1.2521716   -1.3446940   -1.1596492
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -2.9112750   -3.0519177   -2.7706324
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -1.2245636   -1.3135206   -1.1356066
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.3735604   -2.5755907   -2.1715300
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.9948349   -1.0696137   -0.9200560
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.9524782   -2.1815422   -1.7234143
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.0455556   -1.1174937   -0.9736174
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.1584110   -2.3237422   -1.9930797
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4632377   -0.5120585   -0.4144169
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.6840333   -1.8695334   -1.4985332
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.8047563   -0.8518452   -0.7576673
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -1.9159789   -2.0850174   -1.7469404
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.1777686   -1.2691871   -1.0863502
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -2.8087252   -2.9676752   -2.6497752
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1985964   -1.2767225   -1.1204704
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.1467836   -2.3371411   -1.9564262
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.2935584   -1.4352946   -1.1518221
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -2.4733294   -2.6767721   -2.2698867
6 months    ki1114097-CONTENT          PERU                           0                    NA                -0.1909651   -0.3627846   -0.0191456
6 months    ki1114097-CONTENT          PERU                           1                    NA                -1.6682014   -2.2400419   -1.0963608
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1203111    0.0221574    0.2184648
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -1.5086326   -1.6177736   -1.3994917
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.7791554   -0.8053523   -0.7529585
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.6613972   -1.7430891   -1.5797053
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.5952877   -1.6612915   -1.5292840
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.9979181   -3.1426278   -2.8532084
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.8311909   -0.8581860   -0.8041957
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -2.2317018   -2.3118474   -2.1515562
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -1.0661120   -1.1079109   -1.0243130
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.3825781   -2.5284695   -2.2366867
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -1.0561053   -1.1130472   -0.9991634
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -2.6921141   -2.7618614   -2.6223668
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.9579814   -0.9815558   -0.9344071
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.1259025   -2.1552418   -2.0965633
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.0082805   -1.0451295   -0.9714314
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.2068356   -2.2682655   -2.1454057
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.8470132   -1.9797066   -1.7143198
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.6896754   -2.9814795   -2.3978714
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0659853   -0.1112242    0.2431947
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.4383642   -0.9732379    0.0965096
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.7770451   -1.9054184   -1.6486718
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -2.6045334   -2.9384160   -2.2706507
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.2052418   -1.3239112   -1.0865723
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -2.1717958   -2.5499301   -1.7936615
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -1.6494974   -1.7694517   -1.5295431
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -2.4156406   -2.8090696   -2.0222117
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.6141561   -1.7551922   -1.4731199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.9676468   -2.4457173   -1.4895762
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5522214   -2.6993770   -2.4050658
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.1805375   -3.4754417   -2.8856333
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.4755318   -2.5862782   -2.3647854
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.8596889   -3.0706038   -2.6487741
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.7284487   -1.8287861   -1.6281113
24 months   ki1000108-IRC              INDIA                          1                    NA                -2.2596637   -2.4833844   -2.0359429
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.4144902   -2.5802431   -2.2487374
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -3.0370703   -3.2761238   -2.7980167
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -2.0476311   -2.1524852   -1.9427770
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -3.0231065   -3.2706218   -2.7755911
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5243883   -1.6092073   -1.4395693
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -2.2529165   -2.5463568   -1.9594762
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.3356542   -1.4213046   -1.2500037
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.1492419   -2.3833001   -1.9151837
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.4961366   -1.5469161   -1.4453570
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -2.3036864   -2.4737016   -2.1336712
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.7869131   -1.8771883   -1.6966380
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.3674222   -2.5945025   -2.1403419
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.2772362   -2.4200675   -2.1344049
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.9518840   -3.1654391   -2.7383290
24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.5939690   -0.7683596   -0.4195785
24 months   ki1114097-CONTENT          PERU                           1                    NA                -1.6237124   -2.1186730   -1.1287517
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1287358   -0.4305852    0.1731136
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -1.0917397   -1.3748305   -0.8086488
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.5209481   -1.5805567   -1.4613394
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.1132745   -2.2773907   -1.9491584
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -2.7518796   -2.8272032   -2.6765561
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -3.5273294   -3.6277187   -3.4269401
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -2.0033496   -2.0369082   -1.9697910
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.9747155   -3.0649262   -2.8845049
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -2.3637268   -2.4094306   -2.3180229
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -3.2814891   -3.4500180   -3.1129602
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -1.4995167   -1.5837232   -1.4153103
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -2.6073494   -2.7259843   -2.4887146
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.7603241   -1.7902066   -1.7304415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.5779296   -2.6196073   -2.5362519
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.5494512   -1.5864475   -1.5124548
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.3615944   -2.4208194   -2.3023694


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0308036   -0.0328378    0.0944451
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.8811538   -2.5124807   -1.2498270
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5002724   -0.5208163   -0.4797285
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6698961   -0.6980556   -0.6417365
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5894148   -1.6086362   -1.5701935
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.0835567   -2.2027557   -1.9643578
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.4314086   -1.6374838   -1.2253335
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9041369   -0.9513363   -0.8569376
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8679450   -0.8935071   -0.8423828
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9968455   -1.0246180   -0.9690730
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5774356   -1.6272400   -1.5276311
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6055701   -1.6625562   -1.5485840
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9923738   -3.0565851   -2.9281626
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.1198201   -2.1524299   -2.0872104
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8861485   -1.9671802   -1.8051169
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0136481   -2.0413552   -1.9859409
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7807218   -1.8162478   -1.7451958


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -1.9489162   -2.1519447   -1.7458877
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                 -2.3454167   -2.6858959   -2.0049374
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                 -1.7912606   -2.2547803   -1.3277408
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -1.8057872   -2.0074587   -1.6041158
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -2.1772909   -2.7006180   -1.6539639
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -2.3231204   -2.7766838   -1.8695571
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -2.0556280   -2.4134286   -1.6978274
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 -3.0797307   -3.4197263   -2.7397352
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                 -2.2923803   -2.5332157   -2.0515449
Birth       ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       1                    0                 -2.3787009   -2.8128497   -1.9445521
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -1.8858218   -2.0251193   -1.7465243
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -1.9951329   -2.1292535   -1.8610124
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -1.6085473   -1.7320381   -1.4850565
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -1.8444587   -1.9635842   -1.7253332
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                 -3.2268380   -3.4722816   -2.9813943
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                 -1.8966977   -2.0348676   -1.7585278
Birth       ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     1                    0                 -2.5999346   -3.4473923   -1.7524770
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -3.7707678   -3.9376405   -3.6038952
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -2.5708155   -2.6155809   -2.5260502
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 -2.9688824   -3.1713668   -2.7663979
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -2.3262012   -2.3790466   -2.2733558
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 -2.6263589   -2.7327225   -2.5199954
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -1.9021401   -1.9256591   -1.8786210
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -1.7789005   -1.8444088   -1.7133922
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -1.2226048   -1.5550301   -0.8901796
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.5280302   -1.0091374   -0.0469229
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 -1.0615441   -1.3871662   -0.7359219
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -1.0803230   -1.4299054   -0.7307407
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -1.2615728   -1.5530240   -0.9701217
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.8047518   -1.2476064   -0.3618971
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.9777373   -1.2725972   -0.6828774
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.9953528   -1.3684233   -0.6222823
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.8777945   -1.3467242   -0.4088649
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -1.2819627   -1.4888822   -1.0750433
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.8381413   -1.2716262   -0.4046564
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -1.2562112   -1.3364171   -1.1760054
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -1.6591035   -1.8275181   -1.4906888
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -1.1489968   -1.3698300   -0.9281635
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.9576433   -1.1986418   -0.7166448
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -1.1128554   -1.2934522   -0.9322586
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.2207956   -1.4125392   -1.0290520
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -1.1112226   -1.2867812   -0.9356641
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -1.6309566   -1.8146016   -1.4473116
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.9481872   -1.1540234   -0.7423510
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -1.1797710   -1.4292486   -0.9302935
6 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    0                 -1.4772363   -2.0788694   -0.8756031
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -1.6289437   -1.7633921   -1.4944952
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.8822418   -0.9679943   -0.7964894
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -1.4026303   -1.5619147   -1.2433460
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -1.4005109   -1.4850486   -1.3159732
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -1.3164661   -1.4681184   -1.1648138
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -1.6360088   -1.7263063   -1.5457113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -1.1679211   -1.2020757   -1.1337666
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -1.1985551   -1.2694556   -1.1276546
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.8426623   -1.1633729   -0.5219516
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.5043494   -1.0672551    0.0585562
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.8274883   -1.1842336   -0.4707430
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.9665540   -1.3629104   -0.5701976
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.7661432   -1.1778595   -0.3544269
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.3534907   -0.8524227    0.1454413
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.6283162   -0.9581651   -0.2984673
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3841571   -0.6222306   -0.1460836
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.5312149   -0.7767449   -0.2856850
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.6225800   -0.9143073   -0.3308527
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.9754754   -1.2436171   -0.7073337
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.7285283   -1.0331073   -0.4239492
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.8135877   -1.0631828   -0.5639926
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.8075498   -0.9845182   -0.6305814
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.5805091   -0.8237189   -0.3372993
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.6746478   -0.9320160   -0.4172796
24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    0                 -1.0297433   -1.5601921   -0.4992946
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.9630039   -1.3415904   -0.5844173
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.5923264   -0.7667333   -0.4179196
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.7754498   -0.9008382   -0.6500613
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.9713659   -1.0674541   -0.8752777
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.9177624   -1.0924069   -0.7431179
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -1.1078327   -1.2534444   -0.9622210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.8176056   -0.8639888   -0.7712223
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.8121432   -0.8795393   -0.7447472


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.3670679   -0.4725887   -0.2615471
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.3247500   -0.5287356   -0.1207644
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.4269390   -0.6821762   -0.1717019
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.2001380   -0.2782738   -0.1220022
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1948490   -0.3308649   -0.0588332
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4374160   -0.6182027   -0.2566294
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3665059   -0.5398066   -0.1932053
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3583498   -0.4643704   -0.2523291
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.9577197   -1.1328625   -0.7825769
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -0.7871957   -1.1601020   -0.4142893
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.5264057   -0.5968830   -0.4559283
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.3210572   -0.3835057   -0.2586086
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1495525   -0.1912994   -0.1078055
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.2518206   -0.3002052   -0.2034360
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -0.1733110   -0.2120143   -0.1346078
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.3362366   -0.3974628   -0.2750103
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                -0.8999774   -1.4666696   -0.3332851
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0086385   -0.0131652   -0.0041118
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.2655108   -0.2793195   -0.2517021
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1764881   -0.2271489   -0.1258274
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.2771368   -0.2963166   -0.2579569
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.1614763   -0.1848465   -0.1381060
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.6258150   -0.6414115   -0.6102185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.5402389   -0.5796833   -0.5007946
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1968726   -0.2738741   -0.1198712
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0574821   -0.1171767    0.0022124
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1719672   -0.2434398   -0.1004947
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.1345923   -0.1981954   -0.0709892
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.1582413   -0.2198165   -0.0966660
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0876599   -0.1443957   -0.0309240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1825700   -0.2559654   -0.1091746
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1993373   -0.2822998   -0.1163747
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1143909   -0.1724362   -0.0563456
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.5586882   -0.6698524   -0.4475240
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2366719   -0.3659100   -0.1074337
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.3452698   -0.3867050   -0.3038345
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.6465126   -0.7512273   -0.5417980
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1828185   -0.2324629   -0.1331741
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0968566   -0.1297881   -0.0639252
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1531228   -0.1905242   -0.1157214
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0802012   -0.0984664   -0.0619360
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0993807   -0.1201310   -0.0786303
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.3841321   -0.4731390   -0.2951253
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1522428   -0.1970892   -0.1073964
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.4908792   -0.6144039   -0.3673546
6 months    ki1114097-CONTENT          PERU                           0                    NA                -0.1229566   -0.1960668   -0.0498465
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0133125   -0.0201173   -0.0065076
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0887896   -0.0990103   -0.0785689
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2204459   -0.2615505   -0.1793412
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.1656546   -0.1802993   -0.1510099
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0744604   -0.0890313   -0.0598895
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.6040854   -0.6676347   -0.5405361
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3551118   -0.3686822   -0.3415415
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3365136   -0.3610088   -0.3120184
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1313830   -0.1959717   -0.0667944
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0598709   -0.1225295    0.0027878
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1091443   -0.1736699   -0.0446187
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.1023460   -0.1622177   -0.0424742
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.1029736   -0.1672996   -0.0386475
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0309035   -0.0788731    0.0170662
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0933394   -0.1513471   -0.0353317
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0833361   -0.1357793   -0.0308929
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0703288   -0.1070973   -0.0335602
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.2554998   -0.3819083   -0.1290912
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1714268   -0.2294100   -0.1134436
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0780339   -0.1133608   -0.0427069
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1056104   -0.1462950   -0.0649259
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0812990   -0.1018098   -0.0607883
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1005049   -0.1442974   -0.0567124
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.2337142   -0.3358369   -0.1315914
24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.1022505   -0.1747608   -0.0297402
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0026690   -0.0137030    0.0083650
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0846220   -0.1110589   -0.0581851
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2404942   -0.2849325   -0.1960559
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1164705   -0.1307896   -0.1021515
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0503878   -0.0632270   -0.0375485
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.3866318   -0.4534476   -0.3198160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2533240   -0.2699041   -0.2367439
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2312706   -0.2530739   -0.2094674
