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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     12858   22454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 9596   22454
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      8359   14130
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 5771   14130
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      4241    7307
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 3066    7307
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/cb810e70-7803-4bb3-b4f6-4aabee58afa3/268c2e4a-0107-4f79-a230-c9594ddbe068/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7892315   -0.9154579   -0.6630051
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0137607   -1.3106968   -0.7168245
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.7956135   -0.9068188   -0.6844081
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5177086   -0.6825685   -0.3528487
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0261393   -1.2223437   -0.8299349
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8068200   -1.0296382   -0.5840018
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1796273   -0.3474402   -0.0118144
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -1.4097547   -1.6312943   -1.1882150
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.6413846   -1.0734345   -0.2093346
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.0308055   -1.0997768   -0.9618342
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4993855   -0.5884801   -0.4102908
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5912393   -0.6663485   -0.5161301
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6621789   -0.7358460   -0.5885119
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.2199094    0.1553414    0.2844774
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.6771588   -0.7566993   -0.5976183
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.9663561   -1.5958954   -0.3368169
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3123531   -0.3322493   -0.2924568
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2771686    0.1948541    0.3594832
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3592565   -0.3860342   -0.3324789
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0773030   -0.1131008   -0.0415052
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9543894   -0.9717273   -0.9370514
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0174207   -1.0653975   -0.9694439
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0477082   -1.1727681   -0.9226484
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0839491   -0.0624487    0.2303470
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1089115   -1.2365937   -0.9812293
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4821666   -0.5960353   -0.3682979
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.2296545   -1.3338183   -1.1254907
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0041571   -1.1307297   -0.8775844
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2513479   -1.3910930   -1.1116028
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3048187   -1.4530463   -1.1565910
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0740160   -1.2112899   -0.9367422
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.7345046   -1.8673378   -1.6016715
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.4343384   -2.0461642   -0.8225125
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1535381   -1.2546182   -1.0524579
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1452909   -1.2437629   -1.0468189
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9017498   -0.9821436   -0.8213561
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0045893   -1.0814115   -0.9277670
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5108521   -0.5603476   -0.4613567
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7833130   -0.8424604   -0.7241656
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1260191   -1.2115451   -1.0404931
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7361010   -0.7622387   -0.7099634
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.7015811   -1.8254611   -1.5777012
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.7927145   -0.8226915   -0.7627376
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0408710   -1.0835524   -0.9981895
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.9527027   -0.9792667   -0.9261387
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1404522   -1.1881192   -1.0927851
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8450870   -1.9786107   -1.7115633
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0643092   -0.6583488    0.5297303
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.8395620   -1.9748756   -1.7042484
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.2546579   -1.3786522   -1.1306637
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.4143713   -1.5670766   -1.2616659
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.6228385   -1.7607423   -1.4849347
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5148678   -2.6709955   -2.3587401
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5018830   -2.6084388   -2.3953271
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6769306   -1.7765089   -1.5773523
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.4436927   -2.6066848   -2.2807006
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.9898236   -2.1096659   -1.8699814
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4527886   -1.5462079   -1.3593693
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2699540   -1.3594618   -1.1804461
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4673022   -1.5326885   -1.4019160
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.7609920   -1.8566139   -1.6653702
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5233674   -1.5828206   -1.4639141
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8002985   -2.8990912   -2.7015059
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.9695480   -2.0063155   -1.9327805
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3439895   -2.3905867   -2.2973922
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.7665242   -1.8025927   -1.7304558
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.6382460   -1.6813949   -1.5950970


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5893720   -1.6085904   -1.5701537
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2094328   -1.3276892   -1.0911764
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1727166   -1.2902312   -1.0552020
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5397525   -0.6522623   -0.4272428
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3083549   -1.4159952   -1.2007147
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0619697   -1.1900452   -0.9338942
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3327473   -1.3568007   -1.3086940
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3509354   -1.3927945   -1.3090764
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9799762   -2.1065965   -1.8533558
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8550459   -1.9795611   -1.7305306
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2841403   -1.4044291   -1.1638514
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7484757   -1.8697456   -1.6272058
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6471273   -1.7822999   -1.5119547
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0396606   -2.0692906   -2.0100306
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7744364   -1.8128124   -1.7360604


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3288638   -0.4276870   -0.2300405
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1898564   -0.3659546   -0.0137581
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0871762   -0.1386698   -0.0356827
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1139987   -0.2315316    0.0035342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1294607   -0.2301538   -0.0287676
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1543757   -0.2530445   -0.0557068
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1300072   -0.2171906   -0.0428238
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.4511203   -0.6165407   -0.2857000
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.3386154   -0.5838322   -0.0933987
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4006162   -0.4598563   -0.3413762
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4316343   -0.5020572   -0.3612113
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2938628   -0.3484638   -0.2392618
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2473156   -0.2945144   -0.2001168
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1926432   -0.2266762   -0.1586103
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4079992   -0.4760274   -0.3399711
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.9147977   -1.5199138   -0.3096817
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1886130   -0.2003361   -0.1768898
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1549748   -0.1999132   -0.1100364
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3105582   -0.3298852   -0.2912311
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1662356   -0.1888332   -0.1436381
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6349827   -0.6518555   -0.6181099
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.5058701   -0.5449000   -0.4668402
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1617245   -0.2318505   -0.0915985
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0363734   -0.0724396   -0.0003071
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0638051   -0.1133015   -0.0143087
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0575860   -0.1006432   -0.0145287
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0787005   -0.1237928   -0.0336081
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0578126   -0.1057756   -0.0098497
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0585177   -0.1038331   -0.0132023
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1186321   -0.1751728   -0.0620914
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1408052   -0.2103612   -0.0712493
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.3455267   -0.4401462   -0.2509073
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.2734067   -0.5404941   -0.0063193
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2497123   -0.3025112   -0.1969134
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2639836   -0.3292868   -0.1986803
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1899417   -0.2363035   -0.1435799
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1940890   -0.2389883   -0.1491898
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0285839   -0.0399003   -0.0172674
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1188935   -0.1471152   -0.0906717
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2250347   -0.2809639   -0.1691056
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1302381   -0.1420649   -0.1184113
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0842684   -0.1897963    0.0212595
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2012705   -0.2185370   -0.1840039
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0963834   -0.1140926   -0.0786741
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3800447   -0.3970538   -0.3630356
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2104832   -0.2388116   -0.1821549
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1348892   -0.2169003   -0.0528781
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0704236   -0.4803747    0.6212220
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0154839   -0.0675587    0.0365910
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0294823   -0.0678739    0.0089093
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3341044   -0.4563761   -0.2118328
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0242888   -0.0614308    0.0128532
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0363668   -0.0697674   -0.0029661
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0569850   -0.0913914   -0.0225785
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1045004   -0.1512587   -0.0577420
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.2262973   -0.3513349   -0.1012597
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2370383   -0.3112119   -0.1628647
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1496335   -0.2007041   -0.0985629
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1713106   -0.2253980   -0.1172233
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0874340   -0.1158681   -0.0590000
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1254967   -0.1813742   -0.0696192
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0790577   -0.1024714   -0.0556440
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1638553   -0.2342395   -0.0934711
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1433853   -0.1609027   -0.1258679
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0668002   -0.0832338   -0.0503666
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2731364   -0.2948008   -0.2514720
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1361904   -0.1579687   -0.1144122
