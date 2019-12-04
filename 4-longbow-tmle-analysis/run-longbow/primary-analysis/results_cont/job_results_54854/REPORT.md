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

agecat      studyid                   country                        earlybf    n_cell       n  outcome_variable 
----------  ------------------------  -----------------------------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1             140     214  whz              
Birth       ki0047075b-MAL-ED         BANGLADESH                     0              74     214  whz              
Birth       ki0047075b-MAL-ED         BRAZIL                         1              26      62  whz              
Birth       ki0047075b-MAL-ED         BRAZIL                         0              36      62  whz              
Birth       ki0047075b-MAL-ED         INDIA                          1              31      44  whz              
Birth       ki0047075b-MAL-ED         INDIA                          0              13      44  whz              
Birth       ki0047075b-MAL-ED         NEPAL                          1              14      26  whz              
Birth       ki0047075b-MAL-ED         NEPAL                          0              12      26  whz              
Birth       ki0047075b-MAL-ED         PERU                           1             172     228  whz              
Birth       ki0047075b-MAL-ED         PERU                           0              56     228  whz              
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1              69     110  whz              
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0              41     110  whz              
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             103     115  whz              
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              12     115  whz              
Birth       ki1000109-EE              PAKISTAN                       1              36     170  whz              
Birth       ki1000109-EE              PAKISTAN                       0             134     170  whz              
Birth       ki1000304b-SAS-CompFeed   INDIA                          1              79    1072  whz              
Birth       ki1000304b-SAS-CompFeed   INDIA                          0             993    1072  whz              
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1             613     707  whz              
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0              94     707  whz              
Birth       ki1113344-GMS-Nepal       NEPAL                          1             171     586  whz              
Birth       ki1113344-GMS-Nepal       NEPAL                          0             415     586  whz              
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1            6142   11514  whz              
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0            5372   11514  whz              
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1             105   17943  whz              
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           17838   17943  whz              
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1            1624    2396  whz              
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0             772    2396  whz              
6 months    ki0047075b-MAL-ED         BANGLADESH                     1             147     240  whz              
6 months    ki0047075b-MAL-ED         BANGLADESH                     0              93     240  whz              
6 months    ki0047075b-MAL-ED         BRAZIL                         1              95     209  whz              
6 months    ki0047075b-MAL-ED         BRAZIL                         0             114     209  whz              
6 months    ki0047075b-MAL-ED         INDIA                          1             140     236  whz              
6 months    ki0047075b-MAL-ED         INDIA                          0              96     236  whz              
6 months    ki0047075b-MAL-ED         NEPAL                          1              96     236  whz              
6 months    ki0047075b-MAL-ED         NEPAL                          0             140     236  whz              
6 months    ki0047075b-MAL-ED         PERU                           1             202     273  whz              
6 months    ki0047075b-MAL-ED         PERU                           0              71     273  whz              
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             156     250  whz              
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              94     250  whz              
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247  whz              
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247  whz              
6 months    ki1000109-EE              PAKISTAN                       1              69     364  whz              
6 months    ki1000109-EE              PAKISTAN                       0             295     364  whz              
6 months    ki1000304b-SAS-CompFeed   INDIA                          1              97    1334  whz              
6 months    ki1000304b-SAS-CompFeed   INDIA                          0            1237    1334  whz              
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             619     715  whz              
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              96     715  whz              
6 months    ki1113344-GMS-Nepal       NEPAL                          1             151     511  whz              
6 months    ki1113344-GMS-Nepal       NEPAL                          0             360     511  whz              
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            4065    7553  whz              
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            3488    7553  whz              
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1              36   16784  whz              
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0           16748   16784  whz              
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1            3095    4833  whz              
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1738    4833  whz              
24 months   ki0047075b-MAL-ED         BANGLADESH                     1             128     211  whz              
24 months   ki0047075b-MAL-ED         BANGLADESH                     0              83     211  whz              
24 months   ki0047075b-MAL-ED         BRAZIL                         1              80     169  whz              
24 months   ki0047075b-MAL-ED         BRAZIL                         0              89     169  whz              
24 months   ki0047075b-MAL-ED         INDIA                          1             134     227  whz              
24 months   ki0047075b-MAL-ED         INDIA                          0              93     227  whz              
24 months   ki0047075b-MAL-ED         NEPAL                          1              95     228  whz              
24 months   ki0047075b-MAL-ED         NEPAL                          0             133     228  whz              
24 months   ki0047075b-MAL-ED         PERU                           1             149     201  whz              
24 months   ki0047075b-MAL-ED         PERU                           0              52     201  whz              
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             144     235  whz              
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              91     235  whz              
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214  whz              
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214  whz              
24 months   ki1000109-EE              PAKISTAN                       1              32     164  whz              
24 months   ki1000109-EE              PAKISTAN                       0             132     164  whz              
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             443     514  whz              
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     514  whz              
24 months   ki1113344-GMS-Nepal       NEPAL                          1             131     444  whz              
24 months   ki1113344-GMS-Nepal       NEPAL                          0             313     444  whz              
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             201     379  whz              
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             178     379  whz              
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1    8603  whz              
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            8602    8603  whz              
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            3031    4735  whz              
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1704    4735  whz              


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
![](/tmp/97192422-667d-4a6c-9d48-05b07bb5595c/18842f2b-2342-4be4-867c-3c9dd7f7ef05/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/97192422-667d-4a6c-9d48-05b07bb5595c/18842f2b-2342-4be4-867c-3c9dd7f7ef05/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/97192422-667d-4a6c-9d48-05b07bb5595c/18842f2b-2342-4be4-867c-3c9dd7f7ef05/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.8781510   -1.0554289   -0.7008730
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.0499539   -1.3029103   -0.7969976
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1822218   -0.2937512    0.6581948
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.4672551    0.0599186    0.8745915
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -0.8333612   -1.1889724   -0.4777499
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -1.1464935   -1.6302659   -0.6627211
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.8513887   -1.3824759   -0.3203016
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.8713381   -1.4142461   -0.3284300
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.0964972   -0.2352529    0.0422584
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                 0.0894589   -0.1528667    0.3317846
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.1235362   -0.3774735    0.1304012
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.2439050   -0.6400272    0.1522173
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7888476    0.5860362    0.9916590
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5556017   -0.0788703    1.1900738
Birth       ki1000109-EE              PAKISTAN                       1                    NA                -0.1636398   -0.4949529    0.1676733
Birth       ki1000109-EE              PAKISTAN                       0                    NA                -0.4061956   -0.6278095   -0.1845816
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.7803988   -1.1572587   -0.4035389
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.6662675   -0.8343427   -0.4981923
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -1.2463946   -1.3362383   -1.1565510
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -1.2650635   -1.4772673   -1.0528597
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1807052   -1.3500526   -1.0113579
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.1037655   -1.2067024   -1.0008286
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.4618852   -0.4972573   -0.4265131
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.5937519   -0.6316309   -0.5558729
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.8694261   -0.9176503   -0.8212020
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.7773395   -0.7968086   -0.7578704
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.6666073   -0.7261535   -0.6070611
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.7338122   -0.8323652   -0.6352592
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0956764   -0.2569707    0.0656179
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.1956656   -0.4180742    0.0267431
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 1.1063761    0.8712438    1.3415084
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.8501635    0.6193881    1.0809389
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.7536596   -0.9235281   -0.5837911
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.6340613   -0.8221799   -0.4459427
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0035906   -0.2041494    0.2113306
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.1848935    0.0200584    0.3497287
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.9992455    0.8574468    1.1410442
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                 1.1632996    0.9336106    1.3929887
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.5338122    0.3326265    0.7349979
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.5596590    0.3176302    0.8016878
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.4998645    0.3582055    0.6415235
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5613204    0.2093917    0.9132491
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.7143599   -0.9980926   -0.4306271
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -0.7862777   -0.9126076   -0.6599479
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.6097313   -1.1597375   -0.0597251
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.6712896   -0.8039023   -0.5386770
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0389887   -0.0462682    0.1242456
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0324320   -0.2408501    0.1759860
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.4244815   -0.5962845   -0.2526784
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.6356090   -0.7428204   -0.5283975
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.3091690    0.2725566    0.3457814
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.3014029    0.2606133    0.3421925
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.6733900   -0.7047433   -0.6420368
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.5933437   -0.6133781   -0.5733093
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.3905040   -0.4351157   -0.3458923
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.3896484   -0.4505671   -0.3287296
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.7924937   -0.9491942   -0.6357933
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.8516672   -1.0529072   -0.6504271
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.3899250    0.0837275    0.6961224
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.5793232    0.3027874    0.8558590
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.9704644   -1.1275913   -0.8133376
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.8871351   -1.0595533   -0.7147169
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.4849575   -0.6660235   -0.3038915
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.2925371   -0.4390229   -0.1460512
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0708528   -0.0786724    0.2203781
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.2087355    0.0146274    0.4028435
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.4188457    0.2579588    0.5797326
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.4678756    0.2780685    0.6576828
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0833033   -0.0512616    0.2178682
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1651982   -0.4896597    0.1592632
24 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.8832991   -1.1899491   -0.5766492
24 months   ki1000109-EE              PAKISTAN                       0                    NA                -1.0225450   -1.1944003   -0.8506897
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.6504388   -0.7504167   -0.5504608
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.3609642   -0.6393525   -0.0825758
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.0605868   -1.2272603   -0.8939134
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.1644931   -1.2775401   -1.0514461
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -1.1572445   -1.2993553   -1.0151336
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -1.2393854   -1.4074664   -1.0713043
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.2354812   -1.2755943   -1.1953680
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.2040377   -1.2577301   -1.1503453


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.9390654   -1.0847642   -0.7933666
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.9122727   -1.1899971   -0.6345483
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1690000   -0.3880340    0.0500340
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       ki1000109-EE              PAKISTAN                       NA                   NA                -0.3522059   -0.5428560   -0.1615557
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.6676026   -0.8422097   -0.4929956
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.1260580   -1.2184297   -1.0336863
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.5262098   -0.5537283   -0.4986913
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.7778811   -0.7969145   -0.7588476
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.1316250   -0.2604010   -0.0028490
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.7079979   -0.8344175   -0.5815783
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.5500267    0.3964966    0.7035568
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                -0.7725778   -0.8877440   -0.6574117
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.5843738   -0.6761994   -0.4925481
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                 0.3072633    0.2799882    0.3345385
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.8141706   -0.9363085   -0.6920327
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.4152943    0.2928804    0.5377083
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1000109-EE              PAKISTAN                       NA                   NA                -1.0044512   -1.1543739   -0.8545285
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.1339602   -1.2266932   -1.0412272
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -1.1970712   -1.3045749   -1.0895676
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.1718030   -0.4788556    0.1352497
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.2850333   -0.3327753    0.9028418
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                 -0.3131323   -0.9184344    0.2921698
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0199493   -0.7925982    0.7526996
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                  0.1859561   -0.0937961    0.4657084
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.1203688   -0.5831011    0.3423635
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2332458   -0.9035183    0.4370266
Birth       ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE              PAKISTAN                       0                    1                 -0.2425558   -0.6412200    0.1561083
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.1141313   -0.2121205    0.4403832
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0186689   -0.2453729    0.2080351
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0769397   -0.1116320    0.2655114
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.1318667   -0.1797692   -0.0839642
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0920866    0.0402085    0.1439647
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0672049   -0.1803784    0.0459686
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0999892   -0.3740435    0.1740651
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.2562126   -0.5866459    0.0742207
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                  0.1195983   -0.1338325    0.3730291
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1813029   -0.0803191    0.4429249
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.1640541   -0.1082667    0.4363750
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0258469   -0.2890213    0.3407150
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0614559   -0.3187939    0.4417057
6 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 -0.0719179   -0.3825872    0.2387514
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0615583   -0.5884850    0.4653684
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0714207   -0.2964202    0.1535787
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.2111275   -0.4127929   -0.0094620
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0077661   -0.0621057    0.0465735
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0800463    0.0424069    0.1176858
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0008556   -0.0715173    0.0732286
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0591735   -0.3126061    0.1942592
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.1893982   -0.2223587    0.6011552
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0833293   -0.1505003    0.3171589
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1924204   -0.0391707    0.4240115
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.1378826   -0.1021123    0.3778775
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0490299   -0.2023381    0.3003979
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2485015   -0.5984247    0.1014217
24 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE              PAKISTAN                       0                    1                 -0.1392459   -0.4885773    0.2100855
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2894746   -0.0056479    0.5845970
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.1039063   -0.3055204    0.0977078
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0821409   -0.3023262    0.1380444
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0314434   -0.0357650    0.0986518


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0609145   -0.1670457    0.0452168
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.2206815   -0.1478870    0.5892499
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0789116   -0.2500714    0.0922483
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0829272   -0.2995343    0.4653887
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.0444797   -0.0249994    0.1139587
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0454638   -0.2156123    0.1246846
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0264128   -0.0928850    0.0400594
Birth       ki1000109-EE              PAKISTAN                       1                    NA                -0.1885661   -0.5089267    0.1317945
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.1127962   -0.1920694    0.4176618
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0022433   -0.0279346    0.0324212
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0546472   -0.0788937    0.1881881
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0643247   -0.0880408   -0.0406085
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0915451    0.0409622    0.1421279
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0220196   -0.0585622    0.0145231
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0359486   -0.1372306    0.0653334
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.1342987   -0.3156104    0.0470129
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0456617   -0.0575773    0.1489007
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1068402   -0.0489831    0.2626635
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0536361   -0.0171602    0.1244323
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0162145   -0.1017990    0.1342280
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0363568   -0.0280816    0.1007952
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0582180   -0.3148756    0.1984396
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0559771   -0.5513990    0.4394448
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0092265   -0.0389735    0.0205206
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1598923   -0.3026343   -0.0171503
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0019057   -0.0271641    0.0233528
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0798739    0.0431580    0.1165898
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0006985   -0.0251712    0.0265682
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0216769   -0.1181536    0.0747998
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0726983   -0.1435590    0.2889556
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0188125   -0.0776734    0.1152983
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1100452   -0.0262407    0.2463311
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0403453   -0.0220470    0.1027377
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0035514   -0.1015507    0.0944480
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0285058   -0.0849217    0.0279101
24 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.1211521   -0.4101397    0.1678355
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0400886    0.0005760    0.0796012
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0733734   -0.2162446    0.0694979
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0398268   -0.1415210    0.0618675
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0123724   -0.0117834    0.0365282
