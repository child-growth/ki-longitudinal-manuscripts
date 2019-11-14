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

agecat      studyid               country                        predfeed3    n_cell       n
----------  --------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1               164     202
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                38     202
Birth       ki0047075b-MAL-ED     BRAZIL                         1                23      55
Birth       ki0047075b-MAL-ED     BRAZIL                         0                32      55
Birth       ki0047075b-MAL-ED     INDIA                          1                27      39
Birth       ki0047075b-MAL-ED     INDIA                          0                12      39
Birth       ki0047075b-MAL-ED     NEPAL                          1                14      25
Birth       ki0047075b-MAL-ED     NEPAL                          0                11      25
Birth       ki0047075b-MAL-ED     PERU                           1               145     218
Birth       ki0047075b-MAL-ED     PERU                           0                73     218
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                33      99
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                66      99
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                24      95
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                71      95
Birth       ki1000109-EE          PAKISTAN                       1                22      22
Birth       ki1000109-EE          PAKISTAN                       0                 0      22
Birth       ki1113344-GMS-Nepal   NEPAL                          1               352     422
Birth       ki1113344-GMS-Nepal   NEPAL                          0                70     422
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1             10997   12129
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0              1132   12129
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                89      97
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 8      97
6 months    ki0047075b-MAL-ED     BANGLADESH                     1               191     233
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                42     233
6 months    ki0047075b-MAL-ED     BRAZIL                         1                93     187
6 months    ki0047075b-MAL-ED     BRAZIL                         0                94     187
6 months    ki0047075b-MAL-ED     INDIA                          1               147     210
6 months    ki0047075b-MAL-ED     INDIA                          0                63     210
6 months    ki0047075b-MAL-ED     NEPAL                          1               113     227
6 months    ki0047075b-MAL-ED     NEPAL                          0               114     227
6 months    ki0047075b-MAL-ED     PERU                           1               176     270
6 months    ki0047075b-MAL-ED     PERU                           0                94     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                63     244
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               181     244
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                64     212
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               148     212
6 months    ki1000109-EE          PAKISTAN                       1                39      39
6 months    ki1000109-EE          PAKISTAN                       0                 0      39
6 months    ki1113344-GMS-Nepal   NEPAL                          1               367     441
6 months    ki1113344-GMS-Nepal   NEPAL                          0                74     441
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1              8481    9289
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0               808    9289
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                76      88
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                12      88
24 months   ki0047075b-MAL-ED     BANGLADESH                     1               168     205
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                37     205
24 months   ki0047075b-MAL-ED     BRAZIL                         1                79     152
24 months   ki0047075b-MAL-ED     BRAZIL                         0                73     152
24 months   ki0047075b-MAL-ED     INDIA                          1               139     202
24 months   ki0047075b-MAL-ED     INDIA                          0                63     202
24 months   ki0047075b-MAL-ED     NEPAL                          1               110     220
24 months   ki0047075b-MAL-ED     NEPAL                          0               110     220
24 months   ki0047075b-MAL-ED     PERU                           1               131     198
24 months   ki0047075b-MAL-ED     PERU                           0                67     198
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60     228
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               168     228
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                54     184
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               130     184
24 months   ki1000109-EE          PAKISTAN                       1                20      20
24 months   ki1000109-EE          PAKISTAN                       0                 0      20
24 months   ki1113344-GMS-Nepal   NEPAL                          1               322     384
24 months   ki1113344-GMS-Nepal   NEPAL                          0                62     384
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              4381    4795
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               414    4795
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1               135     150
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                15     150


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
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/fba59c80-9b18-4e69-8165-ca7f2957636e/e871743b-e8b2-4c88-ae3d-edc3f5048b5e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.8896464   -1.1387282   -0.6405645
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.5708694    0.0127757    1.1289630
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.5320342   -0.8933434   -0.1707250
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.6735808   -1.2945875   -0.0525742
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed           0.0266671   -0.1293010    0.1826353
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.1907781   -0.5404325    0.1588762
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.3127082    0.9489822    1.6764341
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.0589486   -1.2356124   -0.8822847
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.7704426   -0.8307548   -0.7101303
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.5330738   -0.7558970   -0.3102505
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.2261693   -0.4216093   -0.0307292
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.9441842    0.7001681    1.1882004
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.6947647   -0.9356077   -0.4539216
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed           0.1930656    0.0070659    0.3790653
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed           0.9943181    0.7942155    1.1944208
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.6299081    0.3364357    0.9233806
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8241563    0.5762164    1.0720963
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.7008929   -0.9243707   -0.4774150
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.5879270   -0.6596921   -0.5161619
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.5178187   -0.8455127   -0.1901247
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.8057128   -1.0418548   -0.5695709
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.7348696    0.3892358    1.0805034
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.1102553   -1.3092650   -0.9112456
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.3689845   -0.5322573   -0.2057117
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed           0.2827193    0.0792131    0.4862255
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.5841265    0.3189305    0.8493225
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1008552   -0.1084247    0.3101351
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.0478227   -1.2543614   -0.8412840
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.2705274   -1.3681977   -1.1728570
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.1695497   -1.5165417   -0.8225578


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.9404455   -1.0889530   -0.7919381
Birth       ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.4316364    0.0969688    0.7663039
Birth       ki0047075b-MAL-ED     INDIA                          observed             observed          -0.9779487   -1.2664810   -0.6894164
Birth       ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.7944000   -1.1625222   -0.4262778
Birth       ki0047075b-MAL-ED     PERU                           observed             observed          -0.0335321   -0.1564905    0.0894263
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed          -0.1588889   -0.3845288    0.0667510
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7996842    0.5874808    1.0118876
Birth       ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.0991706   -1.2073693   -0.9909719
Birth       kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -0.7822228   -0.8038489   -0.7605966
Birth       kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -0.4347423   -0.6441144   -0.2253701
6 months    ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.1312375   -0.2633777    0.0009027
6 months    ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.9730392    0.7966084    1.1494700
6 months    ki0047075b-MAL-ED     INDIA                          observed             observed          -0.7190952   -0.8496984   -0.5884921
6 months    ki0047075b-MAL-ED     NEPAL                          observed             observed           0.1047871   -0.0305193    0.2400934
6 months    ki0047075b-MAL-ED     PERU                           observed             observed           1.0554753    0.9329598    1.1779909
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed           0.5569945    0.4061636    0.7078255
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5257626    0.3871543    0.6643709
6 months    ki1113344-GMS-Nepal   NEPAL                          observed             observed          -0.6198791   -0.7206518   -0.5191063
6 months    kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -0.6040726   -0.6286341   -0.5795110
6 months    kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -0.4110227   -0.6122701   -0.2097753
24 months   ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.8086098   -0.9307952   -0.6864243
24 months   ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.4943421    0.2716679    0.7170163
24 months   ki0047075b-MAL-ED     INDIA                          observed             observed          -0.9524010   -1.0710590   -0.8337430
24 months   ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.3806364   -0.4971717   -0.2641010
24 months   ki0047075b-MAL-ED     PERU                           observed             observed           0.1199242    0.0008627    0.2389858
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed           0.4181579    0.2964894    0.5398263
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0485870   -0.0868148    0.1839888
24 months   ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.1396441   -1.2416403   -1.0376479
24 months   kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.3119979   -1.3435475   -1.2804484
24 months   kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.0096000   -1.1619164   -0.8572836


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.0507992   -0.2569991    0.1554008
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.1392330   -0.5765853    0.2981193
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.4459146   -0.7707020   -0.1211271
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.1208192   -0.6841282    0.4424898
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.0601993   -0.1589827    0.0385842
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.0318893   -0.1936172    0.2573958
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5130239   -0.8496029   -0.1764450
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0402220   -0.1976377    0.1171936
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0117802   -0.0682236    0.0446633
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed           0.0983315   -0.0159814    0.2126444
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.0949318   -0.0482795    0.2381431
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.0288550   -0.1474120    0.2051220
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.0243306   -0.2075785    0.1589174
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0882785   -0.2246325    0.0480754
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed           0.0611572   -0.0839847    0.2062991
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.0729136   -0.3398158    0.1939886
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2983938   -0.5056482   -0.0911393
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed           0.0810138   -0.1241396    0.2861672
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0161455   -0.0835216    0.0512305
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed           0.1067960   -0.1727342    0.3863262
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.0028969   -0.2049401    0.1991463
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.2405275   -0.4782205   -0.0028344
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed           0.1578543    0.0095150    0.3061936
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0116519   -0.1250171    0.1017133
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -0.1627950   -0.3130022   -0.0125879
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.1659686   -0.4001980    0.0682608
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0522683   -0.2439656    0.1394290
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0918214   -0.2771557    0.0935130
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0414705   -0.1314087    0.0484676
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed           0.1599497   -0.1822707    0.5021701
