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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                125     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                118     243
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 29     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                156     185
Birth       ki0047075b-MAL-ED          INDIA                          1                 16     198
Birth       ki0047075b-MAL-ED          INDIA                          0                182     198
Birth       ki0047075b-MAL-ED          NEPAL                          1                 26     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                146     172
Birth       ki0047075b-MAL-ED          PERU                           1                118     273
Birth       ki0047075b-MAL-ED          PERU                           0                155     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                233     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                120     121
Birth       ki1000109-EE               PAKISTAN                       1                  1       2
Birth       ki1000109-EE               PAKISTAN                       0                  1       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              11176   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2770   13946
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                582     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                145     727
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
6 months    ki1000109-EE               PAKISTAN                       1                222     367
6 months    ki1000109-EE               PAKISTAN                       0                145     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                423     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                103     526
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              10705   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               2670   13375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3256    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                915    4171
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
24 months   ki1113344-GMS-Nepal        NEPAL                          1                369     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 87     456
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5293    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1400    6693
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3153    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                870    4023


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
![](/tmp/9a07d427-5503-4a6f-b956-477985276949/cbbcffe2-4804-487d-9c5a-95bfe87dbf0a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9a07d427-5503-4a6f-b956-477985276949/cbbcffe2-4804-487d-9c5a-95bfe87dbf0a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9a07d427-5503-4a6f-b956-477985276949/cbbcffe2-4804-487d-9c5a-95bfe87dbf0a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.9877426   -1.1566021   -0.8188830
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0985182   -1.2923455   -0.9046909
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.9057733   -1.3302850   -0.4812615
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.7487321   -0.9197931   -0.5776711
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                -1.3440164   -1.9584342   -0.7295986
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                -0.9882088   -1.1323876   -0.8440300
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                -0.8789370   -1.3101436   -0.4477303
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                -0.7268209   -0.8982618   -0.5553800
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.8849511   -1.0512715   -0.7186307
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.9352388   -1.0789146   -0.7915630
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.5166508   -1.5400483   -1.4932534
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.5847362   -1.6239854   -1.5454870
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.4907519   -1.5810511   -1.4004527
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.6357501   -1.8215498   -1.4499503
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.1330050   -1.2891880   -0.9768220
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.2686320   -1.4501468   -1.0871172
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.2233447   -0.1494344    0.5961237
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0311041   -0.1222384    0.1844465
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -1.3374720   -1.9477713   -0.7271727
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -1.1873241   -1.3051536   -1.0694946
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.6545629   -0.9887009   -0.3204249
6 months    ki0047075b-MAL-ED     NEPAL        0                    NA                -0.5502596   -0.6702629   -0.4302563
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -1.1546549   -1.3010693   -1.0082404
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -1.4364114   -1.5907259   -1.2820969
6 months    ki1000109-EE          PAKISTAN     1                    NA                -2.4005912   -2.5548779   -2.2463046
6 months    ki1000109-EE          PAKISTAN     0                    NA                -1.8951921   -2.0896320   -1.7007522
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.2699738   -1.3563915   -1.1835561
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.5026575   -1.7034187   -1.3018963
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -1.7481811   -2.0392353   -1.4571268
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                -1.6285297   -1.7598675   -1.4971918
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.2753811   -1.3018596   -1.2489027
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.4444996   -1.4959467   -1.3930525
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.3195361   -1.3618121   -1.2772602
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.4925026   -1.5854645   -1.3995407
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.9870004   -2.1694280   -1.8045728
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.8749174   -2.0472651   -1.7025697
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.2303791   -0.6241082    0.1633500
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0573164   -0.1304600    0.2450927
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -2.3848290   -2.9072333   -1.8624247
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -1.7937647   -1.9221926   -1.6653368
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -1.5197779   -1.8226803   -1.2168755
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -1.2688494   -1.3982709   -1.1394278
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -1.6115437   -1.7802029   -1.4428846
24 months   ki0047075b-MAL-ED     PERU         0                    NA                -1.8589419   -2.0299701   -1.6879136
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.8593359   -1.9520524   -1.7666194
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.9451557   -2.1774702   -1.7128412
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -2.0408420   -2.3150961   -1.7665878
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -1.9495462   -2.1064301   -1.7926623
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.9854609   -2.0173241   -1.9535978
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -2.0087977   -2.0725433   -1.9450521
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.7651182   -1.8086424   -1.7215939
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.8207840   -1.9003028   -1.7412651


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.0414815   -1.1687478   -0.9142151
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                -1.0235354   -1.1657122   -0.8813585
Birth       ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.7052907   -0.8627483   -0.5478331
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.9231136   -1.0355489   -0.8106782
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.5333680   -1.5553430   -1.5113930
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.5200688   -1.6064560   -1.4336815
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.2006806   -1.3182323   -1.0831288
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                -1.3173678   -1.4250795   -1.2096560
6 months    ki1000109-EE          PAKISTAN     NA                   NA                -2.2009401   -2.3240630   -2.0778171
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.3150063   -1.3948049   -1.2352077
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3121772   -1.3366725   -1.2876819
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.3602409   -1.3996637   -1.3208182
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.9363270   -2.0622735   -1.8103806
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                -1.7430000   -1.8632412   -1.6227588
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.8785563   -1.9657607   -1.7913519
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -1.9605820   -2.1001715   -1.8209925
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.9946153   -2.0246928   -1.9645378
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.7766542   -1.8163158   -1.7369927


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1107756   -0.3682250    0.1466737
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                  0.1570411   -0.3024662    0.6165485
Birth       ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA        0                    1                  0.3558076   -0.2758117    0.9874269
Birth       ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL        0                    1                  0.1521161   -0.3157467    0.6199788
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.0502877   -0.2616569    0.1610816
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0680853   -0.1086780   -0.0274927
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1449982   -0.3371431    0.0471468
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1356270   -0.3757785    0.1045245
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.1922406   -0.5926492    0.2081681
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                  0.1501479   -0.4721826    0.7724783
6 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL        0                    1                  0.1043033   -0.2505575    0.4591640
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.2817565   -0.4953680   -0.0681451
6 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                  0.5053992    0.2569698    0.7538285
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.2326837   -0.4512795   -0.0140880
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.1196514   -0.1988184    0.4381212
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.1691185   -0.2236128   -0.1146242
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1729665   -0.2732914   -0.0726416
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.1120830   -0.1395068    0.3636727
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.2876955   -0.1527636    0.7281545
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.5910643    0.0537129    1.1284156
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                  0.2509285   -0.0794080    0.5812650
24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                 -0.2473982   -0.4888568   -0.0059395
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0858198   -0.3360974    0.1644578
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0912958   -0.2256909    0.4082824
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0233367   -0.0902626    0.0435891
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0556658   -0.1414492    0.0301176


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0537389   -0.1785638    0.0710859
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1706922   -0.2180723    0.5594567
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                 0.3204811   -0.2612829    0.9022450
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1736463   -0.2306686    0.5779612
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.0381624   -0.1587458    0.0824209
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0167172   -0.0255746   -0.0078597
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0293168   -0.0670785    0.0084448
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0676756   -0.1784379    0.0430867
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.1723239   -0.5018122    0.1571644
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.1171048   -0.4602746    0.6944841
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0935036   -0.2151527    0.4021599
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.1627129   -0.2791821   -0.0462437
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.1996512    0.0989536    0.3003487
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0450326   -0.0878615   -0.0022036
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.1085855   -0.1556433    0.3728143
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0367961   -0.0482497   -0.0253424
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0407048   -0.0629603   -0.0184494
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0506733   -0.0611495    0.1624962
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.2722134   -0.0937824    0.6382092
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.5390140    0.0389442    1.0390838
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.2445586   -0.0426704    0.5317875
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.1314563   -0.2640640    0.0011514
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0192204   -0.0678755    0.0294348
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0802599   -0.1803225    0.3408424
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0091543   -0.0230775    0.0047689
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0115361   -0.0302600    0.0071878
