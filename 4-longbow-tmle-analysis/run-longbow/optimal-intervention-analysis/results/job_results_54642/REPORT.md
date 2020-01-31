---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** birthwt

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

agecat      studyid                    country                        birthwt                       n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       177     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   38     215
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight        60      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    2      62
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight        38      45
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                    7      45
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight        24      26
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                    2      26
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight       218     228
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                   10     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       115     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    5     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       113     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    2     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        76      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   10      86
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight       296     343
Birth       ki1000108-IRC              INDIA                          Low birthweight                   47     343
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight       138     177
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                   39     177
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        34      38
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                    4      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       894    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  209    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       421     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  154     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       401     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  131     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       554     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  153     707
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1273    1465
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                  192    1465
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       472     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  169     641
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight        14      19
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                    5      19
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
Birth       ki1114097-CONTENT          PERU                           Low birthweight                    0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13830   13830
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                    0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11614   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1303   12917
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       702     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                   54     756
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight      5178    6193
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                 1015    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2688    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  211    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     12587   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 5427   18014
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      1758    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  638    2396
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       188     238
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   50     238
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       199     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       193     227
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                   34     227
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       210     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                   19     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight       254     270
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                   16     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       238     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   15     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       177     186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    9     186
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       325     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   43     368
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight       334     402
6 months    ki1000108-IRC              INDIA                          Low birthweight                   68     402
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       243     374
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                  131     374
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        29      34
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                    5      34
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight      1001    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  323    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       367     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  151     518
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       460     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  143     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       545     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  170     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1943    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   67    2010
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1146    1334
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                  188    1334
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       397     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  166     563
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         9      12
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      12
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
6 months    ki1114097-CONTENT          PERU                           Low birthweight                    0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15758   15758
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                    0   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7405    8473
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1068    8473
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       704     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                   70     774
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      5000    6252
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                 1252    6252
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2416    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  248    2664
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      8338   14105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 5767   14105
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      3005    4045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1040    4045
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       165     210
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45     210
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       161     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    8     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       185     218
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     218
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       203     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       187     199
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   12     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       224     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       154     162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     162
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       329     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   43     372
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight       335     403
24 months   ki1000108-IRC              INDIA                          Low birthweight                   68     403
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       101     168
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                   67     168
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       286     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  127     413
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       440     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  139     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       388     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  126     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       905    1057
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  152    1057
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       355     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  131     486
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         8      11
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      11
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
24 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      3972    3972
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight       337     431
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                   94     431
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       595     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   62     657
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight      3911    4821
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                  910    4821
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2195    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  215    2410
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      4225    7282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 3057    7282
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2944    3997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1053    3997


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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 10 does not match with column 1 of item 1.
## Error in self$compute_step() : 
##   Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 10 does not match with column 1 of item 1.
## 
## Error in self$compute_step() : Error in self$compute_step() : 
##   Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 10 does not match with column 1 of item 1.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c9993b0e-4420-428b-a7d9-a1c73d705dc7/d2b9ebe0-c724-45f4-b4bb-3ded4224e71f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7571747   -0.9111917   -0.6031578
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8301472   -1.1194327   -0.5408618
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0006341   -0.1198766    0.1211448
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1378309   -0.3533320    0.0776701
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2645295   -0.5639056    0.0348465
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7649728   -0.9578447   -0.5721010
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.1626022   -0.3874213    0.0622169
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3931698   -0.5409575   -0.2453821
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0339678   -1.1366948   -0.9312408
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0685880   -1.1514694   -0.9857067
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9762194   -1.0624002   -0.8900385
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -1.0868922   -1.1514694   -1.0223149
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7777313   -0.8701152   -0.6853473
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2971665   -0.3220639   -0.2722691
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9572810   -1.0587600   -0.8558020
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7520689   -0.7816688   -0.7224690
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6150742   -0.6605272   -0.5696212
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4381302   -0.4575363   -0.4187240
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3862450   -0.4423724   -0.3301175
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0246418   -0.1750779    0.1257942
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9997328    0.8319194    1.1675462
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7285443   -0.8719055   -0.5851831
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1695892    0.0329067    0.3062716
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0827578    0.9578675    1.2076481
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3786545   -0.1230136    0.8803225
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5878448    0.4275657    0.7481239
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5193307   -0.7108503   -0.3278110
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4880810   -0.7808760   -0.1952860
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.9250442   -1.0739989   -0.7760894
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.1851379   -0.7536994    1.1239751
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5671349   -0.7269102   -0.4073595
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3528179   -0.4580472   -0.2475887
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0882893   -0.1811939    0.0046154
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1207839    0.0320183    0.2095495
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1011876    0.0473860    0.1549891
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1731690   -0.2413363   -0.1050016
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4808300   -0.5791168   -0.3825432
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3375360    0.3098881    0.3651839
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2404374    0.1581298    0.3227451
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5675670   -0.5985686   -0.5365653
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2607748   -0.3044651   -0.2170845
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4556367   -0.4824392   -0.4288341
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2903801   -0.3403230   -0.2404372
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7082158   -0.8483816   -0.5680500
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1880487   -0.4271245    0.0510272
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8751287   -0.9944945   -0.7557629
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3202860   -0.4354173   -0.2051547
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1758439    0.0524590    0.2992287
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4304253    0.3053362    0.5555144
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1239763   -0.0304930    0.2784457
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4633849   -0.5693670   -0.3574027
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6307263   -0.7288722   -0.5325803
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.9324189   -1.1258855   -0.7389523
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7784878   -0.8884153   -0.6685603
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7555874   -0.8508411   -0.6603337
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4906942   -0.5999377   -0.3814507
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7535254   -0.8208745   -0.6861764
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0611424   -1.1702326   -0.9520522
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.2226594   -1.3807252   -1.0645935
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1565948   -0.2250438   -0.0881459
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4983289   -0.5306248   -0.4660329
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5634779   -0.6018451   -0.5251108
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1273524   -1.1603964   -1.0943085
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1431547   -1.1828894   -1.1034200


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.1925833   -0.4053570    0.0201904
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -0.3333051   -0.5209779   -0.1456323
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1101329-Keneba           GAMBIA                         observed             observed          -1.2343618   -1.2966897   -1.1720339
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5154897   -0.5413479   -0.4896314
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7778272   -0.7968313   -0.7588232
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1264286   -0.2562001    0.0033429
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6950184   -0.8251168   -0.5649199
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1468195    0.0154553    0.2781837
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0569321    0.9344468    1.1794174
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5447167    0.3920617    0.6973717
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5650627    0.4090080    0.7211174
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5865133   -0.7228579   -0.4501686
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7738057   -0.8881828   -0.6594286
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed           0.2176471   -0.1948962    0.6301903
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6671261   -0.8034351   -0.5308171
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4636760   -0.5549942   -0.3723578
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0834996    0.0305909    0.1364083
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1980632   -0.2602433   -0.1358831
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6026850   -0.6889114   -0.5164586
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3088788    0.2831827    0.3345749
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.2009690    0.1225187    0.2794193
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6934213   -0.7223635   -0.6644791
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2923874   -0.3342162   -0.2505585
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.6078114   -0.6285877   -0.5870351
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3785933   -0.4212191   -0.3359676
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8080238   -0.9295087   -0.6865389
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9353899   -1.0537553   -0.8170246
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3576697   -0.4708099   -0.2445294
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1137982   -0.0103449    0.2379412
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4054395    0.2840471    0.5268320
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1119136   -0.0377314    0.2615586
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7385236   -0.8304949   -0.6465522
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -1.0120238   -1.1588493   -0.8651984
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9069451   -1.0069853   -0.8069049
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7959275   -0.8565476   -0.7353073
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1336900   -1.2226955   -1.0446844
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1828306   -1.2821673   -1.0834939
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2281431   -0.2964243   -0.1598619
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5945219   -0.6240625   -0.5649813
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6076846   -0.6447204   -0.5706489
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3060382   -1.3311265   -1.2809499
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2443883   -1.2783802   -1.2103964


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1846857   -0.2611736   -0.1081978
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1022972   -0.2453585    0.0407641
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0526516   -0.0880054   -0.0172979
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0547524   -0.1082233   -0.0012815
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2002960   -0.3456067   -0.0549854
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2456102   -0.3346662   -0.1565543
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.1707029   -0.3284528   -0.0129530
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2768755   -0.3459002   -0.2078508
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3159539   -0.3800845   -0.2518234
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2298706   -0.2805423   -0.1791989
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2679320   -0.3212933   -0.2145706
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1474696   -0.1757489   -0.1191902
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3387118   -0.4018689   -0.2755547
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2183232   -0.2315318   -0.2051145
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1048619   -0.1417255   -0.0679983
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2326768   -0.2500607   -0.2152928
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1276509   -0.1472146   -0.1080872
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3396971   -0.3518259   -0.3275682
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3023819   -0.3368493   -0.2679145
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1017867   -0.1995684   -0.0040051
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0276554   -0.0679261    0.0126152
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0335260   -0.0521457    0.1191976
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0227696   -0.0635728    0.0180336
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0258257   -0.0619581    0.0103067
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1660623   -0.3222285    0.6543530
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0227821   -0.0565148    0.0109506
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0166540   -0.1104568    0.1437649
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0984322   -0.3283499    0.1314854
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.1512385    0.0414942    0.2609827
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.0325092   -0.7134046    0.7784229
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0999913   -0.1514419   -0.0485406
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1108581   -0.1728292   -0.0488870
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1108014   -0.1604782   -0.0611247
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0910217   -0.1388977   -0.0431457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0176880   -0.0276704   -0.0077056
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0248942   -0.0528415    0.0030530
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1218550   -0.1806635   -0.0630465
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0286572   -0.0395305   -0.0177838
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0394684   -0.0646860   -0.0142508
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1258543   -0.1419547   -0.1097540
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0316126   -0.0459764   -0.0172488
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1521748   -0.1686167   -0.1357328
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0882133   -0.1107716   -0.0656549
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0998080   -0.1641817   -0.0354343
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6506719    0.3802173    0.9211266
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0602612   -0.1246329    0.0041104
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0373837   -0.0799185    0.0051511
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0620457   -0.1154262   -0.0086652
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0249858   -0.0547701    0.0047986
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0120628   -0.0425320    0.0184065
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0937657   -0.1343327   -0.0531986
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1077973   -0.1546265   -0.0609681
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.0796049   -0.1993040    0.0400942
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1284573   -0.2017102   -0.0552044
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1372796   -0.1864951   -0.0880641
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1196560   -0.1762682   -0.0630437
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0424020   -0.0760450   -0.0087591
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0725476   -0.1503563    0.0052611
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0398287   -0.0919308    0.1715882
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0715483   -0.1009898   -0.0421067
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0961930   -0.1109453   -0.0814408
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0442067   -0.0570321   -0.0313813
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1786858   -0.1999600   -0.1574115
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1012336   -0.1233485   -0.0791187
