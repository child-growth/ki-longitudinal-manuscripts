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

**Outcome Variable:** haz

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
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_W_nrooms
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       177     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   54     231
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight        61      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    4      65
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight        39      47
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                    8      47
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight        24      27
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                    3      27
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight       221     233
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                   12     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       115     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       118     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    7     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        81      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   11      92
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight       317     383
Birth       ki1000108-IRC              INDIA                          Low birthweight                   66     383
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight       160     240
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                   80     240
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        35      42
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                    7      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       914    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  338    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       423     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  185     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       402     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  137     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       560     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  172     732
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1308    1529
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                  221    1529
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       476     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  220     696
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight        14      26
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                   12      26
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
Birth       ki1114097-CONTENT          PERU                           Low birthweight                    0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13890   13890
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                    0   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11929   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1901   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       717     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                   67     784
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight      5268    6638
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                 1370    6638
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2709    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  295    3004
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     16511   26665
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                10154   26665
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      1799    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1024    2823
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       327     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   42     369
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight       335     401
6 months    ki1000108-IRC              INDIA                          Low birthweight                   66     401
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       242     372
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                  130     372
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        29      34
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                    5      34
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight      1003    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  323    1326
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       367     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  151     518
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       461     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  143     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       545     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  170     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1944    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   67    2011
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1146    1334
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                  188    1334
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       397     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  166     563
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         9      12
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      12
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
6 months    ki1114097-CONTENT          PERU                           Low birthweight                    0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15761   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                    0   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7566    8636
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1070    8636
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       703     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                   68     771
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      5005    6261
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                 1256    6261
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2418    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  248    2666
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     10624   16689
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 6065   16689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      3004    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1037    4041
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       328     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   43     371
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight       335     403
24 months   ki1000108-IRC              INDIA                          Low birthweight                   68     403
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       100     167
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                   67     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       287     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  127     414
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       439     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  139     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       388     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  126     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       905    1056
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  151    1056
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       355     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  132     487
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         8      11
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      11
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
24 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      4035    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1442    1635
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  193    1635
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       589     650
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   61     650
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight      3949    4858
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                  909    4858
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2194    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  212    2406
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      5320    8518
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 3198    8518
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2955    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1055    4010


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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/d18c9e95-5107-4979-8213-e569df736d91/411f574f-8902-4a0c-bf9d-b68c04b721a9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7899807   -0.9161447   -0.6638168
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0160489   -1.3107066   -0.7213912
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.7947834   -0.9061102   -0.6834565
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5179540   -0.6827680   -0.3531400
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0271271   -1.2233150   -0.8309392
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8126717   -1.0368033   -0.5885401
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1791536   -0.3472760   -0.0110311
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -1.4357828   -1.6392076   -1.2323581
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.6400421   -1.0796651   -0.2004191
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.0312364   -1.1000078   -0.9624651
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5047202   -0.5930124   -0.4164280
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5833713   -0.6581937   -0.5085490
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6639589   -0.7388359   -0.5890819
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.2193109    0.1547945    0.2838274
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.6786072   -0.7574494   -0.5997651
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.9006878   -1.6649833   -0.1363923
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3143246   -0.3341942   -0.2944550
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2684880    0.1482574    0.3887186
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3636228   -0.3904195   -0.3368261
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0794624   -0.1152731   -0.0436517
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4484212   -0.4767286   -0.4201138
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0184466   -1.0666614   -0.9702318
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0506522   -1.1763639   -0.9249404
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0866759   -0.0599450    0.2332969
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1589193   -1.3265990   -0.9912396
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4785126   -0.5923627   -0.3646624
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.2333781   -1.3375379   -1.1292183
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9815231   -1.1086579   -0.8543883
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2523702   -1.3923534   -1.1123869
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3055932   -1.4534046   -1.1577817
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0687845   -1.2055170   -0.9320519
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.7409413   -1.8741469   -1.6077356
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.4230113   -2.0389586   -0.8070641
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1617404   -1.2617918   -1.0616890
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1478766   -1.2463892   -1.0493641
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8975684   -0.9780447   -0.8170921
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0054845   -1.0828139   -0.9281550
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5107293   -0.5602184   -0.4612403
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7797935   -0.8385783   -0.7210087
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1201957   -1.2054010   -1.0349904
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7367004   -0.7628243   -0.7105766
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6921829   -1.7650560   -1.6193098
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8008759   -0.8310550   -0.7706968
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0441916   -1.0869512   -1.0014319
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0228073   -1.0476529   -0.9979617
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1409036   -1.1862188   -1.0955884
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.7385955   -1.8679340   -1.6092569
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1672792   -0.5771296    0.2425713
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7279027   -1.9709766   -1.4848288
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.2495367   -1.3736435   -1.1254299
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5410111   -1.6775232   -1.4044990
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.6260472   -1.7644547   -1.4876396
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5161195   -2.6721859   -2.3600531
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4989947   -2.6056788   -2.3923106
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6743622   -1.7738223   -1.5749021
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.4451846   -2.6128751   -2.2774942
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.9962221   -2.1160941   -1.8763502
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4613765   -1.5536240   -1.3691290
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2705267   -1.3604327   -1.1806206
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4665701   -1.5320131   -1.4011270
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.7609232   -1.8561926   -1.6656539
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5235807   -1.5826513   -1.4645101
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8927918   -2.9777401   -2.8078436
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.9758941   -2.0128065   -1.9389817
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3459234   -2.3925020   -2.2993447
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8028818   -1.8339905   -1.7717732
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.6469083   -1.6899339   -1.6038828


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6317073   -0.8249555   -0.4384591
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3096345   -0.4709405   -0.1483285
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -1.8608750   -2.0482045   -1.6735455
Birth       ki1000109-ResPak           PAKISTAN                       observed             observed          -0.9800000   -1.4086438   -0.5513562
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0272662   -0.0366578    0.0911901
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       ki1114097-CMIN             BANGLADESH                     observed             observed          -1.8811538   -2.5124807   -1.2498270
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1221939    0.0348987    0.2094890
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6698147   -0.6979800   -0.6416494
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2435386   -0.2827491   -0.2043282
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1730553   -1.2010671   -1.1450436
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2099370   -1.3283799   -1.0914941
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1725551   -1.2902116   -1.0548985
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5382678   -0.6507290   -0.4258067
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3112593   -1.4187830   -1.2037355
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0625692   -1.1907379   -0.9344005
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3098656   -1.4501587   -1.1695725
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2148213   -1.3469493   -1.0826933
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.0800314   -2.1993502   -1.9607126
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.7077451   -2.2839081   -1.1315821
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4032504   -1.4822018   -1.3242989
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4092745   -1.5003907   -1.3181582
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5394360   -0.5886359   -0.4902361
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9022065   -0.9593933   -0.8450196
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3510539   -1.4294158   -1.2726919
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8663392   -0.8919231   -0.8407552
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.7858495   -1.8598889   -1.7118102
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9939850   -1.0230017   -0.9649683
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1372543   -1.1796249   -1.0948837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3354922   -1.3585835   -1.3124010
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3509354   -1.3927945   -1.3090764
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9805000   -2.1071132   -1.8538868
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8536468   -1.9781962   -1.7290974
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2841403   -1.4044291   -1.1638514
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7505025   -1.8714436   -1.6295614
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6512658   -1.7868828   -1.5156488
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.5512346   -2.7029497   -2.3995194
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7814309   -1.8749526   -1.6879093
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2268619   -2.3322626   -2.1214612
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5547363   -1.6172161   -1.4922564
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8864887   -1.9720856   -1.8008918
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6024251   -1.6594303   -1.5454198
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9641538   -3.0462906   -2.8820170
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.1129333   -2.1469655   -2.0789011
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4107897   -2.4561358   -2.3654436
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0204485   -2.0480970   -1.9928000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7744364   -1.8128124   -1.7360604


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3281145   -0.4264831   -0.2297459
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1875681   -0.3622601   -0.0128761
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0880063   -0.1422246   -0.0337881
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1137533   -0.2313573    0.0038506
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1284729   -0.2289787   -0.0279671
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1485239   -0.2427553   -0.0542926
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1304809   -0.2178955   -0.0430663
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.4250922   -0.5753937   -0.2747906
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.3399579   -0.5874743   -0.0924414
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4001853   -0.4544686   -0.3459019
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4262995   -0.4960349   -0.3565641
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3017307   -0.3555750   -0.2478864
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2455357   -0.2939239   -0.1971474
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1920447   -0.2262065   -0.1578830
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4065508   -0.4725575   -0.3405441
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.9804661   -1.6634616   -0.2974705
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1866414   -0.1982613   -0.1750216
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1462941   -0.2465679   -0.0460204
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3061919   -0.3256675   -0.2867164
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1640762   -0.1865638   -0.1415886
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7246341   -0.7437722   -0.7054959
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.5048442   -0.5443351   -0.4653533
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1592848   -0.2297004   -0.0888693
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0356552   -0.0724204    0.0011101
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0136358   -0.1187314    0.0914599
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0597553   -0.1032999   -0.0162106
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0778812   -0.1227879   -0.0329744
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0810461   -0.1350498   -0.0270424
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0574954   -0.1024844   -0.0125064
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1178576   -0.1724541   -0.0632611
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1460368   -0.2151570   -0.0769167
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.3390901   -0.4336711   -0.2445091
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.2847338   -0.5592016   -0.0102660
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2415099   -0.2920608   -0.1909591
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2613978   -0.3264754   -0.1963202
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1941231   -0.2404844   -0.1477618
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1931938   -0.2391457   -0.1472420
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0287067   -0.0401480   -0.0172653
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1224130   -0.1505443   -0.0942817
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2308582   -0.2867791   -0.1749372
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1296387   -0.1414148   -0.1178626
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0936666   -0.1270729   -0.0602603
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1931091   -0.2106140   -0.1756042
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0930627   -0.1107257   -0.0753997
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3126849   -0.3269418   -0.2984281
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2100318   -0.2351791   -0.1848845
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2419045   -0.3441520   -0.1396571
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1743798   -0.1976770    0.5464365
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1257441   -0.3306878    0.0791996
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0346036   -0.0739766    0.0047694
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2094914   -0.3064829   -0.1124999
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0252186   -0.0625357    0.0120984
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0351151   -0.0684574   -0.0017727
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0598732   -0.0938600   -0.0258864
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1070687   -0.1539227   -0.0602147
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.2248054   -0.3549207   -0.0946901
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2306398   -0.3046127   -0.1566669
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1410456   -0.1902973   -0.0917939
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1707379   -0.2250970   -0.1163788
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0881662   -0.1168263   -0.0595061
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1255655   -0.1816365   -0.0694944
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0788444   -0.1026447   -0.0550440
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0713620   -0.1010938   -0.0416302
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1370392   -0.1546901   -0.1193883
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0648663   -0.0813380   -0.0483947
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2175666   -0.2354314   -0.1997019
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1275281   -0.1493102   -0.1057460
