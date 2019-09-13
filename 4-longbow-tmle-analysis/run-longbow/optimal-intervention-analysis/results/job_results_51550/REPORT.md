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

**Intervention Variable:** exclfeed3

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
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
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
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
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

agecat      studyid                    country                        exclfeed3    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               173     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                67     240
Birth       ki0047075b-MAL-ED          BRAZIL                         1                67     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0               118     185
Birth       ki0047075b-MAL-ED          INDIA                          1               123     196
Birth       ki0047075b-MAL-ED          INDIA                          0                73     196
Birth       ki0047075b-MAL-ED          NEPAL                          1                61     171
Birth       ki0047075b-MAL-ED          NEPAL                          0               110     171
Birth       ki0047075b-MAL-ED          PERU                           1                67     272
Birth       ki0047075b-MAL-ED          PERU                           0               205     272
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                32     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               201     233
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                39     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                80     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       ki1000108-IRC              INDIA                          1                 0      10
Birth       ki1000108-IRC              INDIA                          0                10      10
Birth       ki1000109-EE               PAKISTAN                       1                 2       2
Birth       ki1000109-EE               PAKISTAN                       0                 0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                48      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 2      50
Birth       ki1101329-Keneba           GAMBIA                         1              1196    1354
Birth       ki1101329-Keneba           GAMBIA                         0               158    1354
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             16824   18710
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1886   18710
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                37      40
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 3      40
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               172     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                65     237
6 months    ki0047075b-MAL-ED          BRAZIL                         1                81     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               128     209
6 months    ki0047075b-MAL-ED          INDIA                          1               141     233
6 months    ki0047075b-MAL-ED          INDIA                          0                92     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                85     233
6 months    ki0047075b-MAL-ED          NEPAL                          0               148     233
6 months    ki0047075b-MAL-ED          PERU                           1                67     270
6 months    ki0047075b-MAL-ED          PERU                           0               203     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                31     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               217     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                68     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               172     240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
6 months    ki1000108-IRC              INDIA                          1                 0      10
6 months    ki1000108-IRC              INDIA                          0                10      10
6 months    ki1000109-EE               PAKISTAN                       1               346     371
6 months    ki1000109-EE               PAKISTAN                       0                25     371
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               412     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               171     583
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1               379     458
6 months    ki1113344-GMS-Nepal        NEPAL                          0                79     458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             14792   16281
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              1489   16281
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                77      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                12      89
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               150     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                58     208
24 months   ki0047075b-MAL-ED          BRAZIL                         1                71     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                98     169
24 months   ki0047075b-MAL-ED          INDIA                          1               133     225
24 months   ki0047075b-MAL-ED          INDIA                          0                92     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                82     225
24 months   ki0047075b-MAL-ED          NEPAL                          0               143     225
24 months   ki0047075b-MAL-ED          PERU                           1                46     199
24 months   ki0047075b-MAL-ED          PERU                           0               153     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                27     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               205     232
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                57     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               153     210
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
24 months   ki1000108-IRC              INDIA                          1                 0      10
24 months   ki1000108-IRC              INDIA                          0                10      10
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               407     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               170     577
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1420
24 months   ki1101329-Keneba           GAMBIA                         0               146    1420
24 months   ki1113344-GMS-Nepal        NEPAL                          1               336     404
24 months   ki1113344-GMS-Nepal        NEPAL                          0                68     404
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              7517    8341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               824    8341
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               137     152
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     152


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/dc4e6680-3167-4096-8a75-1feebd8dd8db/8674c0f7-6cf4-44cf-aa04-1cb4233b48fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.0482594   -1.2931840   -0.8033347
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.5667621   -0.7818115   -0.3517128
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.9197828   -1.1142780   -0.7252875
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.4782910   -0.7242711   -0.2323108
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.9718694   -1.1048956   -0.8388432
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.9210374   -1.0706422   -0.7714325
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6621835   -0.9623901   -0.3619769
Birth       ki1101329-Keneba          GAMBIA                         optimal              observed           0.0749977   -0.0962690    0.2462645
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.5355908   -1.5553661   -1.5158154
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.0769757   -1.2485879   -0.9053634
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.2526838    0.0631430    0.4422246
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.2730929   -1.4882035   -1.0579824
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.4377760   -0.6068851   -0.2686669
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -1.4222262   -1.5755195   -1.2689329
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.7272146   -1.1264702   -0.3279590
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2847150   -1.5183202   -1.0511098
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -2.0936687   -2.3053827   -1.8819547
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -1.4877061   -1.6531098   -1.3223023
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -1.1185182   -1.2308147   -1.0062216
6 months    ki1101329-Keneba          GAMBIA                         optimal              observed          -0.9290027   -0.9830409   -0.8749644
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.2953380   -1.3885678   -1.2021081
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.2916651   -1.3150604   -1.2682698
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.1433061   -1.3295972   -0.9570150
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -2.0546146   -2.2716333   -1.8375959
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.2154723   -0.0046173    0.4355619
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.5909983   -1.7826101   -1.3993866
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -1.2096306   -1.3620726   -1.0571886
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -1.6675621   -1.8418936   -1.4932307
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -1.3818901   -1.7246380   -1.0391423
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6333924   -2.9171693   -2.3496155
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -1.4897231   -1.6423547   -1.3370914
24 months   ki1101329-Keneba          GAMBIA                         optimal              observed          -1.5579342   -1.6150316   -1.5008368
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -2.0747074   -2.2034758   -1.9459391
24 months   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -2.0269431   -2.0847746   -1.9691115
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.7169942   -1.8608422   -1.5731462


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.0497083   -1.1780996   -0.9213171
Birth       ki0047075b-MAL-ED         BRAZIL                         observed             observed          -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED         INDIA                          observed             observed          -1.0098469   -1.1519586   -0.8677353
Birth       ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.7128070   -0.8704934   -0.5551207
Birth       ki0047075b-MAL-ED         PERU                           observed             observed          -0.9261397   -1.0389037   -0.8133757
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -0.7108584   -0.8390511   -0.5826657
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9205882   -1.1394357   -0.7017408
Birth       ki1101329-Keneba          GAMBIA                         observed             observed           0.0135081   -0.0559902    0.0830065
Birth       kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.5457493   -1.5650991   -1.5263996
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.2009705   -1.3199485   -1.0819924
6 months    ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA                          observed             observed          -1.2109514   -1.3300505   -1.0918522
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.5557940   -0.6681063   -0.4434817
6 months    ki0047075b-MAL-ED         PERU                           observed             observed          -1.3229136   -1.4307207   -1.2151065
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.0640356   -1.1937663   -0.9343049
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3516458   -1.4765824   -1.2267092
6 months    ki1000109-EE              PAKISTAN                       observed             observed          -2.2056604   -2.3285064   -2.0828144
6 months    ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1101329-Keneba          GAMBIA                         observed             observed          -0.9489317   -1.0001696   -0.8976937
6 months    ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.3235298   -1.4103807   -1.2366790
6 months    kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.3060279   -1.3292905   -1.2827653
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.2339326   -1.4137041   -1.0541611
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.9391587   -2.0665449   -1.8117724
24 months   ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED         INDIA                          observed             observed          -1.8433556   -1.9704665   -1.7162446
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -1.2693778   -1.3896188   -1.1491367
24 months   ki0047075b-MAL-ED         PERU                           observed             observed          -1.7440201   -1.8648503   -1.6231899
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.6114440   -1.7486349   -1.4742530
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6159762   -2.7525555   -2.4793968
24 months   ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba          GAMBIA                         observed             observed          -1.5804688   -1.6348908   -1.5260468
24 months   ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.8788036   -1.9703700   -1.7872372
24 months   kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -2.0111797   -2.0396837   -1.9826758
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.7671053   -1.9017670   -1.6324435


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0014490   -0.1908042    0.1879063
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1683190   -0.3600741    0.0234362
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0900642   -0.2365768    0.0564485
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.2345161   -0.4413418   -0.0276903
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed           0.0457297   -0.0325242    0.1239836
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.2101790    0.1000937    0.3202642
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2584047   -0.4778258   -0.0389836
Birth       ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0614896   -0.2194419    0.0964627
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0101586   -0.0154070   -0.0049102
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.1239948   -0.2619409    0.0139513
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.2016631   -0.3512236   -0.0521026
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed           0.0621416   -0.0790972    0.2033803
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.1180180   -0.2456202    0.0095842
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           0.0993126   -0.0107386    0.2093639
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.3368211   -0.7090247    0.0353825
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0669308   -0.2508416    0.1169799
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -0.1119917   -0.3109643    0.0869810
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.0179824   -0.0394213    0.0753861
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed           0.0314141   -0.0457602    0.1085884
6 months    ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0199290   -0.0391783   -0.0006797
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.0281919   -0.0715179    0.0151341
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0143628   -0.0213112   -0.0074144
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0906265   -0.1781955   -0.0030575
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed           0.1154559   -0.0598818    0.2907936
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1736380   -0.3284874   -0.0187886
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.2523572   -0.4031713   -0.1015432
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0597472   -0.1491523    0.0296579
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -0.0764580   -0.2066399    0.0537240
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.2295538   -0.5596620    0.1005543
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0174162   -0.2172470    0.2520794
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.0963948   -0.2231831    0.0303936
24 months   ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0225346   -0.0410799   -0.0039892
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed           0.1959038    0.0870831    0.3047245
24 months   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed           0.0157634   -0.0342888    0.0658156
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0501111   -0.0875444   -0.0126777
