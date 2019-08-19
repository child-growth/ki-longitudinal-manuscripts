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

**Intervention Variable:** predfeed3

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

agecat      studyid               country                        predfeed3    n_cell       n
----------  --------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1               205     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                35     240
Birth       ki0047075b-MAL-ED     BRAZIL                         1               101     185
Birth       ki0047075b-MAL-ED     BRAZIL                         0                84     185
Birth       ki0047075b-MAL-ED     INDIA                          1               152     196
Birth       ki0047075b-MAL-ED     INDIA                          0                44     196
Birth       ki0047075b-MAL-ED     NEPAL                          1                99     171
Birth       ki0047075b-MAL-ED     NEPAL                          0                72     171
Birth       ki0047075b-MAL-ED     PERU                           1               183     272
Birth       ki0047075b-MAL-ED     PERU                           0                89     272
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                87     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0               146     233
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                50     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                69     119
Birth       ki1000109-EE          PAKISTAN                       1                 2       2
Birth       ki1000109-EE          PAKISTAN                       0                 0       2
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1             16832   18710
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0              1878   18710
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                37      40
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 3      40
6 months    ki0047075b-MAL-ED     BANGLADESH                     1               203     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                34     237
6 months    ki0047075b-MAL-ED     BRAZIL                         1               116     209
6 months    ki0047075b-MAL-ED     BRAZIL                         0                93     209
6 months    ki0047075b-MAL-ED     INDIA                          1               178     233
6 months    ki0047075b-MAL-ED     INDIA                          0                55     233
6 months    ki0047075b-MAL-ED     NEPAL                          1               132     233
6 months    ki0047075b-MAL-ED     NEPAL                          0               101     233
6 months    ki0047075b-MAL-ED     PERU                           1               183     270
6 months    ki0047075b-MAL-ED     PERU                           0                87     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                86     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               162     248
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                91     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               149     240
6 months    ki1000109-EE          PAKISTAN                       1               346     371
6 months    ki1000109-EE          PAKISTAN                       0                25     371
6 months    ki1113344-GMS-Nepal   NEPAL                          1               379     458
6 months    ki1113344-GMS-Nepal   NEPAL                          0                79     458
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1             14797   16281
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0              1484   16281
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                77      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                12      89
24 months   ki0047075b-MAL-ED     BANGLADESH                     1               178     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                30     208
24 months   ki0047075b-MAL-ED     BRAZIL                         1                98     169
24 months   ki0047075b-MAL-ED     BRAZIL                         0                71     169
24 months   ki0047075b-MAL-ED     INDIA                          1               170     225
24 months   ki0047075b-MAL-ED     INDIA                          0                55     225
24 months   ki0047075b-MAL-ED     NEPAL                          1               128     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                97     225
24 months   ki0047075b-MAL-ED     PERU                           1               137     199
24 months   ki0047075b-MAL-ED     PERU                           0                62     199
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                81     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               151     232
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                79     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               131     210
24 months   ki1113344-GMS-Nepal   NEPAL                          1               336     404
24 months   ki1113344-GMS-Nepal   NEPAL                          0                68     404
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              7520    8341
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               821    8341
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1               137     152
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                15     152


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d4a310bb-fe81-44c5-b472-5939bec3ed77/625d3677-9db5-4860-9207-37d7014473c5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -1.1860988   -1.4291917   -0.9430059
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.6698682   -0.8833049   -0.4564316
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.0395167   -1.2954558   -0.7835776
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.6184155   -0.8226248   -0.4142063
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.8523368   -1.0024128   -0.7022608
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.6754282   -0.8717072   -0.4791492
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6407751   -0.8808095   -0.4007407
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.5391894   -1.5590610   -1.5193179
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -1.1758423   -1.2999923   -1.0516923
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.1634350   -0.0550688    0.3819388
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.0264441   -1.2429239   -0.8099643
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.6311316   -0.7997108   -0.4625525
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed          -1.4512651   -1.5950002   -1.3075299
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -1.0679360   -1.2743664   -0.8615056
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2830334   -1.4531465   -1.1129203
6 months    ki1000109-EE          PAKISTAN                       optimal              observed          -2.3933637   -2.7653895   -2.0213378
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.2881989   -1.4559219   -1.1204759
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.2934113   -1.3168113   -1.2700113
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.1436897   -1.3309973   -0.9563822
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -1.9407684   -2.1699033   -1.7116335
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.3430111    0.0727207    0.6133016
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.5334548   -1.7994016   -1.2675080
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -1.2141961   -1.3975991   -1.0307932
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -1.7670688   -1.9299319   -1.6042057
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -1.5662394   -1.7451983   -1.3872804
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5290634   -2.7529638   -2.3051631
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.8541654   -2.0355347   -1.6727960
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -2.0377666   -2.0974931   -1.9780401
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.7166185   -1.8607041   -1.5725328


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.0497083   -1.1780996   -0.9213171
Birth       ki0047075b-MAL-ED     BRAZIL                         observed             observed          -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED     INDIA                          observed             observed          -1.0098469   -1.1519586   -0.8677353
Birth       ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.7128070   -0.8704934   -0.5551207
Birth       ki0047075b-MAL-ED     PERU                           observed             observed          -0.9261397   -1.0389037   -0.8133757
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed          -0.7108584   -0.8390511   -0.5826657
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9205882   -1.1394357   -0.7017408
Birth       kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.5457493   -1.5650991   -1.5263996
6 months    ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.2009705   -1.3199485   -1.0819924
6 months    ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA                          observed             observed          -1.2109514   -1.3300505   -1.0918522
6 months    ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.5557940   -0.6681063   -0.4434817
6 months    ki0047075b-MAL-ED     PERU                           observed             observed          -1.3229136   -1.4307207   -1.2151065
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed          -1.0640356   -1.1937663   -0.9343049
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3516458   -1.4765824   -1.2267092
6 months    ki1000109-EE          PAKISTAN                       observed             observed          -2.2056604   -2.3285064   -2.0828144
6 months    ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.3235298   -1.4103807   -1.2366790
6 months    kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.3060279   -1.3292905   -1.2827653
6 months    kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.2339326   -1.4137041   -1.0541611
24 months   ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.9391587   -2.0665449   -1.8117724
24 months   ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED     INDIA                          observed             observed          -1.8433556   -1.9704665   -1.7162446
24 months   ki0047075b-MAL-ED     NEPAL                          observed             observed          -1.2693778   -1.3896188   -1.1491367
24 months   ki0047075b-MAL-ED     PERU                           observed             observed          -1.7440201   -1.8648503   -1.6231899
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed          -1.6114440   -1.7486349   -1.4742530
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6159762   -2.7525555   -2.4793968
24 months   ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.8788036   -1.9703700   -1.7872372
24 months   kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -2.0111797   -2.0396837   -1.9826758
24 months   kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.7671053   -1.9017670   -1.6324435


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.1363905   -0.0838750    0.3566559
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.0652128   -0.2134639    0.0830382
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed           0.0296698   -0.1649343    0.2242738
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0943915   -0.2309260    0.0421430
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.0738029   -0.1966259    0.0490200
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.0354302   -0.1806661    0.1098058
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2798131   -0.5086757   -0.0509506
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0065599   -0.0119973   -0.0011225
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.0251282   -0.0816786    0.0314223
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.1124142   -0.2734518    0.0486234
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.1845073   -0.3658029   -0.0032117
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed           0.0753377   -0.0475278    0.1982032
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed           0.1283515    0.0231316    0.2335714
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.0039004   -0.1403057    0.1481065
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0686124   -0.2097521    0.0725272
6 months    ki1000109-EE          PAKISTAN                       optimal              observed           0.1877033   -0.1650291    0.5404357
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0353309   -0.1749096    0.1042477
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0126166   -0.0195854   -0.0056478
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0902429   -0.1785603   -0.0019255
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.0016097   -0.2063748    0.2095943
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.3011768   -0.5064316   -0.0959221
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.3099008   -0.5404684   -0.0793331
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0551816   -0.1888791    0.0785158
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed           0.0230487   -0.1054573    0.1515546
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.0452046   -0.1396732    0.0492640
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0869128   -0.2623438    0.0885183
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0246383   -0.1772797    0.1280032
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed           0.0265869   -0.0247009    0.0778746
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0504868   -0.0887188   -0.0122548
