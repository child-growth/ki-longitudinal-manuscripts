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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     16287   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 5796   22083
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     10600   16661
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 6061   16661
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      5299    8491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 3192    8491
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
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

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
![](/tmp/573bcb63-e1c2-4116-8b77-6019e80245b6/29580d19-5363-44eb-a161-9d45ef181605/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7599896   -0.9142578   -0.6057214
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8264040   -1.1142071   -0.5386008
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0017259   -0.1252017    0.1217499
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1398673   -0.3553430    0.0756084
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2462960   -0.5455926    0.0530007
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7622843   -0.9554239   -0.5691448
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.0367909   -0.2336172    0.1600353
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3949544   -0.5422255   -0.2476832
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0311391   -1.1336169   -0.9286613
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0675016   -1.1502245   -0.9847788
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9789771   -1.0654809   -0.8924734
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -1.0832875   -1.1477033   -1.0188717
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7740334   -0.8657088   -0.6823580
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2957516   -0.3206308   -0.2708724
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9547578   -1.0562915   -0.8532241
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7523841   -0.7819602   -0.7228081
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6151045   -0.6605980   -0.5696109
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4503375   -0.4681797   -0.4324952
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3846888   -0.4406214   -0.3287563
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0569511   -0.2116933    0.0977911
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9974854    0.8293301    1.1656408
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6194389   -0.7590599   -0.4798180
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1669580    0.0296867    0.3042293
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0939648    0.9689183    1.2190114
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1041456   -0.4816885    0.2733973
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5894825    0.4291527    0.7498124
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4452758   -0.6052624   -0.2852892
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5482234   -0.6919074   -0.4045395
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.8257378   -1.0093638   -0.6421117
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.0099827   -0.5310630    0.5510284
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5641914   -0.7218763   -0.4065065
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3538323   -0.4591836   -0.2484811
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0875263   -0.1798701    0.0048174
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1218398    0.0335626    0.2101170
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1017465    0.0479526    0.1555404
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1576003   -0.2250217   -0.0901788
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4663404   -0.5645533   -0.3681275
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3464601    0.3186756    0.3742446
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2348734    0.1526011    0.3171457
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5729975   -0.6039876   -0.5420075
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2544657   -0.3063393   -0.2025922
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4710920   -0.4946145   -0.4475696
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2958373   -0.3462311   -0.2454434
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6983515   -0.8415182   -0.5551847
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1669272   -0.4294484    0.0955940
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8718676   -0.9914490   -0.7522862
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2672695   -0.4359343   -0.0986047
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1724450    0.0521519    0.2927381
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3396310    0.2212822    0.4579798
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1244319   -0.0300463    0.2789101
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4613291   -0.5672266   -0.3554316
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.5899048   -0.7240001   -0.4558094
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.9096394   -1.1052056   -0.7140733
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7799550   -0.8902280   -0.6696820
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7595949   -0.8535212   -0.6656687
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4831448   -0.5924586   -0.3738310
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7354200   -0.8002208   -0.6706192
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1131071   -1.2225033   -1.0037109
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0222174   -1.1722395   -0.8721954
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1561064   -0.2245191   -0.0876937
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5037232   -0.5359390   -0.4715074
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5648718   -0.6032225   -0.5265212
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1532798   -1.1814303   -1.1251294
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1447667   -1.1842394   -1.1052941


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9412093   -1.0864308   -0.7959878
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
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611470
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7501567   -0.7680049   -0.7323085
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1271569   -0.2570183    0.0027046
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6953010   -0.8254430   -0.5651590
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1457933    0.0143145    0.2772721
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0592901    0.9368892    1.1816910
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5452635    0.3926562    0.6978708
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5931160   -0.6126840   -0.5735479
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3785933   -0.4212191   -0.3359676
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8089286   -0.9306543   -0.6872029
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9360550   -1.0543748   -0.8177353
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3576697   -0.4708099   -0.2445294
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1231407    0.0021315    0.2441499
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4112869    0.2901842    0.5323897
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3010611   -1.3243016   -1.2778207
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2443883   -1.2783802   -1.2103964


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1812197   -0.2567493   -0.1056901
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1060405   -0.2472380    0.0351570
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0502917   -0.0878550   -0.0127283
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0527161   -0.1057305    0.0002984
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2185296   -0.3742839   -0.0627753
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2482988   -0.3375407   -0.1590568
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.2965142   -0.4252763   -0.1677520
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2750910   -0.3440326   -0.2061493
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3187826   -0.3826068   -0.2549584
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2309570   -0.2815198   -0.1803942
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2651742   -0.3199712   -0.2103773
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1510743   -0.1796314   -0.1225171
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3424096   -0.4054735   -0.2793458
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2197381   -0.2329294   -0.2065468
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1073851   -0.1444044   -0.0703657
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2323616   -0.2497617   -0.2149615
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1276206   -0.1472503   -0.1079909
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2998192   -0.3104951   -0.2891433
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3039380   -0.3381334   -0.2697427
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0702058   -0.1375625   -0.0028490
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0257629   -0.0646005    0.0130747
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0758621   -0.1418309   -0.0098934
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0211647   -0.0620706    0.0197412
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0346747   -0.0733963    0.0040468
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6494091    0.2721652    1.0266530
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0244198   -0.0582937    0.0094542
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0574008   -0.1141727   -0.0006289
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0382899   -0.1104532    0.0338735
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.0519321   -0.0783385    0.1822027
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.2076644    0.0018642    0.4134645
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1029348   -0.1534042   -0.0524653
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1098437   -0.1715020   -0.0481853
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1115643   -0.1609033   -0.0622254
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0920775   -0.1394512   -0.0447038
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0182469   -0.0279122   -0.0085816
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0404629   -0.0656534   -0.0152725
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1363446   -0.1957255   -0.0769637
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0375813   -0.0491822   -0.0259805
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0339044   -0.0586618   -0.0091469
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1204238   -0.1365076   -0.1043400
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0379217   -0.0688155   -0.0070279
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1220239   -0.1354391   -0.1086088
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0827561   -0.1058089   -0.0597032
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1105771   -0.1888340   -0.0323202
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6261580    0.3292290    0.9230869
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0641875   -0.1281497   -0.0002252
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0904002   -0.2301143    0.0493140
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0493043   -0.0931481   -0.0054605
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0716559    0.0089873    0.1343245
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0125183   -0.0428176    0.0177809
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0958214   -0.1366804   -0.0549624
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1486188   -0.2488830   -0.0483546
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.1023844   -0.2222973    0.0175286
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1269901   -0.2000707   -0.0539095
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1332721   -0.1814690   -0.0850751
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1272054   -0.1802883   -0.0741225
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0605074   -0.0875355   -0.0334794
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0205829   -0.1031670    0.0620012
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1606132   -0.2884001   -0.0328263
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0720366   -0.1015403   -0.0425330
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0907987   -0.1053345   -0.0762629
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0428128   -0.0556630   -0.0299627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1477813   -0.1648540   -0.1307087
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0996216   -0.1214531   -0.0777900
