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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               119     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               112     231
Birth       ki0047075b-MAL-ED          BRAZIL                         1                27     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0               148     175
Birth       ki0047075b-MAL-ED          INDIA                          1                15     190
Birth       ki0047075b-MAL-ED          INDIA                          0               175     190
Birth       ki0047075b-MAL-ED          NEPAL                          1                23     170
Birth       ki0047075b-MAL-ED          NEPAL                          0               147     170
Birth       ki0047075b-MAL-ED          PERU                           1               106     256
Birth       ki0047075b-MAL-ED          PERU                           0               150     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               208     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               118     119
Birth       ki1000109-EE               PAKISTAN                       1                 1       2
Birth       ki1000109-EE               PAKISTAN                       0                 1       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             15096   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              3986   19082
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               619     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               148     767
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
6 months    ki1000109-EE               PAKISTAN                       1               218     372
6 months    ki1000109-EE               PAKISTAN                       0               154     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1               404     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0               142     546
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             13223   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              3459   16682
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3332    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               927    4259
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
24 months   ki1113344-GMS-Nepal        NEPAL                          1               360     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0               120     480
24 months   ki1148112-LCNI-5           MALAWI                         1                34     189
24 months   ki1148112-LCNI-5           MALAWI                         0               155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              6677    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1865    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3289    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               885    4174


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
![](/tmp/970f1bea-03f1-4518-b092-3e863bec83c6/67ba03ee-7ddf-4099-89cc-9915d8622a4a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/970f1bea-03f1-4518-b092-3e863bec83c6/67ba03ee-7ddf-4099-89cc-9915d8622a4a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/970f1bea-03f1-4518-b092-3e863bec83c6/67ba03ee-7ddf-4099-89cc-9915d8622a4a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.9963257   -1.1691111   -0.8235403
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0700643   -1.2679102   -0.8722184
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.8476848   -1.2585997   -0.4367699
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.7612020   -0.9359537   -0.5864503
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                -1.2323631   -1.8857123   -0.5790139
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                -0.9904788   -1.1395919   -0.8413658
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                -0.3463124   -0.8385834    0.1459587
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                -0.7217650   -0.8903442   -0.5531859
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.9125266   -1.0911264   -0.7339268
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.9452601   -1.0875042   -0.8030159
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.5301170   -1.5504409   -1.5097930
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.6093211   -1.6416219   -1.5770202
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.4968713   -1.5856124   -1.4081302
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.6285387   -1.8199651   -1.4371123
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.1527015   -1.3135912   -0.9918119
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.2821445   -1.4627176   -1.1015713
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1983082   -0.2046580    0.6012744
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0191259   -0.1330922    0.1713440
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -1.6639296   -2.2981474   -1.0297118
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -1.1878847   -1.3065183   -1.0692512
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.7576194   -1.0985675   -0.4166713
6 months    ki0047075b-MAL-ED     NEPAL        0                    NA                -0.5422354   -0.6624371   -0.4220336
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -1.1725379   -1.3303265   -1.0147493
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -1.4097840   -1.5537306   -1.2658375
6 months    ki1000109-EE          PAKISTAN     1                    NA                -2.3765132   -2.5352908   -2.2177356
6 months    ki1000109-EE          PAKISTAN     0                    NA                -1.9478448   -2.1414020   -1.7542876
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.2850710   -1.3740102   -1.1961319
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.4812853   -1.6501122   -1.3124583
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -1.7096361   -2.0052091   -1.4140632
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                -1.6252654   -1.7559799   -1.4945510
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.2727631   -1.2977881   -1.2477381
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.4431766   -1.4882465   -1.3981066
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.3160860   -1.3579088   -1.2742631
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.5021906   -1.5944919   -1.4098893
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -2.0003241   -2.1921584   -1.8084898
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.8958704   -2.0613202   -1.7304206
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0273834   -0.4391397    0.3843728
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0608094   -0.1255579    0.2471767
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -2.2835292   -2.7988866   -1.7681718
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -1.8005580   -1.9299456   -1.6711703
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -1.2398844   -1.6034609   -0.8763080
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -1.2604936   -1.3893051   -1.1316820
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -1.6280090   -1.8043582   -1.4516598
24 months   ki0047075b-MAL-ED     PERU         0                    NA                -1.8137055   -1.9696565   -1.6577546
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.8944389   -1.9889097   -1.7999681
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.8928781   -2.0900971   -1.6956591
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -1.9710433   -2.2423964   -1.6996901
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -1.9444859   -2.1008152   -1.7881567
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -2.0093527   -2.0385625   -1.9801430
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -2.0172275   -2.0680942   -1.9663607
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.7628738   -1.8046577   -1.7210898
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.8215703   -1.8995110   -1.7436296


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.0317316   -1.1618799   -0.9015833
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.7263429   -0.8876385   -0.5650472
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                -1.0250526   -1.1724135   -0.8776918
Birth       ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.6964706   -0.8552823   -0.5376589
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.9311719   -1.0458986   -0.8164451
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.5502914   -1.5696478   -1.5309349
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.5207432   -1.6058630   -1.4356233
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.2140355   -1.3320337   -1.0960372
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -1.2193606   -1.3390323   -1.0996890
6 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.5595745   -0.6727496   -0.4463993
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                -1.3092999   -1.4165606   -1.2020392
6 months    ki1000109-EE          PAKISTAN     NA                   NA                -2.2004704   -2.3234073   -2.0775336
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.3352045   -1.4146382   -1.2557708
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3104400   -1.3338132   -1.2870668
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.3574771   -1.3964060   -1.3185482
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.9532775   -2.0781247   -1.8284303
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -1.8466071   -1.9736347   -1.7195796
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -1.2744493   -1.3952297   -1.1536689
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                -1.7294949   -1.8488722   -1.6101177
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.8951389   -1.9810871   -1.8091907
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -1.9605820   -2.1001715   -1.8209925
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -2.0122091   -2.0399540   -1.9844641
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.7762003   -1.8148628   -1.7375378


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0737386   -0.3371270    0.1896498
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0864828   -0.3634463    0.5364119
Birth       ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA        0                    1                  0.2418843   -0.4293307    0.9130992
Birth       ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL        0                    1                 -0.3754527   -0.8966737    0.1457684
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.0327335   -0.2504005    0.1849335
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0792041   -0.1116318   -0.0467764
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1316674   -0.3291505    0.0658157
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1294429   -0.3717333    0.1128475
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.1791823   -0.6087039    0.2503394
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                  0.4760449   -0.1687340    1.1208239
6 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL        0                    1                  0.2153840   -0.1466512    0.5774193
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.2372461   -0.4512027   -0.0232895
6 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                  0.4286684    0.1785944    0.6787423
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1962143   -0.3867721   -0.0056565
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0843707   -0.2390855    0.4078268
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.1704134   -0.2172296   -0.1235973
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1861046   -0.2856511   -0.0865581
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.1044537   -0.1498091    0.3587165
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0881929   -0.3684430    0.5448287
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.4829712   -0.0480064    1.0139489
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.0206091   -0.4067369    0.3655187
24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                 -0.1856966   -0.4160705    0.0446774
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0015608   -0.2171126    0.2202343
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0265573   -0.2867022    0.3398168
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0078747   -0.0595233    0.0437738
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0586966   -0.1417767    0.0243836


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0354059   -0.1635020    0.0926902
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1213419   -0.2631993    0.5058831
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                 0.2073105   -0.4131390    0.8277599
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                -0.3501582   -0.8073085    0.1069920
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.0186453   -0.1485426    0.1112520
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0201744   -0.0278407   -0.0125082
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0238718   -0.0607130    0.0129694
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0613339   -0.1763146    0.0536467
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.1472874   -0.5056690    0.2110941
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.4445690   -0.1536638    1.0428018
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1980450   -0.1214563    0.5175462
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.1367620   -0.2626760   -0.0108480
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.1760428    0.0711329    0.2809526
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0501335   -0.1005671    0.0003002
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0700405   -0.1985627    0.3386437
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0376769   -0.0479712   -0.0273825
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0413911   -0.0629066   -0.0198757
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0470466   -0.0727676    0.1668609
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0692178   -0.3109158    0.4493514
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.4369221   -0.0572170    0.9310611
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0345649   -0.3753041    0.3061742
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.1014860   -0.2359571    0.0329851
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0007000   -0.0547439    0.0533440
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0104612   -0.2494230    0.2703454
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0028564   -0.0141629    0.0084502
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0133265   -0.0307761    0.0041230
