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

agecat      studyid          country                        birthwt                       n_cell       n
----------  ---------------  -----------------------------  ---------------------------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight        76      86
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                   10      86
Birth       CMIN             BANGLADESH                     Normal or high birthweight        14      19
Birth       CMIN             BANGLADESH                     Low birthweight                    5      19
Birth       COHORTS          GUATEMALA                      Normal or high birthweight       702     756
Birth       COHORTS          GUATEMALA                      Low birthweight                   54     756
Birth       COHORTS          INDIA                          Normal or high birthweight      5178    6193
Birth       COHORTS          INDIA                          Low birthweight                 1015    6193
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight      2688    2899
Birth       COHORTS          PHILIPPINES                    Low birthweight                  211    2899
Birth       CONTENT          PERU                           Normal or high birthweight         2       2
Birth       CONTENT          PERU                           Low birthweight                    0       2
Birth       EE               PAKISTAN                       Normal or high birthweight       138     177
Birth       EE               PAKISTAN                       Low birthweight                   39     177
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight       472     641
Birth       GMS-Nepal        NEPAL                          Low birthweight                  169     641
Birth       IRC              INDIA                          Normal or high birthweight       296     343
Birth       IRC              INDIA                          Low birthweight                   47     343
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight     12587   18014
Birth       JiVitA-3         BANGLADESH                     Low birthweight                 5427   18014
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight      1758    2396
Birth       JiVitA-4         BANGLADESH                     Low birthweight                  638    2396
Birth       Keneba           GAMBIA                         Normal or high birthweight      1273    1465
Birth       Keneba           GAMBIA                         Low birthweight                  192    1465
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight       177     215
Birth       MAL-ED           BANGLADESH                     Low birthweight                   38     215
Birth       MAL-ED           BRAZIL                         Normal or high birthweight        60      62
Birth       MAL-ED           BRAZIL                         Low birthweight                    2      62
Birth       MAL-ED           INDIA                          Normal or high birthweight        38      45
Birth       MAL-ED           INDIA                          Low birthweight                    7      45
Birth       MAL-ED           NEPAL                          Normal or high birthweight        24      26
Birth       MAL-ED           NEPAL                          Low birthweight                    2      26
Birth       MAL-ED           PERU                           Normal or high birthweight       218     228
Birth       MAL-ED           PERU                           Low birthweight                   10     228
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight       115     120
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                    5     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       113     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    2     115
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight       421     575
Birth       NIH-Birth        BANGLADESH                     Low birthweight                  154     575
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight       554     707
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                  153     707
Birth       PROBIT           BELARUS                        Normal or high birthweight     13817   13817
Birth       PROBIT           BELARUS                        Low birthweight                    0   13817
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight       401     532
Birth       PROVIDE          BANGLADESH                     Low birthweight                  131     532
Birth       ResPak           PAKISTAN                       Normal or high birthweight        34      38
Birth       ResPak           PAKISTAN                       Low birthweight                    4      38
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight       894    1103
Birth       SAS-CompFeed     INDIA                          Low birthweight                  209    1103
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11614   12917
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                 1303   12917
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight       317     360
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                   43     360
6 months    CMIN             BANGLADESH                     Normal or high birthweight         9      12
6 months    CMIN             BANGLADESH                     Low birthweight                    3      12
6 months    COHORTS          GUATEMALA                      Normal or high birthweight       704     774
6 months    COHORTS          GUATEMALA                      Low birthweight                   70     774
6 months    COHORTS          INDIA                          Normal or high birthweight      5000    6252
6 months    COHORTS          INDIA                          Low birthweight                 1252    6252
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight      2416    2664
6 months    COHORTS          PHILIPPINES                    Low birthweight                  248    2664
6 months    CONTENT          PERU                           Normal or high birthweight         2       2
6 months    CONTENT          PERU                           Low birthweight                    0       2
6 months    EE               PAKISTAN                       Normal or high birthweight       243     374
6 months    EE               PAKISTAN                       Low birthweight                  131     374
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight       397     563
6 months    GMS-Nepal        NEPAL                          Low birthweight                  166     563
6 months    IRC              INDIA                          Normal or high birthweight       334     402
6 months    IRC              INDIA                          Low birthweight                   68     402
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight      8338   14105
6 months    JiVitA-3         BANGLADESH                     Low birthweight                 5767   14105
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight      3005    4045
6 months    JiVitA-4         BANGLADESH                     Low birthweight                 1040    4045
6 months    Keneba           GAMBIA                         Normal or high birthweight      1146    1334
6 months    Keneba           GAMBIA                         Low birthweight                  188    1334
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight       188     238
6 months    MAL-ED           BANGLADESH                     Low birthweight                   50     238
6 months    MAL-ED           BRAZIL                         Normal or high birthweight       199     209
6 months    MAL-ED           BRAZIL                         Low birthweight                   10     209
6 months    MAL-ED           INDIA                          Normal or high birthweight       193     227
6 months    MAL-ED           INDIA                          Low birthweight                   34     227
6 months    MAL-ED           NEPAL                          Normal or high birthweight       210     229
6 months    MAL-ED           NEPAL                          Low birthweight                   19     229
6 months    MAL-ED           PERU                           Normal or high birthweight       254     270
6 months    MAL-ED           PERU                           Low birthweight                   16     270
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight       238     253
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                   15     253
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       177     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    9     186
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight       367     518
6 months    NIH-Birth        BANGLADESH                     Low birthweight                  151     518
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight       545     715
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                  170     715
6 months    PROBIT           BELARUS                        Normal or high birthweight     15757   15757
6 months    PROBIT           BELARUS                        Low birthweight                    0   15757
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight       460     603
6 months    PROVIDE          BANGLADESH                     Low birthweight                  143     603
6 months    ResPak           PAKISTAN                       Normal or high birthweight        29      34
6 months    ResPak           PAKISTAN                       Low birthweight                    5      34
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight      1001    1324
6 months    SAS-CompFeed     INDIA                          Low birthweight                  323    1324
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1943    2010
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   67    2010
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7405    8473
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                 1068    8473
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight       321     364
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                   43     364
24 months   CMIN             BANGLADESH                     Normal or high birthweight         8      11
24 months   CMIN             BANGLADESH                     Low birthweight                    3      11
24 months   COHORTS          GUATEMALA                      Normal or high birthweight       595     657
24 months   COHORTS          GUATEMALA                      Low birthweight                   62     657
24 months   COHORTS          INDIA                          Normal or high birthweight      3911    4821
24 months   COHORTS          INDIA                          Low birthweight                  910    4821
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight      2195    2410
24 months   COHORTS          PHILIPPINES                    Low birthweight                  215    2410
24 months   CONTENT          PERU                           Normal or high birthweight         2       2
24 months   CONTENT          PERU                           Low birthweight                    0       2
24 months   EE               PAKISTAN                       Normal or high birthweight       101     168
24 months   EE               PAKISTAN                       Low birthweight                   67     168
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight       355     486
24 months   GMS-Nepal        NEPAL                          Low birthweight                  131     486
24 months   IRC              INDIA                          Normal or high birthweight       335     403
24 months   IRC              INDIA                          Low birthweight                   68     403
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight      4225    7282
24 months   JiVitA-3         BANGLADESH                     Low birthweight                 3057    7282
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight      2944    3997
24 months   JiVitA-4         BANGLADESH                     Low birthweight                 1053    3997
24 months   Keneba           GAMBIA                         Normal or high birthweight       905    1057
24 months   Keneba           GAMBIA                         Low birthweight                  152    1057
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight       165     210
24 months   MAL-ED           BANGLADESH                     Low birthweight                   45     210
24 months   MAL-ED           BRAZIL                         Normal or high birthweight       161     169
24 months   MAL-ED           BRAZIL                         Low birthweight                    8     169
24 months   MAL-ED           INDIA                          Normal or high birthweight       185     218
24 months   MAL-ED           INDIA                          Low birthweight                   33     218
24 months   MAL-ED           NEPAL                          Normal or high birthweight       203     221
24 months   MAL-ED           NEPAL                          Low birthweight                   18     221
24 months   MAL-ED           PERU                           Normal or high birthweight       187     199
24 months   MAL-ED           PERU                           Low birthweight                   12     199
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight       224     237
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                   13     237
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       154     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     162
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       286     413
24 months   NIH-Birth        BANGLADESH                     Low birthweight                  127     413
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight       388     514
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                  126     514
24 months   PROBIT           BELARUS                        Normal or high birthweight      3970    3970
24 months   PROBIT           BELARUS                        Low birthweight                    0    3970
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight       440     579
24 months   PROVIDE          BANGLADESH                     Low birthweight                  139     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight       337     431
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                   94     431


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a45aad02-dfdd-48c0-9726-456e0688293b/45cfb95f-faf9-4479-a481-956ce6f703ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2548038   -0.5530721    0.0434644
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.9541001   -1.0556817   -0.8525186
Birth       COHORTS          INDIA                          optimal              observed          -0.7533398   -0.7830352   -0.7236443
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.6149060   -0.6603702   -0.5694417
Birth       EE               PAKISTAN                       optimal              observed           0.0234959   -0.1742175    0.2212093
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.7715674   -0.8638880   -0.6792468
Birth       IRC              INDIA                          optimal              observed          -0.7530849   -0.9460023   -0.5601674
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.4378782   -0.4572816   -0.4184748
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.3852117   -0.4411776   -0.3292458
Birth       Keneba           GAMBIA                         optimal              observed          -1.0839372   -1.1482482   -1.0196262
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.7574855   -0.9115332   -0.6034378
Birth       MAL-ED           INDIA                          optimal              observed          -0.8233962   -1.1090799   -0.5377125
Birth       MAL-ED           PERU                           optimal              observed           0.0015353   -0.1217752    0.1248458
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1424543   -0.3581519    0.0732434
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -1.0324938   -1.1349821   -0.9300054
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.9786156   -1.0649869   -0.8922443
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.0608365   -1.1434595   -0.9782134
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.3949544   -0.5422255   -0.2476832
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2956563   -0.3205387   -0.2707738
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3439109   -0.5120767   -0.1757451
6 months    COHORTS          GUATEMALA                      optimal              observed           0.2248070    0.1385723    0.3110417
6 months    COHORTS          INDIA                          optimal              observed          -0.5727272   -0.6038453   -0.5416092
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.2604981   -0.3041935   -0.2168028
6 months    EE               PAKISTAN                       optimal              observed          -0.8961527   -1.0477761   -0.7445294
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.4790844   -0.5777304   -0.3804384
6 months    IRC              INDIA                          optimal              observed          -0.5626545   -0.7093901   -0.4159189
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.4619173   -0.4886524   -0.4351822
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.2986886   -0.3494406   -0.2479366
6 months    Keneba           GAMBIA                         optimal              observed          -0.1592349   -0.2266142   -0.0918556
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.0604656   -0.2147751    0.0938439
6 months    MAL-ED           BRAZIL                         optimal              observed           0.9962890    0.8282224    1.1643557
6 months    MAL-ED           INDIA                          optimal              observed          -0.6552627   -0.7954272   -0.5150983
6 months    MAL-ED           NEPAL                          optimal              observed           0.1713929    0.0343260    0.3084598
6 months    MAL-ED           PERU                           optimal              observed           1.0842576    0.9593249    1.2091903
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.1541759   -0.5065688    0.8149206
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5891939    0.4288450    0.7495428
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.3852093   -0.4914620   -0.2789566
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.1186237    0.0310064    0.2062411
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0701803   -0.1627333    0.0223727
6 months    ResPak           PAKISTAN                       optimal              observed          -0.0047427   -0.5025283    0.4930428
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.5641914   -0.7218763   -0.4065065
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1023242    0.0485217    0.1561267
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.3403823    0.3125036    0.3682609
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4517572   -0.5591155   -0.3443990
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.1566381   -0.2251076   -0.0881686
24 months   COHORTS          INDIA                          optimal              observed          -0.5048276   -0.5370432   -0.4726120
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.5648954   -0.6032040   -0.5265869
24 months   EE               PAKISTAN                       optimal              observed          -0.9213823   -1.1154178   -0.7273467
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.1146216   -1.2296299   -0.9996132
24 months   IRC              INDIA                          optimal              observed          -0.6100451   -0.7340954   -0.4859948
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.1262675   -1.1591151   -1.0934200
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.1448927   -1.1843239   -1.1054614
24 months   Keneba           GAMBIA                         optimal              observed          -0.7359322   -0.8006384   -0.6712260
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.7171701   -0.8638093   -0.5705308
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.0786363   -0.3890919    0.2318194
24 months   MAL-ED           INDIA                          optimal              observed          -0.8737983   -0.9934260   -0.7541706
24 months   MAL-ED           NEPAL                          optimal              observed          -0.2857337   -0.4518683   -0.1195991
24 months   MAL-ED           PERU                           optimal              observed           0.1674696    0.0471136    0.2878256
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.3799532    0.2618515    0.4980550
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1224545   -0.0321549    0.2770640
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.7832510   -0.8937525   -0.6727494
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.4805139   -0.5893569   -0.3716709
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.7655722   -0.8597876   -0.6713569
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9705598   -1.1098177   -0.8313018


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       EE               PAKISTAN                       observed             observed          -0.3333051   -0.5209779   -0.1456323
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7778272   -0.7968313   -0.7588232
Birth       JiVitA-4         BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
Birth       Keneba           GAMBIA                         observed             observed          -1.2343618   -1.2966897   -1.1720339
Birth       MAL-ED           BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED           INDIA                          observed             observed          -0.9324444   -1.2067907   -0.6580982
Birth       MAL-ED           PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.1925833   -0.4053570    0.0201904
Birth       NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5154897   -0.5413479   -0.4896314
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -0.4937083   -0.6464716   -0.3409451
6 months    COHORTS          GUATEMALA                      observed             observed           0.2009690    0.1225187    0.2794193
6 months    COHORTS          INDIA                          observed             observed          -0.6934213   -0.7223635   -0.6644791
6 months    COHORTS          PHILIPPINES                    observed             observed          -0.2923874   -0.3342162   -0.2505585
6 months    EE               PAKISTAN                       observed             observed          -0.7738057   -0.8881828   -0.6594286
6 months    GMS-Nepal        NEPAL                          observed             observed          -0.6026850   -0.6889114   -0.5164586
6 months    IRC              INDIA                          observed             observed          -0.5865133   -0.7228579   -0.4501686
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.6078114   -0.6285877   -0.5870351
6 months    JiVitA-4         BANGLADESH                     observed             observed          -0.3785933   -0.4212191   -0.3359676
6 months    Keneba           GAMBIA                         observed             observed          -0.1980632   -0.2602433   -0.1358831
6 months    MAL-ED           BANGLADESH                     observed             observed          -0.1264286   -0.2562001    0.0033429
6 months    MAL-ED           BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          observed             observed          -0.6950184   -0.8251168   -0.5649199
6 months    MAL-ED           NEPAL                          observed             observed           0.1468195    0.0154553    0.2781837
6 months    MAL-ED           PERU                           observed             observed           1.0569321    0.9344468    1.1794174
6 months    MAL-ED           SOUTH AFRICA                   observed             observed           0.5447167    0.3920617    0.6973717
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5650627    0.4090080    0.7211174
6 months    NIH-Birth        BANGLADESH                     observed             observed          -0.4636760   -0.5549942   -0.3723578
6 months    NIH-Crypto       BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ResPak           PAKISTAN                       observed             observed           0.2176471   -0.1948962    0.6301903
6 months    SAS-CompFeed     INDIA                          observed             observed          -0.6671261   -0.8034351   -0.5308171
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0834996    0.0305909    0.1364083
6 months    ZVITAMBO         ZIMBABWE                       observed             observed           0.3088788    0.2831827    0.3345749
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -0.5504808   -0.6531501   -0.4478114
24 months   COHORTS          GUATEMALA                      observed             observed          -0.2281431   -0.2964243   -0.1598619
24 months   COHORTS          INDIA                          observed             observed          -0.5945219   -0.6240625   -0.5649813
24 months   COHORTS          PHILIPPINES                    observed             observed          -0.6076846   -0.6447204   -0.5706489
24 months   EE               PAKISTAN                       observed             observed          -1.0120238   -1.1588493   -0.8651984
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.1336900   -1.2226955   -1.0446844
24 months   IRC              INDIA                          observed             observed          -0.7385236   -0.8304949   -0.6465522
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.3060382   -1.3311265   -1.2809499
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.2443883   -1.2783802   -1.2103964
24 months   Keneba           GAMBIA                         observed             observed          -0.7959275   -0.8565476   -0.7353073
24 months   MAL-ED           BANGLADESH                     observed             observed          -0.8080238   -0.9295087   -0.6865389
24 months   MAL-ED           BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          observed             observed          -0.9353899   -1.0537553   -0.8170246
24 months   MAL-ED           NEPAL                          observed             observed          -0.3576697   -0.4708099   -0.2445294
24 months   MAL-ED           PERU                           observed             observed           0.1137982   -0.0103449    0.2379412
24 months   MAL-ED           SOUTH AFRICA                   observed             observed           0.4054395    0.2840471    0.5268320
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1119136   -0.0377314    0.2615586
24 months   NIH-Birth        BANGLADESH                     observed             observed          -0.9069451   -1.0069853   -0.8069049
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.1828306   -1.2821673   -1.0834939


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2100217   -0.3652210   -0.0548225
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.1080427   -0.1451556   -0.0709298
Birth       COHORTS          INDIA                          optimal              observed          -0.2314059   -0.2489285   -0.2138833
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.1278191   -0.1473871   -0.1082512
Birth       EE               PAKISTAN                       optimal              observed          -0.3568010   -0.4951859   -0.2184161
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.3448757   -0.4089651   -0.2807863
Birth       IRC              INDIA                          optimal              observed          -0.2574982   -0.3497701   -0.1652263
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.3399490   -0.3521842   -0.3277139
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.3034152   -0.3376066   -0.2692238
Birth       Keneba           GAMBIA                         optimal              observed          -0.1504246   -0.1790308   -0.1218184
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.1843750   -0.2605159   -0.1082340
Birth       MAL-ED           INDIA                          optimal              observed          -0.1090482   -0.2504098    0.0323134
Birth       MAL-ED           PERU                           optimal              observed          -0.0535529   -0.0916053   -0.0155005
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0501291   -0.1020359    0.0017778
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.3174280   -0.3812438   -0.2536121
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.2655357   -0.3202855   -0.2107859
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.2376222   -0.2885196   -0.1867248
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.2750910   -0.3440326   -0.2061493
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2198334   -0.2330285   -0.2066383
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1497975   -0.2319589   -0.0676360
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.0238380   -0.0594451    0.0117691
6 months    COHORTS          INDIA                          optimal              observed          -0.1206941   -0.1369190   -0.1044691
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.0318892   -0.0461230   -0.0176555
6 months    EE               PAKISTAN                       optimal              observed           0.1223470    0.0151073    0.2295867
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.1236006   -0.1828933   -0.0643079
6 months    IRC              INDIA                          optimal              observed          -0.0238588   -0.1024484    0.0547309
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.1458941   -0.1623377   -0.1294506
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.0799048   -0.1033663   -0.0564432
6 months    Keneba           GAMBIA                         optimal              observed          -0.0388283   -0.0639067   -0.0137498
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.0659629   -0.1277228   -0.0042031
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.0242117   -0.0621335    0.0137101
6 months    MAL-ED           INDIA                          optimal              observed          -0.0397556   -0.0960502    0.0165389
6 months    MAL-ED           NEPAL                          optimal              observed          -0.0245734   -0.0657824    0.0166356
6 months    MAL-ED           PERU                           optimal              observed          -0.0273255   -0.0649989    0.0103479
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.3905408   -0.2519756    1.0330572
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0241312   -0.0580394    0.0097770
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.0784667   -0.1453802   -0.0115532
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0888615   -0.1354302   -0.0422928
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1289104   -0.1803695   -0.0774513
6 months    ResPak           PAKISTAN                       optimal              observed           0.2223898   -0.0276646    0.4724442
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.1029348   -0.1534042   -0.0524653
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0188246   -0.0285171   -0.0091321
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0315035   -0.0433318   -0.0196751
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0987235   -0.1407164   -0.0567307
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.0715049   -0.1009082   -0.0421017
24 months   COHORTS          INDIA                          optimal              observed          -0.0896943   -0.1041951   -0.0751935
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.0427892   -0.0555775   -0.0300009
24 months   EE               PAKISTAN                       optimal              observed          -0.0906416   -0.2102652    0.0289821
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.0190684   -0.0994425    0.0613056
24 months   IRC              INDIA                          optimal              observed          -0.1284785   -0.2218133   -0.0351436
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.1797707   -0.2008402   -0.1587011
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.0994956   -0.1212758   -0.0777154
24 months   Keneba           GAMBIA                         optimal              observed          -0.0599953   -0.0869479   -0.0330427
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.0908537   -0.1741615   -0.0075460
24 months   MAL-ED           BRAZIL                         optimal              observed           0.5412595    0.2130946    0.8694245
24 months   MAL-ED           INDIA                          optimal              observed          -0.0615916   -0.1257092    0.0025260
24 months   MAL-ED           NEPAL                          optimal              observed          -0.0719360   -0.2117992    0.0679273
24 months   MAL-ED           PERU                           optimal              observed          -0.0536714   -0.1043855   -0.0029574
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.0254863   -0.0276050    0.0785776
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0105409   -0.0409247    0.0198429
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.1236942   -0.1966770   -0.0507113
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.1298363   -0.1826710   -0.0770016
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.1272948   -0.1758629   -0.0787267
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2122708   -0.3370688   -0.0874729
