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

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        predfeed36    n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                120     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                110     230
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 28     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                149     177
Birth       ki0047075b-MAL-ED          INDIA                          1                 16     195
Birth       ki0047075b-MAL-ED          INDIA                          0                179     195
Birth       ki0047075b-MAL-ED          NEPAL                          1                 25     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                142     167
Birth       ki0047075b-MAL-ED          PERU                           1                116     266
Birth       ki0047075b-MAL-ED          PERU                           0                150     266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                231     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                115     116
Birth       ki1000109-EE               PAKISTAN                       1                  0       1
Birth       ki1000109-EE               PAKISTAN                       0                  1       1
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               9192   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2127   11319
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                493     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                109     602
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                129     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                111     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                172     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 19     236
6 months    ki0047075b-MAL-ED          INDIA                          0                217     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 32     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                204     236
6 months    ki0047075b-MAL-ED          PERU                           1                126     271
6 months    ki0047075b-MAL-ED          PERU                           0                145     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                251     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                245     247
6 months    ki1000109-EE               PAKISTAN                       1                224     371
6 months    ki1000109-EE               PAKISTAN                       0                147     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                423     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                103     526
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              10674   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               2679   13353
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3255    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                917    4172
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                117     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 94     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 30     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                139     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 18     227
24 months   ki0047075b-MAL-ED          INDIA                          0                209     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 30     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                198     228
24 months   ki0047075b-MAL-ED          PERU                           1                 94     200
24 months   ki0047075b-MAL-ED          PERU                           0                106     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                235     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                212     214
24 months   ki1113344-GMS-Nepal        NEPAL                          1                368     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 87     455
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     184
24 months   ki1148112-LCNI-5           MALAWI                         0                150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5276    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1396    6672
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3140    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                869    4009


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ebd874f0-961d-43e0-8883-319e9c9584ed/972d5657-0a42-402e-a76c-0926212b5a9f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ebd874f0-961d-43e0-8883-319e9c9584ed/972d5657-0a42-402e-a76c-0926212b5a9f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ebd874f0-961d-43e0-8883-319e9c9584ed/972d5657-0a42-402e-a76c-0926212b5a9f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.9257683   -1.0962852   -0.7552515
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0264492   -1.2485595   -0.8043389
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.3385143   -0.1424912    0.8195198
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.3880581    0.1964332    0.5796829
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                -0.7715203   -1.2506753   -0.2923653
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                -1.1229782   -1.2716801   -0.9742763
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                -0.6326985   -0.9969406   -0.2684565
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                -0.9728448   -1.1230459   -0.8226438
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.0121304   -0.1825618    0.1583009
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.1062456   -0.2611948    0.0487036
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.7359503   -0.7606078   -0.7112929
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7848491   -0.8326210   -0.7370772
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.3759824   -0.4692454   -0.2827194
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.4344620   -0.5981935   -0.2707305
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1393862   -0.3173388    0.0385664
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1489866   -0.3402597    0.0422866
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 1.4337171    1.0491121    1.8183220
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.8600700    0.6812211    1.0389189
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.5423759   -0.9865235   -0.0982283
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.7218644   -0.8536001   -0.5901286
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.3020185   -0.1221151    0.7261520
6 months    ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0802038   -0.0581485    0.2185561
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 1.2364810    1.0726481    1.4003138
6 months    ki0047075b-MAL-ED     PERU         0                    NA                 0.8976411    0.7208771    1.0744052
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.5181898   -0.6607153   -0.3756644
6 months    ki1000109-EE          PAKISTAN     0                    NA                -1.0385847   -1.2254973   -0.8516721
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.5690121   -0.6693198   -0.4687044
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.7297307   -0.9200478   -0.5394136
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.3500275    0.0115896    0.6884653
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.3954875    0.2685305    0.5224445
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.5502914   -0.5739789   -0.5266039
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7243561   -0.7719017   -0.6768105
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.3408610   -0.3881538   -0.2935681
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5813024   -0.6573297   -0.5052751
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.9354649   -1.1026572   -0.7682726
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.6917635   -0.8755896   -0.5079374
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.4951955   -0.0078228    0.9982138
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.4528696    0.2269543    0.6787848
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.6881171   -1.0510965   -0.3251376
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.9625832   -1.0846982   -0.8404683
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.2089668   -0.5978055    0.1798720
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.3924384   -0.5102970   -0.2745798
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.1800761    0.0327527    0.3273994
24 months   ki0047075b-MAL-ED     PERU         0                    NA                 0.0993089   -0.0786346    0.2772524
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0644623   -1.1622497   -0.9666748
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.3419799   -1.5826869   -1.1012728
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1662736   -0.4896107    0.1570636
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0625339   -0.2234299    0.0983621
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3257306   -1.3565024   -1.2949588
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.3141542   -1.3696291   -1.2586794
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.2353078   -1.2735109   -1.1971046
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.2582962   -1.3396900   -1.1769023


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.9773043   -1.1153078   -0.8393008
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.3837288    0.2059602    0.5614974
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                -1.0816410   -1.2241126   -0.9391694
Birth       ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.9126946   -1.0520834   -0.7733058
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.0602256   -0.1729666    0.0525155
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.7445605   -0.7677110   -0.7214100
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.3861794   -0.4712311   -0.3011277
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.1400243   -0.2696346   -0.0104140
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                 1.0562362    0.9338834    1.1785889
6 months    ki1000109-EE          PAKISTAN     NA                   NA                -0.7256065   -0.8395859   -0.6116270
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.6007161   -0.6897580   -0.5116742
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                 0.3927574    0.2737700    0.5117448
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.5834618   -0.6054534   -0.5614701
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.3973178   -0.4385298   -0.3561058
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.8227962   -0.9454140   -0.7001785
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                 0.1302000    0.0113848    0.2490152
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1186923   -1.2105469   -1.0268377
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0771196   -0.2204715    0.0662323
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3246418   -1.3519597   -1.2973238
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.2418558   -1.2769820   -1.2067296


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1006809   -0.3807997    0.1794379
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0495438   -0.4620337    0.5611212
Birth       ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA        0                    1                 -0.3514579   -0.8544921    0.1515762
Birth       ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL        0                    1                 -0.3401463   -0.7345254    0.0542328
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.0941151   -0.3252555    0.1370252
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0488988   -0.0988667    0.0010692
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0584796   -0.2391129    0.1221537
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0096004   -0.2712168    0.2520161
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.5736471   -0.9981163   -0.1491778
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.1794885   -0.6432426    0.2842656
6 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL        0                    1                 -0.2218147   -0.6695768    0.2259475
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.3388398   -0.5797468   -0.0979328
6 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 -0.5203949   -0.7561474   -0.2846424
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1607186   -0.3756938    0.0542567
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0454600   -0.3162519    0.4071719
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.1740647   -0.2246806   -0.1234488
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.2404414   -0.3282563   -0.1526266
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.2437014   -0.0043693    0.4917721
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0423259   -0.5943537    0.5097019
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.2744662   -0.6583134    0.1093810
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.1834716   -0.5899304    0.2229872
24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                 -0.0807672   -0.3083064    0.1467720
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.2775176   -0.5374549   -0.0175803
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.1037397   -0.2589271    0.4664064
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0115764   -0.0509921    0.0741450
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0229884   -0.1105823    0.0646054


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0515360   -0.1844148    0.0813428
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0452145   -0.3914512    0.4818802
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                -0.3101207   -0.7764254    0.1561839
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                -0.2799961   -0.6201349    0.0601428
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.0480951   -0.1791155    0.0829253
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0086101   -0.0181377    0.0009175
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0101970   -0.0426925    0.0222985
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0006381   -0.1215091    0.1202329
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.4619946   -0.8136903   -0.1102988
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.1610210   -0.5929090    0.2708670
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1909733   -0.5816398    0.1996933
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.1802448   -0.3108634   -0.0496262
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.2074166   -0.3058843   -0.1089490
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0317040   -0.0741552    0.0107472
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0427299   -0.2581375    0.3435972
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0331703   -0.0433886   -0.0229520
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0564569   -0.0769185   -0.0359953
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1126687    0.0017457    0.2235917
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0485683   -0.5046851    0.4075485
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.2641737   -0.6210864    0.0927390
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1674806   -0.5236095    0.1886483
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0498761   -0.1705136    0.0707615
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0542301   -0.1051126   -0.0033475
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0891540   -0.2131631    0.3914711
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0010889   -0.0119108    0.0140885
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0065481   -0.0251138    0.0120177
