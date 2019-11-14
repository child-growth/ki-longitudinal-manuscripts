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
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1             261   26569
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           26308   26569
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
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1              35   16753
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0           16718   16753
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
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1    8565
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            8564    8565
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
![](/tmp/a72a0373-0d95-4af0-be3f-ec8f81eb2d49/c44abfae-cdfb-466c-a5fd-942c099a3472/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a72a0373-0d95-4af0-be3f-ec8f81eb2d49/c44abfae-cdfb-466c-a5fd-942c099a3472/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a72a0373-0d95-4af0-be3f-ec8f81eb2d49/c44abfae-cdfb-466c-a5fd-942c099a3472/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.9953284   -1.1536330   -0.8370237
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.4141189   -1.6506669   -1.1775710
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.4695664   -0.9322901   -0.0068427
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.9029995   -1.2671337   -0.5388653
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.1073132   -1.4703881   -0.7442383
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -1.3537997   -1.9053200   -0.8022794
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.7919461   -1.2822822   -0.3016100
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.9621533   -1.4955139   -0.4287926
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.8209160   -0.9489958   -0.6928362
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -1.0919517   -1.2847617   -0.8991417
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.5133101   -0.7279038   -0.2987163
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.6743930   -0.9779302   -0.3708558
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.1240079   -1.3402662   -0.9077496
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3603328   -2.1563808   -0.5642849
Birth       ki1000109-EE              PAKISTAN                       1                    NA                -1.7273893   -2.0248817   -1.4298968
Birth       ki1000109-EE              PAKISTAN                       0                    NA                -1.9064570   -2.1098661   -1.7030478
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.1620947   -1.4157610   -0.9084284
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4266595   -1.4883923   -1.3649267
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.9088964   -0.9837741   -0.8340187
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.9432557   -1.1370117   -0.7494997
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.9814306   -1.1258430   -0.8370182
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.0985764   -1.1960101   -1.0011426
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.4913692   -0.5210685   -0.4616699
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.4732705   -0.5045612   -0.4419798
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.9277444   -1.9810171   -1.8744717
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.1681262   -1.1969518   -1.1393005
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.5091846   -1.5666381   -1.4517311
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.5537047   -1.6463448   -1.4610647
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.1732451   -1.3252322   -1.0212580
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.2651898   -1.4562324   -1.0741472
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0173670   -0.2388669    0.2041329
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.1054548   -0.0856776    0.2965873
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -1.1966608   -1.3485648   -1.0447568
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -1.2446421   -1.4320092   -1.0572749
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6686453   -0.8321277   -0.5051629
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.4704422   -0.6205565   -0.3203279
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -1.3280999   -1.4555934   -1.2006064
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -1.2986304   -1.5117930   -1.0854678
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.0487328   -1.2034002   -0.8940654
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.0736523   -1.3050440   -0.8422607
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3342636   -1.4617956   -1.2067316
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.6411439   -2.0005298   -1.2817579
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -1.9832287   -2.3308064   -1.6356511
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -2.1064923   -2.2355306   -1.9774541
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.2991388   -1.5622232   -1.0360545
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4090921   -1.4843039   -1.3338803
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -1.2281928   -1.3046590   -1.1517267
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.9829594   -1.1815715   -0.7843472
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1573673   -1.3045129   -1.0102217
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.3851454   -1.4819016   -1.2883891
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.8353025   -0.8707855   -0.7998196
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.8914753   -0.9296078   -0.8533428
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -2.3068964   -2.3529379   -2.2608549
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.3335942   -1.3571417   -1.3100467
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.3365263   -1.3823459   -1.2907067
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.3578024   -1.4167849   -1.2988199
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.9619562   -2.1184242   -1.8054883
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.9881516   -2.2059109   -1.7703924
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0035327   -0.2580986    0.2510332
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0179968   -0.2071760    0.2431695
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -1.9327056   -2.0969612   -1.7684500
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -1.8216328   -2.0095153   -1.6337502
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -1.3687440   -1.5440387   -1.1934494
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -1.2634575   -1.4261306   -1.1007844
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -1.8112003   -1.9516574   -1.6707431
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                -1.5099629   -1.7483656   -1.2715602
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.6670769   -1.8434399   -1.4907140
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.5751248   -1.7839103   -1.3663393
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6140637   -2.7593601   -2.4687673
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7746949   -3.1583618   -2.3910281
24 months   ki1000109-EE              PAKISTAN                       1                    NA                -2.7481224   -3.2257844   -2.2704604
24 months   ki1000109-EE              PAKISTAN                       0                    NA                -2.6602790   -2.8087520   -2.5118060
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -1.4791048   -1.5714118   -1.3867979
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -1.2110521   -1.3885836   -1.0335205
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.5797837   -1.7298757   -1.4296918
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -2.0031368   -2.1130432   -1.8932303
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -1.5875827   -1.6739728   -1.5011926
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -1.6089266   -1.6938813   -1.5239718
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.7958209   -1.8400255   -1.7516162
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.7543524   -1.8072432   -1.7014616


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
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.1723268   -1.2004766   -1.1441770
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.2061389   -1.3240265   -1.0882513
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.2113701   -1.3298485   -1.0928916
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.0604867   -1.1892706   -0.9317027
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                -2.0838858   -2.2054394   -1.9623322
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.3175310   -1.3993963   -1.2356656
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.8625370   -0.8897591   -0.8353150
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.3355900   -1.3586765   -1.3125035
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.9740995   -2.1009650   -1.8472341
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.6406809   -1.7768402   -1.5045215
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6451636   -2.7802323   -2.5100948
24 months   ki1000109-EE              PAKISTAN                       NA                   NA                -2.6678252   -2.8138884   -2.5217620
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.8793783   -1.9705101   -1.7882464
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -1.6006366   -1.6621572   -1.5391159
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.7807218   -1.8162478   -1.7451958


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.4187906   -0.7054726   -0.1321085
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.4334331   -1.0225530    0.1556868
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                 -0.2464865   -0.9155819    0.4226089
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.1702072   -0.9016154    0.5612011
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 -0.2710357   -0.4791381   -0.0629333
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.1610829   -0.5108091    0.1886433
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2363249   -1.0619116    0.5892618
Birth       ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE              PAKISTAN                       0                    1                 -0.1790677   -0.4683358    0.1102003
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.2645648   -0.4678017   -0.0613278
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0343593   -0.2374717    0.1687531
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.1171458   -0.2862215    0.0519300
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0180987   -0.0236477    0.0598451
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.7596183    0.7003851    0.8188515
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0445202   -0.1535478    0.0645074
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0919447   -0.3371078    0.1532183
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.1228218   -0.1709727    0.4166164
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0479813   -0.2901919    0.1942293
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1982031   -0.0202074    0.4166136
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.0294695   -0.2198577    0.2787967
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0249196   -0.3038984    0.2540592
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3068803   -0.6869087    0.0731482
6 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 -0.1232636   -0.4935832    0.2470560
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.1099532   -0.3505934    0.1306869
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2452335    0.0324746    0.4579923
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.2277781   -0.4026217   -0.0529344
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0561728   -0.1053914   -0.0069541
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.9733022    0.9222980    1.0243063
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0212761   -0.0935907    0.0510386
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0261954   -0.2948276    0.2424368
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0215295   -0.3173791    0.3604381
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.1110728   -0.1354218    0.3575675
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1052865   -0.1333524    0.3439255
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.3012374    0.0197896    0.5826852
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0919522   -0.1783982    0.3623025
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1606312   -0.5714732    0.2502108
24 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE              PAKISTAN                       0                    1                  0.0878434   -0.4110430    0.5867298
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2680527    0.0684295    0.4676759
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.4233530   -0.6084553   -0.2382507
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0213439   -0.1409631    0.0982753
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0414685   -0.0237475    0.1066844


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1264977   -0.2331492   -0.0198462
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.2064336   -0.5904881    0.1776210
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -0.1148607   -0.3132285    0.0835070
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0613872   -0.3958227    0.2730482
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.0618737   -0.1147212   -0.0090263
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0575908   -0.1903584    0.0751767
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0315921   -0.1210681    0.0578839
Birth       ki1000109-EE              PAKISTAN                       1                    NA                -0.1439644   -0.3806835    0.0927546
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.2451298   -0.4429120   -0.0473476
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0005982   -0.0281032    0.0269069
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0764175   -0.1978714    0.0450364
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0018435   -0.0193218    0.0230088
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.7554177    0.6979660    0.8128694
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0141062   -0.0492531    0.0210406
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0328938   -0.1286363    0.0628486
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0683877   -0.0923637    0.2291391
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0147093   -0.1132002    0.0837816
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1075860   -0.0233721    0.2385441
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0000047   -0.0632695    0.0632789
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0117539   -0.1163006    0.0927928
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0344813   -0.0983903    0.0294276
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.1006571   -0.4070728    0.2057587
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1027174   -0.3298838    0.1244490
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0295145    0.0009491    0.0580799
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1601637   -0.2837430   -0.0365844
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0272345   -0.0503636   -0.0041054
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.9713063    0.9214986    1.0211140
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0082677   -0.0343014    0.0177660
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0121433   -0.1173624    0.0930758
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0106333   -0.1677302    0.1889968
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0478598   -0.0533644    0.1490840
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0568800   -0.0825165    0.1962765
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0567226   -0.0135723    0.1270176
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0263961   -0.0790763    0.1318684
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0310998   -0.0950743    0.0328746
24 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.0802972   -0.3406222    0.5012166
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0378402    0.0094110    0.0662694
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.2995945   -0.4319483   -0.1672408
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0130539   -0.0722558    0.0461480
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0150991   -0.0083558    0.0385540
