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

agecat      studyid                   country                        earlybf    n_cell       n  outcome_variable 
----------  ------------------------  -----------------------------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1             147     230  haz              
Birth       ki0047075b-MAL-ED         BANGLADESH                     0              83     230  haz              
Birth       ki0047075b-MAL-ED         BRAZIL                         1              28      65  haz              
Birth       ki0047075b-MAL-ED         BRAZIL                         0              37      65  haz              
Birth       ki0047075b-MAL-ED         INDIA                          1              32      46  haz              
Birth       ki0047075b-MAL-ED         INDIA                          0              14      46  haz              
Birth       ki0047075b-MAL-ED         NEPAL                          1              14      27  haz              
Birth       ki0047075b-MAL-ED         NEPAL                          0              13      27  haz              
Birth       ki0047075b-MAL-ED         PERU                           1             175     233  haz              
Birth       ki0047075b-MAL-ED         PERU                           0              58     233  haz              
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1              69     111  haz              
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0              42     111  haz              
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             111     125  haz              
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              14     125  haz              
Birth       ki1000109-EE              PAKISTAN                       1              44     229  haz              
Birth       ki1000109-EE              PAKISTAN                       0             185     229  haz              
Birth       ki1000304b-SAS-CompFeed   INDIA                          1              86    1207  haz              
Birth       ki1000304b-SAS-CompFeed   INDIA                          0            1121    1207  haz              
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1             634     732  haz              
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0              98     732  haz              
Birth       ki1113344-GMS-Nepal       NEPAL                          1             180     632  haz              
Birth       ki1113344-GMS-Nepal       NEPAL                          0             452     632  haz              
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1            6556   12354  haz              
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0            5798   12354  haz              
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1             236   22370  haz              
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           22134   22370  haz              
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1            1912    2823  haz              
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0             911    2823  haz              
6 months    ki0047075b-MAL-ED         BANGLADESH                     1             147     240  haz              
6 months    ki0047075b-MAL-ED         BANGLADESH                     0              93     240  haz              
6 months    ki0047075b-MAL-ED         BRAZIL                         1              95     209  haz              
6 months    ki0047075b-MAL-ED         BRAZIL                         0             114     209  haz              
6 months    ki0047075b-MAL-ED         INDIA                          1             140     236  haz              
6 months    ki0047075b-MAL-ED         INDIA                          0              96     236  haz              
6 months    ki0047075b-MAL-ED         NEPAL                          1              96     236  haz              
6 months    ki0047075b-MAL-ED         NEPAL                          0             140     236  haz              
6 months    ki0047075b-MAL-ED         PERU                           1             202     273  haz              
6 months    ki0047075b-MAL-ED         PERU                           0              71     273  haz              
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             156     250  haz              
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              94     250  haz              
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247  haz              
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247  haz              
6 months    ki1000109-EE              PAKISTAN                       1              68     362  haz              
6 months    ki1000109-EE              PAKISTAN                       0             294     362  haz              
6 months    ki1000304b-SAS-CompFeed   INDIA                          1              98    1336  haz              
6 months    ki1000304b-SAS-CompFeed   INDIA                          0            1238    1336  haz              
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             619     715  haz              
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              96     715  haz              
6 months    ki1113344-GMS-Nepal       NEPAL                          1             151     511  haz              
6 months    ki1113344-GMS-Nepal       NEPAL                          0             360     511  haz              
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            4146    7698  haz              
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            3552    7698  haz              
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1              35   16811  haz              
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0           16776   16811  haz              
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1            3094    4831  haz              
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1737    4831  haz              
24 months   ki0047075b-MAL-ED         BANGLADESH                     1             128     211  haz              
24 months   ki0047075b-MAL-ED         BANGLADESH                     0              83     211  haz              
24 months   ki0047075b-MAL-ED         BRAZIL                         1              80     169  haz              
24 months   ki0047075b-MAL-ED         BRAZIL                         0              89     169  haz              
24 months   ki0047075b-MAL-ED         INDIA                          1             134     227  haz              
24 months   ki0047075b-MAL-ED         INDIA                          0              93     227  haz              
24 months   ki0047075b-MAL-ED         NEPAL                          1              95     228  haz              
24 months   ki0047075b-MAL-ED         NEPAL                          0             133     228  haz              
24 months   ki0047075b-MAL-ED         PERU                           1             149     201  haz              
24 months   ki0047075b-MAL-ED         PERU                           0              52     201  haz              
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             144     235  haz              
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              91     235  haz              
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214  haz              
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214  haz              
24 months   ki1000109-EE              PAKISTAN                       1              32     164  haz              
24 months   ki1000109-EE              PAKISTAN                       0             132     164  haz              
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             443     514  haz              
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     514  haz              
24 months   ki1113344-GMS-Nepal       NEPAL                          1             131     445  haz              
24 months   ki1113344-GMS-Nepal       NEPAL                          0             314     445  haz              
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             717    1406  haz              
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             689    1406  haz              
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1    8632  haz              
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            8631    8632  haz              
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            3042    4752  haz              
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1710    4752  haz              


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
![](/tmp/1a82f537-6bf6-47ad-8916-f46f8e9c5f6b/2d5b6d84-bf81-4843-aaa3-68804a837267/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1a82f537-6bf6-47ad-8916-f46f8e9c5f6b/2d5b6d84-bf81-4843-aaa3-68804a837267/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1a82f537-6bf6-47ad-8916-f46f8e9c5f6b/2d5b6d84-bf81-4843-aaa3-68804a837267/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.9865281   -1.1453284   -0.8277279
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.3861891   -1.6256586   -1.1467195
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.4440885   -0.9057788    0.0176017
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.8175771   -1.1780449   -0.4571093
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.1006541   -1.4672858   -0.7340223
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -1.5021794   -2.0309381   -0.9734207
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.8312515   -1.3620994   -0.3004036
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -1.0008374   -1.5234122   -0.4782627
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.8226353   -0.9510558   -0.6942147
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -1.1093351   -1.3041058   -0.9145644
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.5087152   -0.7237096   -0.2937208
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.6686471   -0.9721855   -0.3651087
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.1176348   -1.3343639   -0.9009057
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1310135   -1.8539314   -0.4080956
Birth       ki1000109-EE              PAKISTAN                       1                    NA                -1.7080197   -2.0133143   -1.4027251
Birth       ki1000109-EE              PAKISTAN                       0                    NA                -1.9098796   -2.1112354   -1.7085238
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.1634303   -1.4025917   -0.9242689
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4262554   -1.4888925   -1.3636182
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.9085914   -0.9836706   -0.8335121
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.9352251   -1.1366494   -0.7338009
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.9663201   -1.1104438   -0.8221964
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.0921958   -1.1895044   -0.9948872
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.4935737   -0.5234775   -0.4636699
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.4734168   -0.5048463   -0.4419872
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -2.0700387   -2.1273213   -2.0127561
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.5870054   -1.6065577   -1.5674532
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.5079021   -1.5653078   -1.4504963
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.5529348   -1.6456338   -1.4602359
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.1727786   -1.3226053   -1.0229519
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.2688815   -1.4668954   -1.0708677
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0090926   -0.2280943    0.2099091
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0955313   -0.0943353    0.2853979
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -1.1920547   -1.3452516   -1.0388578
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -1.2328236   -1.4211966   -1.0444506
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6737885   -0.8370861   -0.5104910
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.4623478   -0.6139291   -0.3107665
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -1.3265476   -1.4534288   -1.1996664
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -1.3022057   -1.5107322   -1.0936791
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.0387482   -1.1927323   -0.8847641
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.0519458   -1.2805089   -0.8233828
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3208595   -1.4489678   -1.1927512
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.5498672   -1.9463661   -1.1533684
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -1.9907797   -2.3103986   -1.6711608
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -2.1055219   -2.2351460   -1.9758979
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.3216273   -1.6354080   -1.0078465
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4088177   -1.4845774   -1.3330581
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -1.2285587   -1.3049871   -1.1521303
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -1.0102878   -1.2080387   -0.8125370
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1638647   -1.3138748   -1.0138547
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.3835663   -1.4808711   -1.2862615
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.8334897   -0.8689066   -0.7980727
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.8908652   -0.9290861   -0.8526443
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -2.2841135   -2.3303135   -2.2379135
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.3111138   -1.3347235   -1.2875041
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.3373628   -1.3831077   -1.2916179
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.3577059   -1.4165686   -1.2988432
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.9686877   -2.1255450   -1.8118303
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.9805205   -2.1971449   -1.7638960
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0162694   -0.2437382    0.2762771
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0503133   -0.1763758    0.2770025
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -1.9247518   -2.0897802   -1.7597233
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -1.8295136   -2.0184858   -1.6405415
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -1.3729666   -1.5490465   -1.1968867
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -1.2671988   -1.4305213   -1.1038763
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -1.8188151   -1.9601538   -1.6774764
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                -1.6062841   -1.8312584   -1.3813098
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.6500618   -1.8249627   -1.4751608
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.5856815   -1.8040710   -1.3672920
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6163576   -2.7610363   -2.4716790
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7894126   -3.1628612   -2.4159640
24 months   ki1000109-EE              PAKISTAN                       1                    NA                -2.6745892   -3.1142211   -2.2349573
24 months   ki1000109-EE              PAKISTAN                       0                    NA                -2.6594672   -2.8084283   -2.5105061
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -1.4783989   -1.5704786   -1.3863191
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -1.2182641   -1.3934827   -1.0430455
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.5560959   -1.7056951   -1.4064967
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -2.0010801   -2.1102984   -1.8918619
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -1.5898224   -1.6757948   -1.5038500
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -1.6085152   -1.6939994   -1.5230309
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.7966347   -1.8408917   -1.7523777
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.7533737   -1.8064295   -1.7003179


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
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.3996609   -0.6875434   -0.1117785
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.3734886   -0.9619608    0.2149837
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                 -0.4015254   -1.0475632    0.2445125
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.1695859   -0.9141435    0.5749716
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 -0.2866999   -0.4960535   -0.0773462
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.1599319   -0.5090883    0.1892245
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0133786   -0.7688067    0.7420495
Birth       ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE              PAKISTAN                       0                    1                 -0.2018599   -0.4975515    0.0938316
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.2628250   -0.4506469   -0.0750032
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0266338   -0.2381944    0.1849268
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.1258756   -0.2941239    0.0423726
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0201569   -0.0218312    0.0621451
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.4830332    0.4244378    0.5416287
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0450327   -0.1541010    0.0640355
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0961030   -0.3459155    0.1537096
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.1046239   -0.1845483    0.3937961
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0407689   -0.2840883    0.2025505
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.2114408   -0.0112656    0.4341471
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.0243420   -0.2193917    0.2680756
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0131976   -0.2883901    0.2619949
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2290077   -0.6469493    0.1889338
6 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 -0.1147422   -0.4592654    0.2297810
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0871905   -0.3777007    0.2033198
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2182708    0.0061437    0.4303980
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.2197016   -0.3986031   -0.0408000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0573755   -0.1065890   -0.0081621
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.9729997    0.9218240    1.0241753
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0203431   -0.0924810    0.0517949
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0118328   -0.2776861    0.2540204
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0340439   -0.3131961    0.3812839
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0952381   -0.1528204    0.3432966
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1057678   -0.1349352    0.3464709
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.2125310   -0.0518559    0.4769179
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0643803   -0.2160590    0.3448195
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1730550   -0.5739104    0.2278005
24 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE              PAKISTAN                       0                    1                  0.0151220   -0.4494651    0.4797091
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2601348    0.0630221    0.4572474
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.4449843   -0.6284261   -0.2615425
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0186928   -0.1385837    0.1011982
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0432610   -0.0220545    0.1085765


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1352980   -0.2411374   -0.0294585
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.2319115   -0.6082681    0.1444452
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -0.1215199   -0.3198370    0.0767973
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0220818   -0.3724576    0.3282939
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.0601544   -0.1130464   -0.0072625
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0621857   -0.1946611    0.0702897
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0379652   -0.1292030    0.0532727
Birth       ki1000109-EE              PAKISTAN                       1                    NA                -0.1633340   -0.4066088    0.0799408
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.2437942   -0.4258416   -0.0617468
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0009032   -0.0289551    0.0271487
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0915280   -0.2120068    0.0289508
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0040480   -0.0172998    0.0253959
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.4803677    0.4234858    0.5372496
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0153887   -0.0505327    0.0197553
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0328603   -0.1275231    0.0618025
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0566683   -0.1013416    0.2146782
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0194707   -0.1182650    0.0793236
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1122066   -0.0200348    0.2444481
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0028816   -0.0595016    0.0652648
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0211318   -0.1250201    0.0827566
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0478854   -0.1139883    0.0182174
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0931061   -0.3736860    0.1874738
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0802290   -0.3566709    0.1962129
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0298804    0.0011731    0.0585877
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1536663   -0.2803825   -0.0269501
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0290473   -0.0521065   -0.0059882
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.9710203    0.9210516    1.0209889
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0074312   -0.0334556    0.0185932
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0048905   -0.1091688    0.0993877
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0101550   -0.1932567    0.1729466
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0385623   -0.0633939    0.1405186
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0653789   -0.0752702    0.2060280
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0663441   -0.0039249    0.1366132
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0135547   -0.0957665    0.1228758
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0292031   -0.0923602    0.0339540
24 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.0067640   -0.3739303    0.3874583
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0371343    0.0089392    0.0653293
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.3232824   -0.4553913   -0.1911736
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0108142   -0.0697324    0.0481040
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0159129   -0.0075941    0.0394199
