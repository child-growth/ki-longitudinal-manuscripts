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
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
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
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
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
Birth       ki0047075b-MAL-ED         BANGLADESH                     1             147     230
Birth       ki0047075b-MAL-ED         BANGLADESH                     0              83     230
Birth       ki0047075b-MAL-ED         BRAZIL                         1              28      65
Birth       ki0047075b-MAL-ED         BRAZIL                         0              37      65
Birth       ki0047075b-MAL-ED         INDIA                          1              32      46
Birth       ki0047075b-MAL-ED         INDIA                          0              14      46
Birth       ki0047075b-MAL-ED         NEPAL                          1              14      27
Birth       ki0047075b-MAL-ED         NEPAL                          0              13      27
Birth       ki0047075b-MAL-ED         PERU                           1             175     233
Birth       ki0047075b-MAL-ED         PERU                           0              58     233
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1              69     111
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0              42     111
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             111     125
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              14     125
Birth       ki1000109-EE              PAKISTAN                       1              44     229
Birth       ki1000109-EE              PAKISTAN                       0             185     229
Birth       ki1000304b-SAS-CompFeed   INDIA                          1              86    1207
Birth       ki1000304b-SAS-CompFeed   INDIA                          0            1121    1207
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1             634     732
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0              98     732
Birth       ki1113344-GMS-Nepal       NEPAL                          1             180     632
Birth       ki1113344-GMS-Nepal       NEPAL                          0             452     632
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1            6556   12354
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0            5798   12354
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1             236   22370
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           22134   22370
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1            1912    2823
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0             911    2823
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
6 months    ki1000109-EE              PAKISTAN                       1              68     362
6 months    ki1000109-EE              PAKISTAN                       0             294     362
6 months    ki1000304b-SAS-CompFeed   INDIA                          1              98    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0            1238    1336
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             619     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              96     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1             151     511
6 months    ki1113344-GMS-Nepal       NEPAL                          0             360     511
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            4146    7698
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            3552    7698
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1              35   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0           16776   16811
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1            3094    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1737    4831
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
24 months   ki1000109-EE              PAKISTAN                       1              32     164
24 months   ki1000109-EE              PAKISTAN                       0             132     164
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             443     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1             131     445
24 months   ki1113344-GMS-Nepal       NEPAL                          0             314     445
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             717    1406
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             689    1406
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            8631    8632
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            3042    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1710    4752


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
![](/tmp/c45ca913-7b9b-42b8-ad53-21262ea2eef4/24d53850-7fbc-4d1f-8ab0-e706ef03a637/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c45ca913-7b9b-42b8-ad53-21262ea2eef4/24d53850-7fbc-4d1f-8ab0-e706ef03a637/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c45ca913-7b9b-42b8-ad53-21262ea2eef4/24d53850-7fbc-4d1f-8ab0-e706ef03a637/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.9896354   -1.1488014   -0.8304693
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.3931673   -1.6309578   -1.1553768
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.4483051   -0.9208940    0.0242837
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.8381606   -1.2080546   -0.4682667
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.1074518   -1.4766166   -0.7382870
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -1.4522318   -2.0068230   -0.8976406
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6231553   -1.1241038   -0.1222068
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.6491029   -1.2076741   -0.0905317
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.8157199   -0.9439306   -0.6875093
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -1.0384091   -1.2287001   -0.8481181
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.5132465   -0.7285369   -0.2979562
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.6747952   -0.9748494   -0.3747410
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.1188676   -1.3348431   -0.9028920
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1116583   -1.9384268   -0.2848898
Birth       ki1000109-EE              PAKISTAN                       1                    NA                -1.7168966   -2.0148828   -1.4189104
Birth       ki1000109-EE              PAKISTAN                       0                    NA                -1.9031337   -2.1049722   -1.7012953
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.1634303   -1.4025917   -0.9242689
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4262554   -1.4888925   -1.3636182
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.9083866   -0.9835452   -0.8332280
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.8988413   -1.1015476   -0.6961351
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.9829915   -1.1247262   -0.8412567
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.0899638   -1.1871865   -0.9927411
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.4896234   -0.5193931   -0.4598537
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.4742933   -0.5056538   -0.4429328
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -2.0795464   -2.1360972   -2.0229955
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.5871599   -1.6066926   -1.5676272
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.5090946   -1.5665483   -1.4516409
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.5555475   -1.6482054   -1.4628895
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.1725322   -1.3216517   -1.0234127
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.2526042   -1.4424997   -1.0627088
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0265788   -0.2480129    0.1948553
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.1012172   -0.0895970    0.2920314
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -1.1891480   -1.3426072   -1.0356889
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -1.2273609   -1.4143316   -1.0403903
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6735031   -0.8384302   -0.5085760
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.4641724   -0.6157425   -0.3126022
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -1.3260751   -1.4528261   -1.1993242
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -1.3075716   -1.5167729   -1.0983702
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.0524384   -1.2065046   -0.8983722
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.0733413   -1.3010351   -0.8456475
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3289232   -1.4564808   -1.2013657
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.6217381   -1.9772218   -1.2662544
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -2.0547840   -2.4018716   -1.7076964
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -2.1036925   -2.2324784   -1.9749065
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.3216273   -1.6354080   -1.0078465
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4088177   -1.4845774   -1.3330581
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -1.2286362   -1.3051430   -1.1521294
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -1.0182542   -1.2153686   -0.8211397
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1439043   -1.2908175   -0.9969910
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.3835455   -1.4803237   -1.2867673
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.8335228   -0.8690347   -0.7980110
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.8928069   -0.9312013   -0.8544126
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -2.2655306   -2.3116541   -2.2194070
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.3111354   -1.3347446   -1.2875262
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.3368270   -1.3826845   -1.2909695
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.3557768   -1.4146523   -1.2969013
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.9564218   -2.1126978   -1.8001458
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.9908388   -2.2078986   -1.7737790
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0380199   -0.2958027    0.2197629
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0028280   -0.2211489    0.2268049
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -1.9387913   -2.1037497   -1.7738329
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -1.8205359   -2.0106396   -1.6304321
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -1.3403628   -1.5177835   -1.1629420
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -1.2581684   -1.4206120   -1.0957248
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -1.8117712   -1.9542143   -1.6693280
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                -1.5840013   -1.8169748   -1.3510279
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.6624502   -1.8365114   -1.4883889
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.5882091   -1.8014802   -1.3749380
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6155855   -2.7610496   -2.4701214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7973112   -3.1987836   -2.3958388
24 months   ki1000109-EE              PAKISTAN                       1                    NA                -2.7123933   -3.1800789   -2.2447077
24 months   ki1000109-EE              PAKISTAN                       0                    NA                -2.6547080   -2.8035060   -2.5059100
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -1.4794152   -1.5713535   -1.3874769
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -1.2124804   -1.3884374   -1.0365234
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.5826596   -1.7311521   -1.4341670
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -2.0072835   -2.1169284   -1.8976385
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -1.5888261   -1.6747270   -1.5029252
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -1.6110369   -1.6961907   -1.5258831
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.7958735   -1.8400617   -1.7516853
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.7559331   -1.8091476   -1.7027187


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.1218261   -1.2566576   -0.9869945
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.2221739   -1.5203945   -0.9239534
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.5709009   -0.7569265   -0.3848753
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       ki1000109-EE              PAKISTAN                       NA                   NA                -1.8713537   -2.0647180   -1.6779894
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -1.4072245   -1.4817853   -1.3326638
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.0578481   -1.1411010   -0.9745953
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.4895257   -0.5113672   -0.4676841
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.5896710   -1.6089649   -1.5703770
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.2056389   -1.3233420   -1.0879358
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.0598800   -1.1885688   -0.9311912
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                -2.0838858   -2.2054394   -1.9623322
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.3175310   -1.3993963   -1.2356656
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.8625370   -0.8897591   -0.8353150
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.9735782   -2.1004502   -1.8467062
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.6365071   -1.7722110   -1.5008032
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1000109-EE              PAKISTAN                       NA                   NA                -2.6678252   -2.8138884   -2.5217620
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.8793783   -1.9705101   -1.7882464
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -1.6006366   -1.6621572   -1.5391159
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.7807218   -1.8162478   -1.7451958


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.4035319   -0.6904543   -0.1166095
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.3898555   -0.9925512    0.2128402
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                 -0.3447800   -1.0184288    0.3288688
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0259476   -0.7960119    0.7441167
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 -0.2226892   -0.4282633   -0.0171150
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.1615487   -0.5064473    0.1833500
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0072093   -0.8483417    0.8627604
Birth       ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE              PAKISTAN                       0                    1                 -0.1862372   -0.4754895    0.1030152
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.2628250   -0.4506469   -0.0750032
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0095453   -0.2037536    0.2228442
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.1069723   -0.2728058    0.0588612
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0153301   -0.0265350    0.0571951
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.4923865    0.4345525    0.5502205
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0464529   -0.1555057    0.0625999
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0800720   -0.3220440    0.1619000
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.1277960   -0.1656418    0.4212338
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0382129   -0.2804940    0.2040682
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.2093307   -0.0154869    0.4341484
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.0185036   -0.2253604    0.2623675
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0209028   -0.2948000    0.2529943
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2928149   -0.6715804    0.0859507
6 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 -0.0489085   -0.4178226    0.3200057
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0871905   -0.3777007    0.2033198
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2103820   -0.0012752    0.4220393
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.2396413   -0.4144674   -0.0648151
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0592841   -0.1086958   -0.0098724
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.9543951    0.9032648    1.0055255
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0189498   -0.0911737    0.0532740
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0344170   -0.3025277    0.2336938
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0408479   -0.3022247    0.3839206
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.1182554   -0.1316708    0.3681817
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0821944   -0.1587251    0.3231139
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.2277699   -0.0456048    0.5011445
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0742410   -0.1986995    0.3471816
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1817257   -0.6077702    0.2443188
24 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE              PAKISTAN                       0                    1                  0.0576853   -0.4338050    0.5491757
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2669349    0.0695323    0.4643374
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.4246239   -0.6080610   -0.2411868
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0222108   -0.1413090    0.0968874
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0399404   -0.0255653    0.1054460


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1321907   -0.2382063   -0.0261751
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.2276949   -0.6133958    0.1580061
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -0.1147222   -0.3184415    0.0889972
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.2301781   -0.5740600    0.1137039
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.0670698   -0.1208320   -0.0133076
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0576544   -0.1897693    0.0744605
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0367324   -0.1269771    0.0535123
Birth       ki1000109-EE              PAKISTAN                       1                    NA                -0.1544571   -0.3923147    0.0834004
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.2437942   -0.4258416   -0.0617468
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0011079   -0.0294650    0.0272491
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0748566   -0.1930352    0.0433219
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0000977   -0.0211618    0.0213572
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.4898754    0.4337068    0.5460440
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0141962   -0.0493603    0.0209678
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0331067   -0.1276893    0.0614760
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0741545   -0.0865891    0.2348982
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0223774   -0.1214178    0.0766630
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1119212   -0.0220974    0.2459398
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0024091   -0.0597358    0.0645539
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0074416   -0.1103968    0.0955136
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0398217   -0.1048560    0.0252126
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0291018   -0.3377552    0.2795516
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0802290   -0.3566709    0.1962129
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0299579    0.0011761    0.0587397
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1736267   -0.2973100   -0.0499434
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0290142   -0.0521124   -0.0059160
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.9524373    0.9025067    1.0023680
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0079670   -0.0340728    0.0181387
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0171564   -0.1224315    0.0881187
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0441343   -0.1387050    0.2269736
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0526019   -0.0501331    0.1553369
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0327751   -0.1096393    0.1751894
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0593002   -0.0117684    0.1303688
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0259431   -0.0798087    0.1316948
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0299753   -0.0922637    0.0323132
24 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.0445681   -0.3633964    0.4525327
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0381506    0.0098092    0.0664921
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.2967187   -0.4275821   -0.1658554
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0118104   -0.0703887    0.0467678
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0151517   -0.0084024    0.0387058
