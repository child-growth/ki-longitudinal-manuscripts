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
Birth       ki0047075b-MAL-ED         BANGLADESH                     1             140     214
Birth       ki0047075b-MAL-ED         BANGLADESH                     0              74     214
Birth       ki0047075b-MAL-ED         BRAZIL                         1              26      62
Birth       ki0047075b-MAL-ED         BRAZIL                         0              36      62
Birth       ki0047075b-MAL-ED         INDIA                          1              31      44
Birth       ki0047075b-MAL-ED         INDIA                          0              13      44
Birth       ki0047075b-MAL-ED         NEPAL                          1              14      26
Birth       ki0047075b-MAL-ED         NEPAL                          0              12      26
Birth       ki0047075b-MAL-ED         PERU                           1             172     228
Birth       ki0047075b-MAL-ED         PERU                           0              56     228
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1              69     110
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0              41     110
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             103     115
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              12     115
Birth       ki1000109-EE              PAKISTAN                       1              36     170
Birth       ki1000109-EE              PAKISTAN                       0             134     170
Birth       ki1000304b-SAS-CompFeed   INDIA                          1              79    1072
Birth       ki1000304b-SAS-CompFeed   INDIA                          0             993    1072
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1             613     707
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0              94     707
Birth       ki1113344-GMS-Nepal       NEPAL                          1             171     586
Birth       ki1113344-GMS-Nepal       NEPAL                          0             415     586
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1            6142   11514
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0            5372   11514
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1             105   17943
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           17838   17943
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1            1624    2396
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0             772    2396
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
6 months    ki1000109-EE              PAKISTAN                       1              69     364
6 months    ki1000109-EE              PAKISTAN                       0             295     364
6 months    ki1000304b-SAS-CompFeed   INDIA                          1              97    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0            1237    1334
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             619     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              96     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1             151     511
6 months    ki1113344-GMS-Nepal       NEPAL                          0             360     511
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            4065    7553
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            3488    7553
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
24 months   ki1000109-EE              PAKISTAN                       1              32     164
24 months   ki1000109-EE              PAKISTAN                       0             132     164
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             443     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1             131     444
24 months   ki1113344-GMS-Nepal       NEPAL                          0             313     444
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             201     379
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             178     379
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
![](/tmp/298b5d00-0d46-4ac9-9657-86a95b9804d1/624a58d1-6817-4909-944e-f38c659a9ee5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.8785238   -1.0566276   -0.7004200
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.4997399    0.0726993    0.9267805
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.8441424   -1.2030400   -0.4852448
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.9176952   -1.5308702   -0.3045203
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed           0.0846536   -0.1527593    0.3220665
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0287435   -0.3714132    0.3139262
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7895825    0.5860923    0.9930727
Birth       ki1000109-EE              PAKISTAN                       optimal              observed          -0.1605922   -0.4612622    0.1400778
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.7240462   -0.9407570   -0.5073353
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -1.2672605   -1.4463571   -1.0881639
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.0791070   -1.1994218   -0.9587922
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.4494760   -0.4852301   -0.4137219
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed           0.2803179    0.1698414    0.3907944
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.6708236   -0.7320071   -0.6096400
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.2763225   -0.4294520   -0.1231931
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           1.1573300    0.9165912    1.3980688
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.6062119   -0.7964998   -0.4159240
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.1884821    0.0236025    0.3533616
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           1.3246856    1.1089681    1.5404030
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.6076620    0.3707235    0.8446005
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4634337    0.1605233    0.7663440
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -0.7016011   -0.9358173   -0.4673849
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.8305734   -1.0015654   -0.6595814
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed           0.0382604   -0.0470547    0.1235755
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.4494909   -0.6202614   -0.2787204
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed           0.3180117    0.2790671    0.3569564
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.5293319   -0.5506308   -0.5080330
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.3736040   -0.4260746   -0.3211335
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.8583438   -1.0178191   -0.6988685
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.6039549    0.3204875    0.8874222
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.9186987   -1.0813361   -0.7560612
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.3268214   -0.4702417   -0.1834010
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed           0.1451558   -0.0529685    0.3432801
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.2768371    0.0977220    0.4559521
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0059779   -0.1881721    0.1762162
24 months   ki1000109-EE              PAKISTAN                       optimal              observed          -0.9164752   -1.2231283   -0.6098222
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.3601968   -0.6384868   -0.0819067
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.0631787   -1.2273630   -0.8989944
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -1.1956044   -1.3421737   -1.0490351
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.2007443   -1.2498017   -1.1516868


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.9390654   -1.0847642   -0.7933666
Birth       ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED         INDIA                          observed             observed          -0.9122727   -1.1899971   -0.6345483
Birth       ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED         PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -0.1690000   -0.3880340    0.0500340
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       ki1000109-EE              PAKISTAN                       observed             observed          -0.3522059   -0.5428560   -0.1615557
Birth       ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -0.6676026   -0.8422097   -0.4929956
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.1260580   -1.2184297   -1.0336863
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -0.5262098   -0.5537283   -0.4986913
Birth       kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -0.7778811   -0.7969145   -0.7588476
Birth       kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.1316250   -0.2604010   -0.0028490
6 months    ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED         INDIA                          observed             observed          -0.7079979   -0.8344175   -0.5815783
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED         PERU                           observed             observed           1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed           0.5500267    0.3964966    0.7035568
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000109-EE              PAKISTAN                       observed             observed          -0.7725778   -0.8877440   -0.6574117
6 months    ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal       NEPAL                          observed             observed          -0.5843738   -0.6761994   -0.4925481
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed           0.3072633    0.2799882    0.3345385
6 months    kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.8141706   -0.9363085   -0.6920327
24 months   ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED         INDIA                          observed             observed          -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED         PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed           0.4152943    0.2928804    0.5377083
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   ki1000109-EE              PAKISTAN                       observed             observed          -1.0044512   -1.1543739   -0.8545285
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.1339602   -1.2266932   -1.0412272
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -1.1970712   -1.3045749   -1.0895676
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0605416   -0.1682532    0.0471700
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.0968367   -0.3770566    0.1833833
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0681303   -0.2379868    0.1017261
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.1492337   -0.2735437    0.5720111
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.1366711   -0.3449346    0.0715923
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.1402565   -0.3609323    0.0804193
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0271477   -0.0893246    0.0350292
Birth       ki1000109-EE              PAKISTAN                       optimal              observed          -0.1916137   -0.4390459    0.0558185
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.0564435   -0.1415590    0.2544461
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed           0.0231092   -0.1304694    0.1766878
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.0469510   -0.1273525    0.0334505
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0767338   -0.1006204   -0.0528473
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.0581990   -1.1703649   -0.9460331
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0178033   -0.0633933    0.0277868
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed           0.1446975    0.0267816    0.2626134
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1852527   -0.3542823   -0.0162230
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.1017859   -0.2529793    0.0494074
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0780513   -0.1862527    0.0301501
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -0.2718040   -0.4474446   -0.0961634
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0576353   -0.2268301    0.1115594
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0727877   -0.2019131    0.3474884
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -0.0709768   -0.2782112    0.1362577
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.1648650   -0.0522322    0.3819621
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.0084982   -0.0381968    0.0212005
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.1348829   -0.2760310    0.0062652
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0107484   -0.0378583    0.0163616
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0641843   -0.0778847   -0.0504839
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0162015   -0.0537681    0.0213652
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed           0.0441732   -0.0577616    0.1461079
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1413316   -0.3438024    0.0611392
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0329533   -0.1644265    0.0985199
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0480909   -0.1501900    0.0540082
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -0.0339576   -0.2029121    0.1349968
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.1384573    0.0011049    0.2758096
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0607754   -0.0692230    0.1907738
24 months   ki1000109-EE              PAKISTAN                       optimal              observed          -0.0879760   -0.3773604    0.2014084
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.2501534   -0.5072701    0.0069632
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.0707815   -0.2109772    0.0694141
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0014669   -0.1094955    0.1065618
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0223645   -0.0594684    0.0147394
