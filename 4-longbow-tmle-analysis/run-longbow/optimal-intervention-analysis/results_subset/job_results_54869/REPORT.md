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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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

agecat      studyid                    country                        predfeed36    n_cell      n
----------  -------------------------  -----------------------------  -----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 69    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                139    208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  7     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 55     62
Birth       ki0047075b-MAL-ED          INDIA                          1                  4     40
Birth       ki0047075b-MAL-ED          INDIA                          0                 36     40
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                 24     25
Birth       ki0047075b-MAL-ED          PERU                           1                 57    218
Birth       ki0047075b-MAL-ED          PERU                           0                161    218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  2    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                102    104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111    111
Birth       ki1000109-EE               PAKISTAN                       1                  2      6
Birth       ki1000109-EE               PAKISTAN                       0                  4      6
Birth       ki1113344-GMS-Nepal        NEPAL                          1                396    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 95    491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               6746   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1873   8619
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1714   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                414   2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 81    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                159    240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 25    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                184    209
6 months    ki0047075b-MAL-ED          INDIA                          1                 17    233
6 months    ki0047075b-MAL-ED          INDIA                          0                216    233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  8    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                227    235
6 months    ki0047075b-MAL-ED          PERU                           1                 72    272
6 months    ki0047075b-MAL-ED          PERU                           0                200    272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                247    250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238    243
6 months    ki1000109-EE               PAKISTAN                       1                  4      9
6 months    ki1000109-EE               PAKISTAN                       0                  5      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168    168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105    527
6 months    ki1148112-LCNI-5           MALAWI                         1                 47    272
6 months    ki1148112-LCNI-5           MALAWI                         0                225    272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6576   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1959   8535
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3252   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                936   4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 69    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                143    212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 20    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                149    169
24 months   ki0047075b-MAL-ED          INDIA                          1                 17    224
24 months   ki0047075b-MAL-ED          INDIA                          0                207    224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  8    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                219    227
24 months   ki0047075b-MAL-ED          PERU                           1                 53    201
24 months   ki0047075b-MAL-ED          PERU                           0                148    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                232    235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209    213
24 months   ki1000109-EE               PAKISTAN                       1                  0      3
24 months   ki1000109-EE               PAKISTAN                       0                  3      3
24 months   ki1113344-GMS-Nepal        NEPAL                          1                362    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83    445
24 months   ki1148112-LCNI-5           MALAWI                         1                 34    184
24 months   ki1148112-LCNI-5           MALAWI                         0                150    184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3320   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                997   4317
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3144   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                891   4035


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/005c2dab-3e66-4a1e-b801-48eeb2d1a938/41ee57a4-bf52-462c-a675-074a3c56fb6e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.9804230   -1.2191253   -0.7417206
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.4981679    0.1711769    0.8251590
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed           0.1502241   -0.0636569    0.3641052
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.1512022   -1.2671140   -1.0352905
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.7586502   -0.8113263   -0.7059741
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.6892837   -0.7450914   -0.6334760
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.3276640   -0.5157267   -0.1396013
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed           1.4926664    1.0898819    1.8954510
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.2958525   -0.8222584    0.2305534
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed           0.1288608   -0.0051326    0.2628541
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed           1.3101514    1.0729559    1.5473469
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.8214321    1.0805655    2.5622987
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.6236644   -0.7287438   -0.5185851
6 months    ki1148112-LCNI-5      MALAWI                         optimal              observed           0.2667597    0.1144613    0.4190582
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.5739041   -0.6125120   -0.5352962
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.3439124   -0.3901291   -0.2976958
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.7519553   -0.9081290   -0.5957816
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.3068501   -0.0208427    0.6345428
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.7398507   -1.1296167   -0.3500847
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.3654383   -0.4821527   -0.2487239
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed           0.2587974    0.0788123    0.4387826
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.0742120   -1.1759600   -0.9724640
24 months   ki1148112-LCNI-5      MALAWI                         optimal              observed          -0.2335424   -0.4189082   -0.0481766
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.3093235   -1.3759699   -1.2426771
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.2339374   -1.2906471   -1.1772277


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.9480769   -1.0934921   -0.8026617
Birth       ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED     PERU                           observed             observed          -0.0458257   -0.1696487    0.0779973
Birth       ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.1085743   -1.2077878   -1.0093609
Birth       kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -0.7892308   -0.8133344   -0.7651272
Birth       kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -0.7018985   -0.7560164   -0.6477806
6 months    ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.1354583   -0.2647102   -0.0062065
6 months    ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED     INDIA                          observed             observed          -0.7161910   -0.8437667   -0.5886153
6 months    ki0047075b-MAL-ED     NEPAL                          observed             observed           0.1140284   -0.0176364    0.2456931
6 months    ki0047075b-MAL-ED     PERU                           observed             observed           1.0511642    0.9291821    1.1731463
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5508093    0.4191033    0.6825154
6 months    ki1113344-GMS-Nepal   NEPAL                          observed             observed          -0.6001075   -0.6890924   -0.5111227
6 months    ki1148112-LCNI-5      MALAWI                         observed             observed           0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -0.5995202   -0.6251579   -0.5738825
6 months    kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -0.3960017   -0.4356255   -0.3563778
24 months   ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED     INDIA                          observed             observed          -0.9581250   -1.0746982   -0.8415518
24 months   ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.3725991   -0.4867052   -0.2584930
24 months   ki0047075b-MAL-ED     PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.1236255   -1.2167712   -1.0304797
24 months   ki1148112-LCNI-5      MALAWI                         observed             observed          -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.3352235   -1.3688736   -1.3015735
24 months   kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.2344089   -1.2708428   -1.1979750


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.0323460   -0.1781443    0.2428364
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.0952647   -0.2260749    0.0355455
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.1960498   -0.3832618   -0.0088379
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed           0.0426279   -0.0161922    0.1014480
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0305806   -0.0767464    0.0155853
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0126148   -0.0405211    0.0152916
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.1922057    0.0570541    0.3273573
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.5205891   -0.9085840   -0.1325942
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.4203385   -0.9287705    0.0880935
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0148324   -0.0399511    0.0102863
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed          -0.2589872   -0.4630565   -0.0549178
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2706228   -2.0070589   -0.5341866
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed           0.0235569   -0.0322358    0.0793496
6 months    ki1148112-LCNI-5      MALAWI                         optimal              observed           0.1257403    0.0148056    0.2366749
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0256161   -0.0555134    0.0042813
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0520892   -0.0741007   -0.0300778
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.0673371   -0.1498057    0.0151314
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.1557732   -0.1214335    0.4329799
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.2182743   -0.5983609    0.1618123
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0071608   -0.0261347    0.0118131
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -0.1475992   -0.2901832   -0.0050153
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0494135   -0.1139776    0.0151507
24 months   ki1148112-LCNI-5      MALAWI                         optimal              observed           0.1564772    0.0330002    0.2799542
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0259000   -0.0842117    0.0324116
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0004715   -0.0434125    0.0424694
