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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* single
* impsan
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_single
* delta_impsan
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth
* delta_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        feducyrs    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
6 months    ki0047075b-MAL-ED          BANGLADESH                     High            50     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low             36     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          46     132
6 months    ki0047075b-MAL-ED          INDIA                          High            43     138
6 months    ki0047075b-MAL-ED          INDIA                          Low             54     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium          41     138
6 months    ki0047075b-MAL-ED          NEPAL                          High            40      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low             27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium          28      95
6 months    ki0047075b-MAL-ED          PERU                           High           107     224
6 months    ki0047075b-MAL-ED          PERU                           Low             60     224
6 months    ki0047075b-MAL-ED          PERU                           Medium          57     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            33      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low             35      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          24      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           127     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             55     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          19     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           349    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            548    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         434    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High           101     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            132     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium         147     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           203     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            200     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         179     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           279     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            223     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1082    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2017
6 months    ki1113344-GMS-Nepal        NEPAL                          High           136     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            243     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium         183     562
6 months    ki1119695-PROBIT           BELARUS                        High          2512   15207
6 months    ki1119695-PROBIT           BELARUS                        Low           5958   15207
6 months    ki1119695-PROBIT           BELARUS                        Medium        6737   15207
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           552    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1398    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        6082    8032
6 months    ki1135781-COHORTS          GUATEMALA                      High           165     905
6 months    ki1135781-COHORTS          GUATEMALA                      Low            406     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         334     905
6 months    ki1135781-COHORTS          INDIA                          High           544    1385
6 months    ki1135781-COHORTS          INDIA                          Low            450    1385
6 months    ki1135781-COHORTS          INDIA                          Medium         391    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    High           892    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            744    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         926    2562
6 months    ki1148112-LCNI-5           MALAWI                         High           251     812
6 months    ki1148112-LCNI-5           MALAWI                         Low            290     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium         271     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4271   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6291   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5543   16105
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High           346    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1995    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium         405    2746
24 months   ki0047075b-MAL-ED          BANGLADESH                     High            40     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             35     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          42     117
24 months   ki0047075b-MAL-ED          INDIA                          High            42     132
24 months   ki0047075b-MAL-ED          INDIA                          Low             51     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium          39     132
24 months   ki0047075b-MAL-ED          NEPAL                          High            38      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low             27      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium          26      91
24 months   ki0047075b-MAL-ED          PERU                           High            77     164
24 months   ki0047075b-MAL-ED          PERU                           Low             44     164
24 months   ki0047075b-MAL-ED          PERU                           Medium          43     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low             34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          23      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           114     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             47     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          16     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           202     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            197     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         179     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           211     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            144     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         159     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High           116     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            220     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         161     497
24 months   ki1119695-PROBIT           BELARUS                        High           620    3852
24 months   ki1119695-PROBIT           BELARUS                        Low           1488    3852
24 months   ki1119695-PROBIT           BELARUS                        Medium        1744    3852
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            13     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            100     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         287     400
24 months   ki1135781-COHORTS          GUATEMALA                      High           178    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Low            465    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         359    1002
24 months   ki1135781-COHORTS          INDIA                          High           536    1370
24 months   ki1135781-COHORTS          INDIA                          Low            448    1370
24 months   ki1135781-COHORTS          INDIA                          Medium         386    1370
24 months   ki1135781-COHORTS          PHILIPPINES                    High           798    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            693    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         828    2319
24 months   ki1148112-LCNI-5           MALAWI                         High           170     555
24 months   ki1148112-LCNI-5           MALAWI                         Low            194     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium         191     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2055    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3371    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2838    8264
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High           333    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1955    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium         395    2683


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/4dcd69d6-d82b-4d72-beda-403cb4097cb9/e28b1606-4db6-4385-90cb-8346082c53eb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4dcd69d6-d82b-4d72-beda-403cb4097cb9/e28b1606-4db6-4385-90cb-8346082c53eb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4dcd69d6-d82b-4d72-beda-403cb4097cb9/e28b1606-4db6-4385-90cb-8346082c53eb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2174495   -0.4950844    0.0601855
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.5202380   -0.7702833   -0.2701927
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.1879361   -0.5268829    0.1510107
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.6629935   -0.9417016   -0.3842855
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.6245437   -0.9008636   -0.3482238
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.9182906   -1.2784809   -0.5581002
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0172374   -0.2497834    0.2842581
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.4669314   -0.8497570   -0.0841058
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                 0.0092703   -0.3253441    0.3438846
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 1.0425408    0.8503914    1.2346902
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 1.2770669    0.9992029    1.5549308
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                 0.9213565    0.6554496    1.1872634
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.5657049    0.1728666    0.9585433
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0691798   -0.3571757    0.4955353
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.1887845   -0.2184964    0.5960654
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.4370626    0.2526050    0.6215203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.5225200    0.2698654    0.7751746
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.0805723    0.6371261    1.5240184
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.5767403   -0.7278093   -0.4256714
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.7331082   -0.8747510   -0.5914655
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.6443755   -0.8114035   -0.4773475
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.9565926   -1.1797426   -0.7334425
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.9223236   -1.1055901   -0.7390571
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -1.1186390   -1.3209467   -0.9163313
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0998517   -0.2464909    0.0467874
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2896060   -0.4397718   -0.1394401
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.2400092   -0.3800837   -0.0999348
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1148998   -0.0097647    0.2395643
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0682086   -0.2097532    0.0733360
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                 0.0011096   -0.1459099    0.1481292
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1229516   -0.0022042    0.2481074
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0825510    0.0133226    0.1517794
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0448401   -0.0612149    0.1508950
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.5341787   -0.7131942   -0.3551633
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.6325868   -0.7653889   -0.4997848
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.6197470   -0.7733033   -0.4661907
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.5605222    0.4813142    0.6397303
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.5857291    0.5156135    0.6558447
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.5746768    0.5106345    0.6387192
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3401032    0.2310730    0.4491334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1466151    0.0719869    0.2212434
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                 0.3372625    0.3070103    0.3675147
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1550742   -0.0431173    0.3532657
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1489716    0.0372070    0.2607362
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1696969    0.0397472    0.2996466
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.6070865   -0.7027023   -0.5114706
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.7031123   -0.8081378   -0.5980868
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.6456396   -0.7593984   -0.5318809
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.2792621   -0.3526584   -0.2058658
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2733874   -0.3551495   -0.1916253
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.3090041   -0.3833406   -0.2346676
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.4134943    0.2829970    0.5439916
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.4779793    0.3570830    0.5988755
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                 0.4259107    0.2980346    0.5537868
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.5482917   -0.5857034   -0.5108800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.6316585   -0.6619540   -0.6013630
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.5756478   -0.6076490   -0.5436465
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.3881127   -0.5153230   -0.2609024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.3784665   -0.4350212   -0.3219118
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.3949934   -0.5058301   -0.2841567
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.8010187   -1.0715583   -0.5304792
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.0503053   -1.3432966   -0.7573141
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.8934251   -1.2320957   -0.5547545
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.9112141   -1.1132896   -0.7091387
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.9094544   -1.1303061   -0.6886028
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.9953311   -1.3141232   -0.6765390
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2394838   -0.5159950    0.0370274
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.6423075   -0.9257613   -0.3588538
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.5161879   -0.9350980   -0.0972778
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0526038   -0.1311069    0.2363144
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.3511208    0.1378689    0.5643727
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                 0.0768249   -0.2176867    0.3713365
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.5833520    0.2474805    0.9192234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.2731759   -0.0710983    0.6174501
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.1668648   -0.1078232    0.4415529
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1451606   -0.0352349    0.3255562
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0448255   -0.3110279    0.2213768
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.1820093   -0.2026784    0.5666970
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.7398098   -0.8774768   -0.6021428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.0491641   -1.1793598   -0.9189683
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.8787441   -1.0368888   -0.7205993
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.5200597   -0.6745460   -0.3655733
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.8528488   -1.0123866   -0.6933109
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.5264982   -0.6976127   -0.3553836
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1532323   -1.3312424   -0.9752222
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.0978762   -1.2288530   -0.9668994
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.1345176   -1.2923577   -0.9766774
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.7210141    0.6067703    0.8352580
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.7091081    0.5274025    0.8908137
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                 0.6475162    0.5421763    0.7528562
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.0836546   -1.5675943   -0.5997149
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.3163010   -1.5601101   -1.0724920
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1434342   -1.2621012   -1.0247672
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.4712703   -0.6007600   -0.3417805
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.2181092   -0.3078550   -0.1283633
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.2830001   -0.3905770   -0.1754231
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.4509810   -0.5323323   -0.3696297
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.8310092   -0.9231692   -0.7388492
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.5702429   -0.6773619   -0.4631239
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.5278176   -0.5899569   -0.4656784
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.6603912   -0.7303348   -0.5904476
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.6799101   -0.7469005   -0.6129197
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0091797   -0.1483431    0.1667025
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0581449   -0.1875793    0.0712894
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.0540227   -0.2050748    0.0970294
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.2752460   -1.3214389   -1.2290531
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.2961075   -1.3331387   -1.2590763
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3246778   -1.3663501   -1.2830054
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.1549946   -1.2694540   -1.0405353
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.2491813   -1.2959397   -1.2024229
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.1670981   -1.2880719   -1.0461243


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.3053662   -0.4828374   -0.1278949
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7164734   -0.8860809   -0.5468660
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0313158   -0.1673661    0.2299977
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0866741    0.9521834    1.2211648
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3830435    0.1435272    0.6225598
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5218823    0.3795317    0.6642328
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0791782    0.0263777    0.1319787
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6041489   -0.6904591   -0.5178387
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5783110    0.5188487    0.6377732
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3096296    0.2832594    0.3359998
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1987403    0.1250477    0.2724329
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6502599   -0.7103477   -0.5901722
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2839930   -0.3263706   -0.2416154
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4414655    0.3698299    0.5131012
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5904964   -0.6106039   -0.5703890
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3829461   -0.4315670   -0.3343252
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9032479   -1.0730238   -0.7334719
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9451515   -1.0860650   -0.8042380
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.4668132   -0.6466833   -0.2869431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1412500    0.0103684    0.2721316
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3713736    0.1781064    0.5646408
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1027966   -0.0354562    0.2410495
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1284909   -1.2160945   -1.0408874
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6836046    0.5719211    0.7952881
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1874750   -1.2917540   -1.0831960
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2662176   -0.3220630   -0.2103721
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6051533   -0.6581071   -0.5521995
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6155714   -0.6532287   -0.5779140
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0443964   -0.1269881    0.0381953
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2984354   -1.3225016   -1.2743692
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2260902   -1.2680212   -1.1841592


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.3027885   -0.6766210    0.0710439
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.0295134   -0.4101760    0.4692028
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0384498   -0.3540528    0.4309524
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.2552970   -0.7120131    0.2014191
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.4841688   -0.9401693   -0.0281683
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.0079671   -0.4334862    0.4175520
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High               0.2345260   -0.1062192    0.5752713
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              -0.1211843   -0.4478869    0.2055182
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.4965251   -1.0787842    0.0857339
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.3769204   -0.9431789    0.1893380
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0854574   -0.2282107    0.3991254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.6435096    0.1630940    1.1239253
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1563679   -0.2387521   -0.0739837
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0676351   -0.1586394    0.0233691
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               0.0342689   -0.2545115    0.3230494
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.1620464   -0.4633404    0.1392476
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1897542   -0.3985319    0.0190235
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.1401575   -0.3423436    0.0620287
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1831084   -0.3717021    0.0054853
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.1137901   -0.3066154    0.0790351
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0404006   -0.1831434    0.1023422
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0781115   -0.2420216    0.0857985
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0984081   -0.3220922    0.1252760
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0855683   -0.3208632    0.1497266
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High               0.0252069   -0.0451227    0.0955365
6 months    ki1119695-PROBIT           BELARUS                        Medium               High               0.0141546   -0.0543845    0.0826937
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1934881   -0.3254745   -0.0615016
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0028407   -0.1158654    0.1101840
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0061026   -0.2341999    0.2219946
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0146227   -0.2222457    0.2514911
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.0960258   -0.2377581    0.0457064
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.0385532   -0.1868273    0.1097210
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High               0.0058747   -0.1038208    0.1155701
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0297420   -0.1336730    0.0741890
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High               0.0644849   -0.1142595    0.2432294
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High               0.0124164   -0.1713521    0.1961849
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0833668   -0.1303961   -0.0363375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0273561   -0.0735596    0.0188474
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0096462   -0.1257919    0.1450844
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0068807   -0.1696913    0.1559298
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2492866   -0.6533948    0.1548215
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0924064   -0.5355575    0.3507448
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High               0.0017597   -0.2955307    0.2990500
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0841170   -0.4625879    0.2943540
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.4028237   -0.8008435   -0.0048039
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.2767041   -0.7788760    0.2254678
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.2985170    0.0161052    0.5809288
24 months   ki0047075b-MAL-ED          PERU                           Medium               High               0.0242211   -0.3205461    0.3689884
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.3101761   -0.7921472    0.1717951
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.4164871   -0.8516854    0.0187111
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1899862   -0.5105696    0.1305972
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0368487   -0.3899658    0.4636631
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.3093543   -0.4981107   -0.1205979
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.1389343   -0.3478756    0.0700070
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.3327891   -0.5539795   -0.1115987
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0064385   -0.2354797    0.2226027
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.0553561   -0.1672422    0.2779545
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.0187148   -0.2199773    0.2574069
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.0119060   -0.1911254    0.1673133
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.0734979   -0.2026823    0.0556864
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.2326464   -0.7763112    0.3110184
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0597796   -0.5577342    0.4381750
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               0.2531611    0.0949425    0.4113798
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.1882702    0.0195688    0.3569717
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.3800281   -0.5030530   -0.2570033
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.1192619   -0.2537952    0.0152714
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1325736   -0.2255944   -0.0395528
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.1520925   -0.2426492   -0.0615357
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0673246   -0.2719413    0.1372920
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0632024   -0.2830747    0.1566699
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0208615   -0.0771587    0.0354357
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0494318   -0.1086283    0.0097647
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0941866   -0.2160228    0.0276495
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0121035   -0.1796055    0.1553985


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0879167   -0.3232470    0.1474136
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0534799   -0.2985877    0.1916279
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0140784   -0.2019820    0.2301389
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0441333   -0.0990487    0.1873153
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1826615   -0.5045227    0.1391998
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0848196   -0.0233010    0.1929403
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0873656   -0.1179148   -0.0568164
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0555653   -0.2479305    0.1367998
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1085188   -0.2246172    0.0075796
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0851375   -0.1853865    0.0151114
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0437733   -0.1564599    0.0689132
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0699701   -0.2268973    0.0869570
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0177888   -0.0361577    0.0717352
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0304736   -0.1359229    0.0749757
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0436661   -0.1385686    0.2259008
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0431735   -0.1176928    0.0313459
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0047309   -0.0659344    0.0564726
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0279712   -0.0813912    0.1373336
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0422047   -0.0737765   -0.0106330
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0051666   -0.1109398    0.1212731
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1022292   -0.3412285    0.1367702
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0339374   -0.2205997    0.1527249
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2273294   -0.4436023   -0.0110564
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0886462   -0.0491763    0.2264688
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.2119783   -0.4725585    0.0486018
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0423640   -0.1428809    0.0581528
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1481314   -0.2582558   -0.0380070
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0902905   -0.2034620    0.0228809
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0247414   -0.1333343    0.1828170
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0374095   -0.1492690    0.0744499
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.1038204   -0.5848815    0.3772407
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2050527    0.0810623    0.3290431
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.1541723   -0.2195619   -0.0887826
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0877537   -0.1401187   -0.0353888
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0535761   -0.1837464    0.0765942
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0231894   -0.0619341    0.0155553
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0710956   -0.1777917    0.0356006
