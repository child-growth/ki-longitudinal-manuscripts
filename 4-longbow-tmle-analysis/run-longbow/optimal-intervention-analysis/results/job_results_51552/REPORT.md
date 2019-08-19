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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
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
* month
* brthmon
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
* delta_month
* delta_brthmon
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

agecat      studyid                    country                        exclfeed36    n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 62     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                181     243
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 13     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                172     185
Birth       ki0047075b-MAL-ED          INDIA                          1                  5     198
Birth       ki0047075b-MAL-ED          INDIA                          0                193     198
Birth       ki0047075b-MAL-ED          NEPAL                          1                 11     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                161     172
Birth       ki0047075b-MAL-ED          PERU                           1                 15     273
Birth       ki0047075b-MAL-ED          PERU                           0                258     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                236     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                120     121
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       3
Birth       ki1000108-IRC              INDIA                          1                  0       4
Birth       ki1000108-IRC              INDIA                          0                  4       4
Birth       ki1000109-EE               PAKISTAN                       1                  1       2
Birth       ki1000109-EE               PAKISTAN                       0                  1       2
Birth       ki1101329-Keneba           GAMBIA                         1                363    1252
Birth       ki1101329-Keneba           GAMBIA                         0                889    1252
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              11155   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2791   13946
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                580     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                147     727
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 63     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                177     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                192     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  7     236
6 months    ki0047075b-MAL-ED          INDIA                          0                229     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 15     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                221     236
6 months    ki0047075b-MAL-ED          PERU                           1                 16     271
6 months    ki0047075b-MAL-ED          PERU                           0                255     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                254     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                246     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
6 months    ki1000108-IRC              INDIA                          1                  0       4
6 months    ki1000108-IRC              INDIA                          0                  4       4
6 months    ki1000109-EE               PAKISTAN                       1                222     367
6 months    ki1000109-EE               PAKISTAN                       0                145     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                140     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                442     582
6 months    ki1101329-Keneba           GAMBIA                         1                507    1790
6 months    ki1101329-Keneba           GAMBIA                         0               1283    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                423     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                103     526
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              10685   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               2690   13375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3243    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                928    4171
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 58     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                153     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                153     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  6     227
24 months   ki0047075b-MAL-ED          INDIA                          0                221     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 14     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                214     228
24 months   ki0047075b-MAL-ED          PERU                           1                 12     200
24 months   ki0047075b-MAL-ED          PERU                           0                188     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                238     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                213     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
24 months   ki1000108-IRC              INDIA                          1                  0       4
24 months   ki1000108-IRC              INDIA                          0                  4       4
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                148     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                428     576
24 months   ki1101329-Keneba           GAMBIA                         1                424    1394
24 months   ki1101329-Keneba           GAMBIA                         0                970    1394
24 months   ki1113344-GMS-Nepal        NEPAL                          1                369     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 87     456
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5283    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1410    6693
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3140    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                883    4023


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/585f7790-3a5e-4fa9-91f7-8fb0f074f199/6c39cf7d-c341-4566-bc78-8ba759e5f4e9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.9887910   -1.1856493   -0.7919328
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.7462005   -1.1655470   -0.3268541
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -1.1913290   -1.3475012   -1.0351568
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.0430361   -0.3189879    0.2329156
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -1.1577325   -1.2929287   -1.0225362
Birth       ki1101329-Keneba      GAMBIA       optimal              observed          -0.0089627   -0.1103254    0.0923999
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.5241290   -1.5507713   -1.4974867
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.4906189   -1.5809308   -1.4003070
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.3549108   -1.5508649   -1.1589566
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.4711166   -0.1828786    1.1251119
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -1.4459315   -1.8554930   -1.0363699
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.1791867   -0.4919686    0.1335951
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -1.3769335   -1.6185327   -1.1353342
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -1.8811283   -2.0643629   -1.6978937
6 months    ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -1.0730927   -1.1913594   -0.9548259
6 months    ki1101329-Keneba      GAMBIA       optimal              observed          -0.9643624   -1.0495215   -0.8792034
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.2930124   -1.3826621   -1.2033627
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -1.5695138   -1.8021603   -1.3368674
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.2800848   -1.3065147   -1.2536549
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.3305928   -1.3767368   -1.2844489
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.8882039   -2.0332481   -1.7431597
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.1162747   -0.3079707    0.0754214
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -1.8212733   -1.9467276   -1.6958190
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -1.3938928   -1.6825357   -1.1052500
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -2.0079015   -2.2183296   -1.7974734
24 months   ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -1.4866211   -1.5894244   -1.3838179
24 months   ki1101329-Keneba      GAMBIA       optimal              observed          -1.5249525   -1.6162182   -1.4336868
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.8349369   -2.0007490   -1.6691249
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -1.9557521   -2.1290005   -1.7825036
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.9859695   -2.0337587   -1.9381802
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.7551845   -1.7985089   -1.7118602


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.0414815   -1.1687478   -0.9142151
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed          -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED     INDIA        observed             observed          -1.0235354   -1.1657122   -0.8813585
Birth       ki0047075b-MAL-ED     NEPAL        observed             observed          -0.7052907   -0.8627483   -0.5478331
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.9231136   -1.0355489   -0.8106782
Birth       ki1101329-Keneba      GAMBIA       observed             observed           0.0325958   -0.0384289    0.1036205
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.5333680   -1.5553430   -1.5113930
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.5200688   -1.6064560   -1.4336815
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.2006806   -1.3182323   -1.0831288
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED     NEPAL        observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED     PERU         observed             observed          -1.3173678   -1.4250795   -1.2096560
6 months    ki1000109-EE          PAKISTAN     observed             observed          -2.2009401   -2.3240630   -2.0778171
6 months    ki1017093b-PROVIDE    BANGLADESH   observed             observed          -1.0807417   -1.1562973   -1.0051861
6 months    ki1101329-Keneba      GAMBIA       observed             observed          -0.9355822   -0.9858754   -0.8852889
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.3150063   -1.3948049   -1.2352077
6 months    ki1148112-LCNI-5      MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3121772   -1.3366725   -1.2876819
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.3602409   -1.3996637   -1.3208182
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.9363270   -2.0622735   -1.8103806
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED     NEPAL        observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED     PERU         observed             observed          -1.7430000   -1.8632412   -1.6227588
24 months   ki1017093b-PROVIDE    BANGLADESH   observed             observed          -1.5859375   -1.6693304   -1.5025446
24 months   ki1101329-Keneba      GAMBIA       observed             observed          -1.5825269   -1.6378553   -1.5271985
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.8785563   -1.9657607   -1.7913519
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -1.9605820   -2.1001715   -1.8209925
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.9946153   -2.0246928   -1.9645378
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.7766542   -1.8163158   -1.7369927


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0526904   -0.2094302    0.1040493
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.0111195   -0.3792650    0.4015040
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed           0.1677937    0.0742564    0.2613309
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.6622546   -0.9613791   -0.3631301
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.2346189    0.1401308    0.3291070
Birth       ki1101329-Keneba      GAMBIA       optimal              observed           0.0415586   -0.0310224    0.1141395
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0092390   -0.0250429    0.0065649
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0294499   -0.0672082    0.0083085
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.1542302   -0.0018679    0.3103283
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.4200959   -1.0385215    0.1983297
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed           0.2255642   -0.1611905    0.6123189
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.3818726   -0.6830409   -0.0807043
6 months    ki0047075b-MAL-ED     PERU         optimal              observed           0.0595657   -0.1484258    0.2675571
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.3198117   -0.4713731   -0.1682504
6 months    ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.0076490   -0.1010258    0.0857277
6 months    ki1101329-Keneba      GAMBIA       optimal              observed           0.0287803   -0.0429920    0.1005526
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0219940   -0.0804103    0.0364223
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -0.0700818   -0.2603043    0.1201407
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0320924   -0.0439198   -0.0202650
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0296481   -0.0588121   -0.0004841
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0481231   -0.1424516    0.0462054
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.1581090    0.0606573    0.2555607
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0245417   -0.0565598    0.0074765
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed           0.1186735   -0.1681799    0.4055270
24 months   ki0047075b-MAL-ED     PERU         optimal              observed           0.2649015    0.0713674    0.4584357
24 months   ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.0993164   -0.1627101   -0.0359227
24 months   ki1101329-Keneba      GAMBIA       optimal              observed          -0.0575744   -0.1357263    0.0205775
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0436194   -0.1836735    0.0964348
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -0.0048300   -0.1481954    0.1385355
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0086458   -0.0428355    0.0255439
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0214697   -0.0410317   -0.0019077
