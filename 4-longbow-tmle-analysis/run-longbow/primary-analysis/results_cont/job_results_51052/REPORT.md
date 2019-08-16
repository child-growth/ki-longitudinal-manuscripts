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

**Intervention Variable:** earlybf

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
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
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

agecat      studyid                   country                        earlybf    n_cell       n
----------  ------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1             152     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     0              88     240
Birth       ki0047075b-MAL-ED         BRAZIL                         1              79     183
Birth       ki0047075b-MAL-ED         BRAZIL                         0             104     183
Birth       ki0047075b-MAL-ED         INDIA                          1             123     202
Birth       ki0047075b-MAL-ED         INDIA                          0              79     202
Birth       ki0047075b-MAL-ED         NEPAL                          1              77     168
Birth       ki0047075b-MAL-ED         NEPAL                          0              91     168
Birth       ki0047075b-MAL-ED         PERU                           1             211     279
Birth       ki0047075b-MAL-ED         PERU                           0              68     279
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1             154     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0              91     245
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             108     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              10     118
Birth       ki1000109-EE              PAKISTAN                       1               1       1
Birth       ki1000109-EE              PAKISTAN                       0               0       1
Birth       ki1000304b-SAS-CompFeed   INDIA                          1              13     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          0             145     158
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1              19      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               4      23
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1            6141   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0            5372   11513
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1              93   15648
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           15555   15648
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1             475     683
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0             208     683
6 months    ki0047075b-MAL-ED         BANGLADESH                     1             147     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0              93     240
6 months    ki0047075b-MAL-ED         BRAZIL                         1              95     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0             114     209
6 months    ki0047075b-MAL-ED         INDIA                          1             140     236
6 months    ki0047075b-MAL-ED         INDIA                          0              96     236
6 months    ki0047075b-MAL-ED         NEPAL                          1              96     236
6 months    ki0047075b-MAL-ED         NEPAL                          0             140     236
6 months    ki0047075b-MAL-ED         PERU                           1             202     273
6 months    ki0047075b-MAL-ED         PERU                           0              71     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             156     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              94     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247
6 months    ki1000109-EE              PAKISTAN                       1              69     376
6 months    ki1000109-EE              PAKISTAN                       0             307     376
6 months    ki1000304b-SAS-CompFeed   INDIA                          1              97    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0            1237    1334
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             619     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              96     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1             151     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0             359     510
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            3951    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            3388    7339
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1              36   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0           16748   16784
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1            3095    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1738    4833
24 months   ki0047075b-MAL-ED         BANGLADESH                     1             128     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0              83     211
24 months   ki0047075b-MAL-ED         BRAZIL                         1              80     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0              89     169
24 months   ki0047075b-MAL-ED         INDIA                          1             134     227
24 months   ki0047075b-MAL-ED         INDIA                          0              93     227
24 months   ki0047075b-MAL-ED         NEPAL                          1              95     228
24 months   ki0047075b-MAL-ED         NEPAL                          0             133     228
24 months   ki0047075b-MAL-ED         PERU                           1             149     201
24 months   ki0047075b-MAL-ED         PERU                           0              52     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             144     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              91     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             443     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1             136     454
24 months   ki1113344-GMS-Nepal       NEPAL                          0             318     454
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             198     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             172     370
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            8602    8603
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            3031    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1704    4735


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/2dd6183e-d59c-4a28-b80c-a3aea0cbff09/887e0891-aadf-4cf0-ab4c-9d75f22dfe93/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2dd6183e-d59c-4a28-b80c-a3aea0cbff09/887e0891-aadf-4cf0-ab4c-9d75f22dfe93/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2dd6183e-d59c-4a28-b80c-a3aea0cbff09/887e0891-aadf-4cf0-ab4c-9d75f22dfe93/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.9115348   -1.0811372   -0.7419325
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.0846758   -1.3134870   -0.8558646
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.4766608    0.2296575    0.7236641
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.3663257    0.1361551    0.5964963
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.0050271   -1.1827865   -0.8272677
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -1.1551432   -1.3807193   -0.9295670
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.9435769   -1.1399750   -0.7471787
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.8463506   -1.0276731   -0.6650281
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.1299591   -0.2556859   -0.0042323
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                 0.1009101   -0.1271258    0.3289460
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0449197   -0.1264112    0.2162507
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.1802888   -0.4499145    0.0893369
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7914545    0.5779727    1.0049363
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.9327154    0.5396996    1.3257312
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1491040   -0.8585823    0.5603743
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.2731085   -0.5268821   -0.0193348
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.4638236   -0.4990919   -0.4285554
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.5943761   -0.6322711   -0.5564812
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.8013478   -0.8553501   -0.7473456
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.7236300   -0.7439845   -0.7032756
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.3318576   -0.4265559   -0.2371592
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.4516051   -0.5876324   -0.3155777
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0990928   -0.2633671    0.0651814
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.1861989   -0.4080107    0.0356129
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 1.1283495    0.8946589    1.3620401
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.8925592    0.6651205    1.1199978
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.7565203   -0.9242801   -0.5887605
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.6294291   -0.8194743   -0.4393838
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0186965   -0.1903853    0.2277783
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.1986536    0.0344175    0.3628897
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 1.0075933    0.8638676    1.1513190
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                 1.1695355    0.9435529    1.3955181
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.5508109    0.3504564    0.7511654
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.5619859    0.3194965    0.8044753
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.4945330    0.3544156    0.6346504
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6382279    0.2857654    0.9906904
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.6908678   -0.9674493   -0.4142864
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -0.7305822   -0.8566538   -0.6045107
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.6246627   -1.1188936   -0.1304317
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.6709692   -0.8041478   -0.5377907
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0376440   -0.0477630    0.1230511
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0556092   -0.2635219    0.1523036
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.4519195   -0.6297983   -0.2740408
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.6400049   -0.7475795   -0.5324304
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.3042613    0.2670296    0.3414930
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.2934452    0.2518783    0.3350121
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.6872037   -0.7180760   -0.6563315
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.5933225   -0.6133613   -0.5732837
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.3896589   -0.4342936   -0.3450242
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.3956268   -0.4569993   -0.3342544
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.7798489   -0.9380878   -0.6216100
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.8693691   -1.0652467   -0.6734915
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.3563739    0.0498058    0.6629421
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.5205633    0.2498993    0.7912273
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.9793475   -1.1351060   -0.8235889
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.9138989   -1.0872594   -0.7405385
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.4966134   -0.6740242   -0.3192025
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.2906153   -0.4365155   -0.1447152
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0807234   -0.0665421    0.2279888
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.2110707    0.0158307    0.4063107
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.4316856    0.2784641    0.5849072
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.4309428    0.2218728    0.6400128
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0785515   -0.0567499    0.2138529
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1002501   -0.4358880    0.2353878
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.6518753   -0.7525746   -0.5511760
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.4130634   -0.6808481   -0.1452786
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.0740073   -1.2378533   -0.9101613
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.1608665   -1.2729441   -1.0487889
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -1.1581899   -1.3064239   -1.0099559
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -1.2513251   -1.4214684   -1.0811819
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.2342055   -1.2743973   -1.1940137
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.2061506   -1.2602727   -1.1520284


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.9606667   -1.0969945   -0.8243389
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.0653960   -1.2046419   -0.9261502
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0415102   -0.1884529    0.1054324
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7932203    0.5962220    0.9902187
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.2577848   -0.5195618    0.0039922
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.5258212   -0.5533316   -0.4983109
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.7240919   -0.7439633   -0.7042204
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.1337535   -0.2628178   -0.0046891
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                 1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.5499200    0.3963965    0.7034435
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                -0.7212766   -0.8346857   -0.6078675
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.5853922   -0.6772967   -0.4934876
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                 0.3021399    0.2744461    0.3298338
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.8157109   -0.9379759   -0.6934459
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.4331915    0.3126798    0.5537032
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.1298678   -1.2212513   -1.0384844
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -1.1963784   -1.3049250   -1.0878318
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.1731409   -0.4595307    0.1132489
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.1103351   -0.4337567    0.2130864
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                 -0.1501161   -0.4375016    0.1372695
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0972262   -0.1541585    0.3486110
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                  0.2308692   -0.0296256    0.4913641
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.2252086   -0.5454746    0.0950575
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1412609   -0.3066825    0.5892043
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.1240045   -0.6739494    0.4259405
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.1305525   -0.1782832   -0.0828218
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0777178    0.0196788    0.1357568
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.1197475   -0.2785405    0.0390455
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0871061   -0.3635738    0.1893617
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.2357903   -0.5616134    0.0900327
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                  0.1270912   -0.1268398    0.3810222
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1799571   -0.0832057    0.4431198
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.1619422   -0.1062137    0.4300981
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0111750   -0.3039311    0.3262812
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1436949   -0.2363898    0.5237796
6 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 -0.0397144   -0.3440084    0.2645796
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0463066   -0.5191029    0.4264897
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0932532   -0.3177095    0.1312031
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.1880854   -0.3962175    0.0200467
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0108160   -0.0663241    0.0446920
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0938812    0.0570190    0.1307434
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0059679   -0.0788595    0.0669236
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0895202   -0.3402305    0.1611901
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.1641894   -0.2395111    0.5678898
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0654485   -0.1681622    0.2990593
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.2059980   -0.0229606    0.4349567
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.1303473   -0.1129065    0.3736010
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0007429   -0.2611327    0.2596470
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1788016   -0.5411860    0.1835829
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2388119   -0.0469008    0.5245246
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0868592   -0.2856492    0.1119308
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0931352   -0.3191995    0.1329291
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0280549   -0.0397209    0.0958308


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0491318   -0.1541513    0.0558876
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0727810   -0.2562462    0.1106842
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0603689   -0.1733229    0.0525850
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0391126   -0.0985969    0.1768221
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.0563749   -0.0075304    0.1202802
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0864299   -0.2053787    0.0325188
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0017658   -0.0318347    0.0353664
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1086808   -0.6338694    0.4165078
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0619976   -0.0855252   -0.0384700
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0772560    0.0206673    0.1338446
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0364587   -0.0854149    0.0124975
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0346607   -0.1380055    0.0686842
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.1566270   -0.3389831    0.0257291
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0531234   -0.0503729    0.1566197
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0923487   -0.0650258    0.2497231
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0468023   -0.0239501    0.1175547
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0008909   -0.1187254    0.1169436
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0225183   -0.0409310    0.0859676
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0304088   -0.2830638    0.2222463
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0410457   -0.4823575    0.4002660
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0078818   -0.0379537    0.0221902
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1334726   -0.2820081    0.0150628
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0021213   -0.0279562    0.0237135
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0936876    0.0577369    0.1296383
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0001466   -0.0262601    0.0259669
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0358620   -0.1333377    0.0616137
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0902533   -0.1233066    0.3038132
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0270567   -0.0683503    0.1224637
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1201660   -0.0141288    0.2544608
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0391771   -0.0245830    0.1029372
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0015059   -0.0931995    0.0962112
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0284580   -0.0861751    0.0292591
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0415251    0.0012568    0.0817933
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0558605   -0.1967014    0.0849804
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0381885   -0.1441215    0.0677445
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0110967   -0.0131828    0.0353763
