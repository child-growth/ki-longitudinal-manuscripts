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

**Outcome Variable:** whz

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
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enstunt    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             187     215  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              28     215  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0              56      62  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1               6      62  whz              
Birth       ki0047075b-MAL-ED          INDIA                          0              37      45  whz              
Birth       ki0047075b-MAL-ED          INDIA                          1               8      45  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          0              25      26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          1               1      26  whz              
Birth       ki0047075b-MAL-ED          PERU                           0             207     228  whz              
Birth       ki0047075b-MAL-ED          PERU                           1              21     228  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             112     120  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               8     120  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             102     115  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              13     115  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              74      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              12      86  whz              
Birth       ki1000108-IRC              INDIA                          0             318     343  whz              
Birth       ki1000108-IRC              INDIA                          1              25     343  whz              
Birth       ki1000109-EE               PAKISTAN                       0             137     177  whz              
Birth       ki1000109-EE               PAKISTAN                       1              40     177  whz              
Birth       ki1000109-ResPak           PAKISTAN                       0              28      38  whz              
Birth       ki1000109-ResPak           PAKISTAN                       1              10      38  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          0             901    1103  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             202    1103  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     0             506     575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              69     575  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0             491     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              41     532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             625     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              82     707  whz              
Birth       ki1101329-Keneba           GAMBIA                         0            1425    1466  whz              
Birth       ki1101329-Keneba           GAMBIA                         1              41    1466  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0             570     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1              71     641  whz              
Birth       ki1114097-CMIN             BANGLADESH                     0              17      19  whz              
Birth       ki1114097-CMIN             BANGLADESH                     1               2      19  whz              
Birth       ki1114097-CONTENT          PERU                           0               2       2  whz              
Birth       ki1114097-CONTENT          PERU                           1               0       2  whz              
Birth       ki1119695-PROBIT           BELARUS                        0           13804   13830  whz              
Birth       ki1119695-PROBIT           BELARUS                        1              26   13830  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0           12227   12917  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1             690   12917  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      0             732     756  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      1              24     756  whz              
Birth       ki1135781-COHORTS          INDIA                          0            5813    6193  whz              
Birth       ki1135781-COHORTS          INDIA                          1             380    6193  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    0            2813    2899  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    1              86    2899  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           15027   18014  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            2987   18014  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            1963    2396  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             433    2396  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             202     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              39     241  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0             184     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1              25     209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          0             198     236  whz              
6 months    ki0047075b-MAL-ED          INDIA                          1              38     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          0             208     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          1              28     236  whz              
6 months    ki0047075b-MAL-ED          PERU                           0             239     273  whz              
6 months    ki0047075b-MAL-ED          PERU                           1              34     273  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             227     254  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              27     254  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             208     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              39     247  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             292     368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              76     368  whz              
6 months    ki1000108-IRC              INDIA                          0             356     408  whz              
6 months    ki1000108-IRC              INDIA                          1              52     408  whz              
6 months    ki1000109-EE               PAKISTAN                       0             209     375  whz              
6 months    ki1000109-EE               PAKISTAN                       1             166     375  whz              
6 months    ki1000109-ResPak           PAKISTAN                       0             173     239  whz              
6 months    ki1000109-ResPak           PAKISTAN                       1              66     239  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          0             969    1334  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             365    1334  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             232     380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             148     380  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     0             452     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              85     537  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             542     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              61     603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             613     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             102     715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2028  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             138    2028  whz              
6 months    ki1101329-Keneba           GAMBIA                         0            1893    2089  whz              
6 months    ki1101329-Keneba           GAMBIA                         1             196    2089  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0             228     299  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              71     299  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0             473     564  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1              91     564  whz              
6 months    ki1114097-CMIN             BANGLADESH                     0             151     243  whz              
6 months    ki1114097-CMIN             BANGLADESH                     1              92     243  whz              
6 months    ki1114097-CONTENT          PERU                           0             197     215  whz              
6 months    ki1114097-CONTENT          PERU                           1              18     215  whz              
6 months    ki1119695-PROBIT           BELARUS                        0           15628   15758  whz              
6 months    ki1119695-PROBIT           BELARUS                        1             130   15758  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            7632    8505  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             873    8505  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      0             809     963  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      1             154     963  whz              
6 months    ki1135781-COHORTS          INDIA                          0            6034    6850  whz              
6 months    ki1135781-COHORTS          INDIA                          1             816    6850  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    0            2549    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    1             157    2706  whz              
6 months    ki1148112-LCNI-5           MALAWI                         0             530     839  whz              
6 months    ki1148112-LCNI-5           MALAWI                         1             309     839  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           11673   16784  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            5111   16784  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0            3473    4833  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            1360    4833  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0             150     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1              19     169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          0             191     227  whz              
24 months   ki0047075b-MAL-ED          INDIA                          1              36     227  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          0             201     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          1              27     228  whz              
24 months   ki0047075b-MAL-ED          PERU                           0             174     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           1              27     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             214     238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              24     238  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             181     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              33     214  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             295     372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              77     372  whz              
24 months   ki1000108-IRC              INDIA                          0             358     409  whz              
24 months   ki1000108-IRC              INDIA                          1              51     409  whz              
24 months   ki1000109-EE               PAKISTAN                       0             100     168  whz              
24 months   ki1000109-EE               PAKISTAN                       1              68     168  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     0             354     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     428  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             519     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              60     579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             444     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              70     514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6  whz              
24 months   ki1101329-Keneba           GAMBIA                         0            1550    1726  whz              
24 months   ki1101329-Keneba           GAMBIA                         1             176    1726  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0             405     487  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1              82     487  whz              
24 months   ki1114097-CMIN             BANGLADESH                     0             153     243  whz              
24 months   ki1114097-CMIN             BANGLADESH                     1              90     243  whz              
24 months   ki1114097-CONTENT          PERU                           0             147     164  whz              
24 months   ki1114097-CONTENT          PERU                           1              17     164  whz              
24 months   ki1119695-PROBIT           BELARUS                        0            3961    3972  whz              
24 months   ki1119695-PROBIT           BELARUS                        1              11    3972  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             331     433  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             102     433  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      0             743    1082  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      1             339    1082  whz              
24 months   ki1135781-COHORTS          INDIA                          0            4654    5291  whz              
24 months   ki1135781-COHORTS          INDIA                          1             637    5291  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    0            2311    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    1             138    2449  whz              
24 months   ki1148112-LCNI-5           MALAWI                         0             365     563  whz              
24 months   ki1148112-LCNI-5           MALAWI                         1             198     563  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            5914    8603  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2689    8603  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0            3380    4735  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            1355    4735  whz              


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
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/73e25eab-be8e-41e3-913b-c017d66318e1/3c986c1b-f742-4762-9fdb-274899a8b81a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/73e25eab-be8e-41e3-913b-c017d66318e1/3c986c1b-f742-4762-9fdb-274899a8b81a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/73e25eab-be8e-41e3-913b-c017d66318e1/3c986c1b-f742-4762-9fdb-274899a8b81a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.9994736   -1.1513534   -0.8475937
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.3677204   -0.7571082    0.0216674
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.3380357    0.0083857    0.6676857
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                 1.0083333    0.1448999    1.8717667
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.9356757   -1.2327587   -0.6385926
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -0.9175000   -1.6199423   -0.2150577
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0243560   -0.1524948    0.1037828
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.3733913   -0.8449607    0.0981781
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.2412500   -0.4566344   -0.0258656
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4887500   -0.4348184    1.4123184
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7332018    0.5404640    0.9259395
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.9055909   -0.6543145    2.4654963
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5002245   -0.7869685   -0.2134805
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1967358   -1.5287831    1.1353115
Birth       ki1000108-IRC              INDIA                          0                    NA                -1.1111703   -1.3022982   -0.9200424
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.2435522   -0.3608818    0.8479863
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.3935254   -0.6014209   -0.1856299
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -0.0803787   -0.5108466    0.3500892
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -0.3614575   -0.8534941    0.1305792
Birth       ki1000109-ResPak           PAKISTAN                       1                    NA                -0.1727339   -0.7904522    0.4449844
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.6916348   -0.8421737   -0.5410959
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.5654183   -0.9273312   -0.2035054
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -1.3472249   -1.4472168   -1.2472330
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.4108565   -1.7019482   -1.1197647
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.2753304   -1.3560719   -1.1945890
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6269684   -1.8745730   -1.3793637
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.2842341   -1.3737021   -1.1947661
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.9123119   -1.1423278   -0.6822960
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -1.2661717   -1.3281500   -1.2041933
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.1060909   -0.3806416    0.5928235
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1461656   -1.2383891   -1.0539421
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.9588350   -1.2773090   -0.6403610
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -1.1481260   -1.3622298   -0.9340221
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 0.5699555    0.5412199    0.5986911
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.5545293   -0.5806376   -0.5284210
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1736166    0.0350870    0.3121462
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.0868665   -1.1891315   -0.9846015
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3123807   -0.8797331    0.2549717
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -1.0021121   -1.0325622   -0.9716620
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.6964825   -0.8333097   -0.5596552
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.7576762   -0.8046577   -0.7106946
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2951341   -0.5903542    0.0000861
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.7935858   -0.8137267   -0.7734450
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6937031   -0.7345149   -0.6528913
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.6865403   -0.7439980   -0.6290826
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6942394   -0.8133196   -0.5751592
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1195452   -0.2637757    0.0246854
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2167777   -0.4829537    0.0493983
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 1.0359058    0.8618940    1.2099176
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0366571   -0.4372600    0.3639457
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.6829784   -0.8224037   -0.5435530
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.8330641   -1.1482690   -0.5178592
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1477863    0.0073809    0.2881918
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.1130749   -0.4966598    0.2705099
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 1.0697362    0.9424514    1.1970211
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.9119682    0.5075874    1.3163489
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.4938338    0.3374478    0.6502198
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.9133714    0.3775834    1.4491595
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5303225    0.3876485    0.6729965
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5592228    0.2003371    0.9181086
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.4645196   -0.6351555   -0.2938837
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.5544291   -0.9244965   -0.1843618
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.6389054   -0.7768442   -0.5009666
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.3980153   -0.8888763    0.0928457
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.7536079   -0.9007296   -0.6064862
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -0.7893130   -0.9708696   -0.6077565
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0165530   -0.1870647    0.2201707
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.6441731   -1.0182487   -0.2700975
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.6082811   -0.7403123   -0.4762499
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.8164872   -1.0427338   -0.5902407
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.9357322   -1.0830081   -0.7884562
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.1017171   -1.2885863   -0.9148479
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.4326875   -0.5292567   -0.3361183
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.5483368   -0.7920530   -0.3046206
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1687136   -0.2550663   -0.0823608
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.4671890   -0.7435211   -0.1908570
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0538836   -0.0301232    0.1378904
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1014330   -0.3288339    0.1259680
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0821876    0.0276731    0.1367021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0645838   -0.1477878    0.2769554
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.1789667   -0.2321701   -0.1257633
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.2494374   -0.4236947   -0.0751801
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0392952   -0.1644132    0.0858228
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.1936912   -0.4270957    0.0397134
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.6077539   -0.7017157   -0.5137921
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.5241967   -0.7417870   -0.3066063
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.5499462   -0.7263522   -0.3735402
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.5506291   -0.8029589   -0.2982993
6 months    ki1114097-CONTENT          PERU                           0                    NA                 1.0684755    0.9428374    1.1941137
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.9902114    0.6847089    1.2957138
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.5789505    0.5182112    0.6396899
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.6036494    0.5279938    0.6793050
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3166633    0.2896672    0.3436593
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2556136    0.1729099    0.3383172
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.2300354    0.1529494    0.3071214
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0122170   -0.1751552    0.1995892
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.6475992   -0.6764734   -0.6187250
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.0200939   -1.1070334   -0.9331544
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2824179   -0.3246803   -0.2401556
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4684434   -0.6676727   -0.2692140
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.5297194    0.4431225    0.6163162
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.3166639    0.1934856    0.4398422
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.5486921   -0.5713272   -0.5260570
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6975036   -0.7297148   -0.6652923
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3461348   -0.3897978   -0.3024719
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4992847   -0.5697527   -0.4288167
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.7632790   -0.9009936   -0.6255644
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.1522608   -1.4120454   -0.8924761
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.4569810    0.2388082    0.6751539
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.5118009   -0.1932327    1.2168345
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.9281370   -1.0565358   -0.7997382
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.9761114   -1.2616884   -0.6905344
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.3487300   -0.4647488   -0.2327113
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.5925741   -1.0292714   -0.1558768
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1644000    0.0423466    0.2864534
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.2069816   -0.6695571    0.2555938
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.3992523    0.2737197    0.5247849
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4571637    0.0113044    0.9030229
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0737116   -0.0601814    0.2076046
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2147335   -0.5677457    0.1382787
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.4424186   -0.5567137   -0.3281234
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.9850834   -1.2113132   -0.7588535
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.7032758   -0.8014773   -0.6050743
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.9903410   -1.2348753   -0.7458068
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.8893829   -1.0689961   -0.7097697
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -1.1642598   -1.4125733   -0.9159463
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.8731724   -0.9788592   -0.7674856
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.0516184   -1.3049821   -0.7982548
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8578347   -0.9455396   -0.7701298
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1844342   -1.4219301   -0.9469383
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.5460281   -0.6456396   -0.4464165
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.0139386   -1.2918886   -0.7359886
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.7870341   -0.8365606   -0.7375075
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.0317894   -1.1865413   -0.8770375
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1331879   -1.2325057   -1.0338702
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1786217   -1.3840813   -0.9731621
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.7630939   -0.8962051   -0.6299826
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -1.0088152   -1.2055168   -0.8121136
24 months   ki1114097-CONTENT          PERU                           0                    NA                 0.6087624    0.4650314    0.7524933
24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.2092669   -0.1410051    0.5595389
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.6865033    0.5735324    0.7994743
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.9027050    0.6808556    1.1245544
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.1795968   -1.2922040   -1.0669896
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.2456459   -1.4519003   -1.0393915
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1879155   -0.2510834   -0.1247477
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.4903375   -0.5892869   -0.3913882
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.5543418   -0.5841313   -0.5245522
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -1.0036281   -1.0820266   -0.9252295
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.5910021   -0.6285077   -0.5534966
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.9547559   -1.1404364   -0.7690755
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.1014835    0.0013486    0.2016183
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.3280079   -0.4667840   -0.1892318
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.2000827   -1.2268959   -1.1732695
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.5169607   -1.5574715   -1.4764499
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.1364634   -1.1733265   -1.0996002
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.4410403   -1.5023711   -1.3797095


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.3663158   -0.7677415    0.0351099
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                -1.2349454   -1.2972413   -1.1726496
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7079979   -0.8344175   -0.5815783
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7747022   -0.8887874   -0.6606170
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.1641841   -0.3464247    0.0180565
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1846038   -0.2354782   -0.1337293
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3105514    0.2848767    0.3362262
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6908803   -0.7184601   -0.6633005
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4499404    0.3788501    0.5210308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -1.0120238   -1.1588493   -0.8651984
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8099290   -0.8570608   -0.7627972
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1825404   -1.2814625   -1.0836183
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2815804   -0.3354498   -0.2277110
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6073238   -0.6354743   -0.5791732
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0477709   -0.1296526    0.0341109
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2978031   -1.3210763   -1.2745298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.6317531    0.2127945    1.0507118
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.6702976   -0.2539244    1.5945196
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                  0.0181757   -0.7445061    0.7808575
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -0.3490353   -0.8379131    0.1398425
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.7300000   -0.2183507    1.6783507
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1723891   -1.4018620    1.7466402
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.3034887   -1.0631405    1.6701179
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  1.3547225    0.7206858    1.9887592
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                  0.3131467   -0.1666549    0.7929483
Birth       ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       1                    0                  0.1887235   -0.6224225    0.9998696
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1262165   -0.1446809    0.3971139
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0636316   -0.3716821    0.2444189
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.3516379   -0.6122601   -0.0910158
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.3719221    0.1255071    0.6183372
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                  1.3722626    0.8808007    1.8637245
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.1873306   -0.1447207    0.5193818
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                  1.7180815    1.4979689    1.9381942
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.7281459    0.5872019    0.8690899
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                  0.7744858    0.1978811    1.3510904
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                  0.3056296    0.1655215    0.4457377
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.4625421    0.1637984    0.7612858
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0998828    0.0570614    0.1427041
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0076991   -0.1387504    0.1233523
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0972326   -0.3980253    0.2035602
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -1.0725629   -1.5062979   -0.6388279
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1500858   -0.4962723    0.1961008
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2608613   -0.6687370    0.1470144
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.1577681   -0.5821391    0.2666029
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.4195376   -0.1396593    0.9787346
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0289003   -0.3572617    0.4150623
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0899095   -0.4972181    0.3173991
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                  0.2408900   -0.2693863    0.7511663
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0357051   -0.2701565    0.1987462
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.6607261   -1.0866934   -0.2347587
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2082061   -0.3824643   -0.0339479
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.1659849   -0.4046927    0.0727228
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.1156493   -0.3784750    0.1471764
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2984755   -0.5876683   -0.0092826
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1553165   -0.3979164    0.0872833
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0176038   -0.2371409    0.2019334
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0704707   -0.2525500    0.1116087
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.1543959   -0.4188387    0.1100468
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0835572   -0.1537312    0.3208457
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0006829   -0.3093200    0.3079542
6 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    0                 -0.0782642   -0.4098128    0.2532845
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0246988   -0.0521931    0.1015908
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0610497   -0.1480440    0.0259446
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.2178184   -0.4203377   -0.0152991
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.3724947   -0.4640643   -0.2809251
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.1860254   -0.3898259    0.0177750
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.2130555   -0.3637646   -0.0623463
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1488115   -0.1855359   -0.1120871
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1531498   -0.2356269   -0.0706727
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.3889818   -0.6852774   -0.0926862
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0548198   -0.6834332    0.7930729
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0479744   -0.3640222    0.2680734
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2438441   -0.6957995    0.2081113
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.3713817   -0.8481571    0.1053938
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0579114   -0.4057555    0.5215783
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2884451   -0.6714548    0.0945645
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.5426648   -0.7958751   -0.2894545
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.2870652   -0.5510242   -0.0231063
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.2748770   -0.5835636    0.0338097
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.1784461   -0.4534827    0.0965906
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.3265995   -0.5802524   -0.0729465
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.4679106   -0.7625878   -0.1732333
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.2447553   -0.4075220   -0.0819887
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0454337   -0.2746347    0.1837672
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.2457213   -0.4841181   -0.0073246
24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    0                 -0.3994955   -0.7782321   -0.0207588
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.2162017   -0.0094624    0.4418657
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0660491   -0.3014509    0.1693527
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.3024220   -0.4199646   -0.1848794
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.4492863   -0.5330174   -0.3655552
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.3637538   -0.5531131   -0.1743944
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.4294913   -0.6006656   -0.2583171
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3168780   -0.3639632   -0.2697927
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.3045769   -0.3755021   -0.2336517


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0576131   -0.0069150    0.1221412
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0648675   -0.0374695    0.1672045
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0032312   -0.1323722    0.1388347
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0276615   -0.0722307    0.0169076
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0486667   -0.0225203    0.1198536
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0292330   -0.0781873    0.1366533
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0353989   -0.1431270    0.2139248
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.1005872    0.0399756    0.1611987
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.0602203   -0.0487884    0.1692291
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0048583   -0.2973684    0.2876518
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0215895   -0.0290866    0.0722655
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0026969   -0.0394913    0.0340976
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0231282   -0.0432851   -0.0029713
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0400827    0.0098977    0.0702678
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0312262    0.0147804    0.0476720
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0297225   -0.0035939    0.0630389
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.0032626   -0.0017989    0.0083242
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0390396    0.0313074    0.0467718
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0247236    0.0043581    0.0450892
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0173664    0.0087865    0.0259463
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0149511    0.0055403    0.0243619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0157586    0.0086513    0.0228659
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0020866   -0.0260879    0.0219147
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0181312   -0.0677256    0.0314632
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0638284   -0.1262815   -0.0013754
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0250195   -0.0805068    0.0304677
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0373555   -0.0860385    0.0113274
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0168547   -0.0685932    0.0348838
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0483447   -0.0148752    0.1115646
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0058988   -0.0527948    0.0645924
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0381570   -0.1179316    0.0416176
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0399756   -0.0248234    0.1047746
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0210943   -0.1244251    0.0822365
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.1807371   -0.3027545   -0.0587196
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0574273   -0.1025194   -0.0123351
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0764257   -0.1706024    0.0177509
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0147163   -0.0578644    0.0284318
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0303771   -0.0602911   -0.0004631
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0241213   -0.0587262    0.0104835
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0012544   -0.0158959    0.0133871
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0056371   -0.0228364    0.0115623
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0447182   -0.1093421    0.0199058
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0039123   -0.0344382    0.0422628
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0280990   -0.1463247    0.0901266
6 months    ki1114097-CONTENT          PERU                           0                    NA                -0.0000437   -0.0254347    0.0253472
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0002933   -0.0016488    0.0022354
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0061118   -0.0150663    0.0028426
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0359544   -0.0683983   -0.0035105
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0432811   -0.0544559   -0.0321062
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0114254   -0.0231737    0.0003230
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0797790   -0.1357737   -0.0237843
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0448240   -0.0560685   -0.0335796
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0436707   -0.0670845   -0.0202568
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0560135   -0.1041520   -0.0078750
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0056422   -0.0749967    0.0862812
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0235150   -0.0743652    0.0273353
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0261823   -0.0791698    0.0268053
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0532018   -0.1168974    0.0104937
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0097778   -0.0353671    0.0549228
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0189141   -0.0804206    0.0425924
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1147319   -0.1683149   -0.0611490
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0425392   -0.0770094   -0.0080690
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.1226410   -0.2499906    0.0047087
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0384067   -0.0864339    0.0096205
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0350323   -0.0632193   -0.0068453
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0643221   -0.1059077   -0.0227366
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0228949   -0.0397929   -0.0059970
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0031228   -0.0417558    0.0355101
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0904452   -0.1790571   -0.0018334
24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0419331   -0.0882516    0.0043855
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0009262   -0.0038702    0.0057226
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0029436   -0.0587196    0.0528324
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0936649   -0.1313611   -0.0559687
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0529820   -0.0637378   -0.0422262
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0189570   -0.0292869   -0.0086271
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.1492543   -0.2120253   -0.0864834
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0977204   -0.1126788   -0.0827619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0866454   -0.1072835   -0.0660072
