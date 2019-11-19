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
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1              9638   10634
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0               996   10634
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
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1              8500    9310
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0               810    9310
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
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              4417    4833
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               416    4833
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
![](/tmp/0b4c23ee-f06c-48c4-a409-14447b709bbb/c91770b1-fe1b-417e-94f2-818fc99d1f3b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.9750072   -1.1473184   -0.8026960
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.6336651    0.1105144    1.1568157
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.7880219   -1.1947583   -0.3812855
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.8243698   -1.2880675   -0.3606721
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed           0.0467961   -0.1043599    0.1979522
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.0003058   -0.3004665    0.2998549
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.3439411    0.9640780    1.7238041
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.1408308   -1.3168117   -0.9648499
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.7474366   -0.8136462   -0.6812269
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.4153486   -0.6382974   -0.1923999
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.2056178   -0.4127778    0.0015422
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed           1.0317031    0.7847059    1.2787002
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.6448523   -0.8606618   -0.4290428
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed           0.1627430   -0.0224160    0.3479020
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed           1.1343303    0.9386455    1.3300152
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.6509245    0.3624545    0.9393945
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8439864    0.5931338    1.0948390
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.6677998   -0.9024199   -0.4331797
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.5636407   -0.6296156   -0.4976658
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.5115482   -0.8126742   -0.2104223
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.7709807   -1.0209956   -0.5209659
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.7222820    0.3836214    1.0609425
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.0873103   -1.2824009   -0.8922197
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.3577634   -0.5276927   -0.1878342
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed           0.2287033    0.0163879    0.4410186
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.5502440    0.3034054    0.7970825
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1078559   -0.1114241    0.3271360
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.0590843   -1.2696526   -0.8485160
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.3249726   -1.4372320   -1.2127132
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.0402308   -1.3976179   -0.6828436


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.9411386   -1.0895370   -0.7927402
Birth       ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.4316364    0.0969688    0.7663039
Birth       ki0047075b-MAL-ED     INDIA                          observed             observed          -0.9779487   -1.2664810   -0.6894164
Birth       ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.7944000   -1.1625222   -0.4262778
Birth       ki0047075b-MAL-ED     PERU                           observed             observed          -0.0335321   -0.1564905    0.0894263
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed          -0.1588889   -0.3845288    0.0667510
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7996842    0.5874808    1.0118876
Birth       ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.0991706   -1.2073693   -0.9909719
Birth       kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -0.7798636   -0.8022140   -0.7575133
Birth       kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -0.4347423   -0.6441144   -0.2253701
6 months    ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.1304936   -0.2625419    0.0015547
6 months    ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.9754144    0.7990651    1.1517638
6 months    ki0047075b-MAL-ED     INDIA                          observed             observed          -0.7185992   -0.8491469   -0.5880515
6 months    ki0047075b-MAL-ED     NEPAL                          observed             observed           0.1041483   -0.0311352    0.2394318
6 months    ki0047075b-MAL-ED     PERU                           observed             observed           1.0514136    0.9289176    1.1739096
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed           0.5564071    0.4055220    0.7072922
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5257626    0.3871543    0.6643709
6 months    ki1113344-GMS-Nepal   NEPAL                          observed             observed          -0.6198791   -0.7206518   -0.5191063
6 months    kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -0.6040977   -0.6286619   -0.5795335
6 months    kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -0.4110227   -0.6122701   -0.2097753
24 months   ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -0.8076829   -0.9296166   -0.6857493
24 months   ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.4981140    0.2760418    0.7201863
24 months   ki0047075b-MAL-ED     INDIA                          observed             observed          -0.9516832   -1.0703961   -0.8329703
24 months   ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.3790455   -0.4958857   -0.2622052
24 months   ki0047075b-MAL-ED     PERU                           observed             observed           0.1176052   -0.0015211    0.2367315
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed           0.4120797    0.2900939    0.5340654
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0495743   -0.0857535    0.1849021
24 months   ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.1396441   -1.2416403   -1.0376479
24 months   kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.3109518   -1.3423299   -1.2795737
24 months   kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.0096000   -1.1619164   -0.8572836


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.0338686   -0.0829189    0.1506561
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.2020287   -0.6135281    0.2094706
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.1899268   -0.5370412    0.1571875
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed           0.0299698   -0.4645468    0.5244864
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.0803282   -0.1742384    0.0135819
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.1585831   -0.3616706    0.0445044
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5442569   -0.8895592   -0.1989545
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed           0.0416602   -0.1252627    0.2085831
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0324271   -0.0945858    0.0297316
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0193936   -0.0624049    0.0236176
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.0751242   -0.0678497    0.2180981
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.0562886   -0.2349071    0.1223298
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.0737469   -0.2343752    0.0868813
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0585947   -0.1943187    0.0771294
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed          -0.0829168   -0.2239658    0.0581323
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.0945174   -0.3585741    0.1695393
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3182238   -0.5279838   -0.1084639
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed           0.0479207   -0.1605373    0.2563788
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0404570   -0.1003704    0.0194564
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed           0.1005255   -0.1551397    0.3561907
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.0367022   -0.2570464    0.1836420
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.2241679   -0.4554089    0.0070731
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed           0.1356271   -0.0248837    0.2961380
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0212820   -0.1350249    0.0924609
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -0.1110981   -0.2668239    0.0446278
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.1381643   -0.3542837    0.0779552
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0582816   -0.2599097    0.1433464
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0805598   -0.2697872    0.1086677
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed           0.0140208   -0.0900950    0.1181366
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed           0.0306308   -0.3210604    0.3823219
