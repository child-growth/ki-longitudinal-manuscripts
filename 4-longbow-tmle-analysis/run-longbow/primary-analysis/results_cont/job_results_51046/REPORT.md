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

**Intervention Variable:** predfeed6

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

agecat      studyid                    country                        predfeed6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               114     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               105     219
Birth       ki0047075b-MAL-ED          BRAZIL                         1                26     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0               142     168
Birth       ki0047075b-MAL-ED          INDIA                          1                15     187
Birth       ki0047075b-MAL-ED          INDIA                          0               172     187
Birth       ki0047075b-MAL-ED          NEPAL                          1                22     165
Birth       ki0047075b-MAL-ED          NEPAL                          0               143     165
Birth       ki0047075b-MAL-ED          PERU                           1               104     249
Birth       ki0047075b-MAL-ED          PERU                           0               145     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     209
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               114     115
Birth       ki1000109-EE               PAKISTAN                       1                 0       1
Birth       ki1000109-EE               PAKISTAN                       0                 1       1
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             12395   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              3025   15420
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               521     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               112     633
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               123     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               112     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                35     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               174     209
6 months    ki0047075b-MAL-ED          INDIA                          1                18     232
6 months    ki0047075b-MAL-ED          INDIA                          0               214     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                29     235
6 months    ki0047075b-MAL-ED          NEPAL                          0               206     235
6 months    ki0047075b-MAL-ED          PERU                           1               113     269
6 months    ki0047075b-MAL-ED          PERU                           0               156     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               239     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               242     244
6 months    ki1000109-EE               PAKISTAN                       1               220     376
6 months    ki1000109-EE               PAKISTAN                       0               156     376
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1               404     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0               142     546
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             13186   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              3469   16655
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3331    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               929    4260
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               112     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                97     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               140     169
24 months   ki0047075b-MAL-ED          INDIA                          1                17     224
24 months   ki0047075b-MAL-ED          INDIA                          0               207     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                28     227
24 months   ki0047075b-MAL-ED          NEPAL                          0               199     227
24 months   ki0047075b-MAL-ED          PERU                           1                84     198
24 months   ki0047075b-MAL-ED          PERU                           0               114     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               224     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               210     212
24 months   ki1113344-GMS-Nepal        NEPAL                          1               359     479
24 months   ki1113344-GMS-Nepal        NEPAL                          0               120     479
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              6653    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1860    8513
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3275    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               884    4159


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
![](/tmp/91880e60-1ada-44e5-be4c-37a0b6eb97d4/53adb840-6758-4b4d-8246-3f9a5e94c6ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/91880e60-1ada-44e5-be4c-37a0b6eb97d4/53adb840-6758-4b4d-8246-3f9a5e94c6ca/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/91880e60-1ada-44e5-be4c-37a0b6eb97d4/53adb840-6758-4b4d-8246-3f9a5e94c6ca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.9163202   -1.0930281   -0.7396124
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0826797   -1.3112221   -0.8541372
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.4285655   -0.0695733    0.9267043
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.4076855    0.2096195    0.6057515
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                -0.5599681   -1.0630973   -0.0568390
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                -1.0803966   -1.2293480   -0.9314452
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                -0.4627940   -0.8601074   -0.0654806
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                -0.9970903   -1.1457102   -0.8484705
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.0137618   -0.1684736    0.1959971
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.0823430   -0.2412387    0.0765527
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.7162805   -0.7376000   -0.6949611
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7525229   -0.7921357   -0.7129102
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.3640226   -0.4556883   -0.2723569
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.4131777   -0.5880108   -0.2383445
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1591628   -0.3468218    0.0284963
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1304288   -0.3176355    0.0567779
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 1.4021352    1.0142936    1.7899768
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.8699496    0.6918287    1.0480705
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.3712151   -0.8536486    0.1112183
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.7271252   -0.8591454   -0.5951049
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.2695368   -0.2260672    0.7651408
6 months    ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0839352   -0.0530142    0.2208846
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 1.2069285    1.0376867    1.3761704
6 months    ki0047075b-MAL-ED     PERU         0                    NA                 0.9481703    0.7785934    1.1177473
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.4796286   -0.6197626   -0.3394946
6 months    ki1000109-EE          PAKISTAN     0                    NA                -1.0588621   -1.2387186   -0.8790055
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.5822325   -0.6855182   -0.4789468
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.6700840   -0.8421509   -0.4980171
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.3651840    0.0364490    0.6939189
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.3999633    0.2732607    0.5266658
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.5646256   -0.5859919   -0.5432593
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7101819   -0.7524216   -0.6679421
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.3420399   -0.3886624   -0.2954175
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5768238   -0.6528205   -0.5008271
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.9569939   -1.1290953   -0.7848925
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.6913674   -0.8647839   -0.5179508
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.3989442   -0.1136716    0.9115600
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.4530487    0.2275611    0.6785363
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.7481559   -1.0914489   -0.4048629
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.9534089   -1.0753147   -0.8315031
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1559129   -0.5323981    0.2205724
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.3924104   -0.5103723   -0.2744485
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.1497049   -0.0038599    0.3032696
24 months   ki0047075b-MAL-ED     PERU         0                    NA                 0.1418205   -0.0254163    0.3090574
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0873407   -1.1868375   -0.9878438
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.2793304   -1.4794304   -1.0792303
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0807814   -0.4022349    0.2406720
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0642043   -0.2253979    0.0969892
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3045507   -1.3309846   -1.2781167
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.2804226   -1.3279966   -1.2328485
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.2263753   -1.2634295   -1.1893211
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.2515258   -1.3276963   -1.1753553


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.9925114   -1.1346572   -0.8503656
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.4073214    0.2229599    0.5916830
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                -1.0435829   -1.1865715   -0.9005943
Birth       ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.9226061   -1.0630064   -0.7822058
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.0430924   -0.1600210    0.0738362
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.7234060   -0.7433920   -0.7034200
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.3738863   -0.4580087   -0.2897638
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.1464929   -0.2779745   -0.0150113
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.7028736   -0.8283047   -0.5774424
6 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                 0.1167518   -0.0146454    0.2481490
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                 1.0554461    0.9322755    1.1786167
6 months    ki1000109-EE          PAKISTAN     NA                   NA                -0.7212766   -0.8346857   -0.6078675
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.6015049   -0.6892785   -0.5137313
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                 0.3927574    0.2737700    0.5117448
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.5931801   -0.6126929   -0.5736674
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.3971948   -0.4378192   -0.3565704
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.8315789   -0.9546058   -0.7085521
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.9390848   -1.0545919   -0.8235777
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.3703084   -0.4835704   -0.2570464
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                 0.1430051    0.0254144    0.2605957
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1369520   -1.2269975   -1.0469065
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0771196   -0.2204715    0.0662323
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.2991319   -1.3225545   -1.2757094
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.2337581   -1.2679680   -1.1995482


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1663594   -0.4563762    0.1236573
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0208800   -0.5537128    0.5119528
Birth       ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA        0                    1                 -0.5204285   -1.0455891    0.0047322
Birth       ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL        0                    1                 -0.5342963   -0.9582726   -0.1103201
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.0961048   -0.3417936    0.1495839
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0362424   -0.0774882    0.0050034
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0491551   -0.2375754    0.1392653
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0287340   -0.2370172    0.2944852
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.5321856   -0.9594901   -0.1048811
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.3559100   -0.8574281    0.1456080
6 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL        0                    1                 -0.1856016   -0.7071287    0.3359255
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.2587582   -0.4986360   -0.0188804
6 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 -0.5792334   -0.8078205   -0.3506464
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0878515   -0.2889787    0.1132756
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0347793   -0.3177118    0.3872704
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.1455563   -0.1914072   -0.0997054
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.2347839   -0.3220547   -0.1475130
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.2656266    0.0238546    0.5073985
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0541045   -0.5049726    0.6131816
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.2052530   -0.5686797    0.1581736
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.2364975   -0.6312649    0.1582699
24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                 -0.0078843   -0.2307749    0.2150062
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1919897   -0.4155876    0.0316082
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0165771   -0.3461007    0.3792550
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0241281   -0.0292453    0.0775015
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0251505   -0.1070340    0.0567329


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0761912   -0.2172113    0.0648289
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0212441   -0.4747472    0.4322590
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                -0.4836148   -0.9700203    0.0027907
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                -0.4598121   -0.8316994   -0.0879247
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.0568542   -0.2011409    0.0874326
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0071254   -0.0152377    0.0009868
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0098637   -0.0420161    0.0222887
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0126699   -0.1130830    0.1384228
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.4304127   -0.7874067   -0.0734187
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.3316584   -0.8019312    0.1386144
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1527850   -0.6123463    0.3067763
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.1514824   -0.2918053   -0.0111595
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.2416480   -0.3415187   -0.1417773
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0192724   -0.0708813    0.0323365
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0275734   -0.2641124    0.3192592
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0285546   -0.0380297   -0.0190794
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0551549   -0.0752632   -0.0350466
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1254150    0.0120950    0.2387349
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0476830   -0.4179093    0.5132753
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.1909290   -0.5289163    0.1470584
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.2143955   -0.5616829    0.1328919
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0066998   -0.1339896    0.1205899
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0496113   -0.1064688    0.0072462
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0036619   -0.2989958    0.3063195
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0054187   -0.0063092    0.0171467
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0073828   -0.0250078    0.0102421
