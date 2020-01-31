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

**Intervention Variable:** anywast06

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        anywast06    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               177    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                52    229
Birth       ki0047075b-MAL-ED          BRAZIL                         0                62     65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 3     65
Birth       ki0047075b-MAL-ED          INDIA                          0                33     47
Birth       ki0047075b-MAL-ED          INDIA                          1                14     47
Birth       ki0047075b-MAL-ED          NEPAL                          0                23     27
Birth       ki0047075b-MAL-ED          NEPAL                          1                 4     27
Birth       ki0047075b-MAL-ED          PERU                           0               223    233
Birth       ki0047075b-MAL-ED          PERU                           1                10    233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               101    122
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                21    122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               119    124
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 5    124
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                37     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                55     92
Birth       ki1000108-IRC              INDIA                          0               164    388
Birth       ki1000108-IRC              INDIA                          1               224    388
Birth       ki1000109-EE               PAKISTAN                       0               156    240
Birth       ki1000109-EE               PAKISTAN                       1                84    240
Birth       ki1000109-ResPak           PAKISTAN                       0                28     42
Birth       ki1000109-ResPak           PAKISTAN                       1                14     42
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               396    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               143    539
Birth       ki1101329-Keneba           GAMBIA                         0               994   1542
Birth       ki1101329-Keneba           GAMBIA                         1               548   1542
Birth       ki1113344-GMS-Nepal        NEPAL                          0               422    684
Birth       ki1113344-GMS-Nepal        NEPAL                          1               262    684
Birth       ki1114097-CMIN             BANGLADESH                     0                15     20
Birth       ki1114097-CMIN             BANGLADESH                     1                 5     20
Birth       ki1114097-CONTENT          PERU                           0                 2      2
Birth       ki1114097-CONTENT          PERU                           1                 0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               183    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                58    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               194    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                15    209
6 months    ki0047075b-MAL-ED          INDIA                          0               159    236
6 months    ki0047075b-MAL-ED          INDIA                          1                77    236
6 months    ki0047075b-MAL-ED          NEPAL                          0               188    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                48    236
6 months    ki0047075b-MAL-ED          PERU                           0               263    273
6 months    ki0047075b-MAL-ED          PERU                           1                10    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               223    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                31    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               234    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               177    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               188    365
6 months    ki1000108-IRC              INDIA                          0               180    407
6 months    ki1000108-IRC              INDIA                          1               227    407
6 months    ki1000109-EE               PAKISTAN                       0               249    373
6 months    ki1000109-EE               PAKISTAN                       1               124    373
6 months    ki1000109-ResPak           PAKISTAN                       0               143    239
6 months    ki1000109-ResPak           PAKISTAN                       1                96    239
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               450    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               154    604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1728   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               301   2029
6 months    ki1101329-Keneba           GAMBIA                         0              1441   2056
6 months    ki1101329-Keneba           GAMBIA                         1               615   2056
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               270    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                10    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0               336    564
6 months    ki1113344-GMS-Nepal        NEPAL                          1               228    564
6 months    ki1114097-CMIN             BANGLADESH                     0               201    243
6 months    ki1114097-CMIN             BANGLADESH                     1                42    243
6 months    ki1114097-CONTENT          PERU                           0               211    215
6 months    ki1114097-CONTENT          PERU                           1                 4    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               162    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                50    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               156    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                13    169
24 months   ki0047075b-MAL-ED          INDIA                          0               151    227
24 months   ki0047075b-MAL-ED          INDIA                          1                76    227
24 months   ki0047075b-MAL-ED          NEPAL                          0               182    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                46    228
24 months   ki0047075b-MAL-ED          PERU                           0               193    201
24 months   ki0047075b-MAL-ED          PERU                           1                 8    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               212    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                26    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               202    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                12    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               176    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               190    366
24 months   ki1000108-IRC              INDIA                          0               181    409
24 months   ki1000108-IRC              INDIA                          1               228    409
24 months   ki1000109-EE               PAKISTAN                       0               109    167
24 months   ki1000109-EE               PAKISTAN                       1                58    167
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               432    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               146    578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      6
24 months   ki1101329-Keneba           GAMBIA                         0              1091   1563
24 months   ki1101329-Keneba           GAMBIA                         1               472   1563
24 months   ki1113344-GMS-Nepal        NEPAL                          0               300    488
24 months   ki1113344-GMS-Nepal        NEPAL                          1               188    488
24 months   ki1114097-CMIN             BANGLADESH                     0               200    242
24 months   ki1114097-CMIN             BANGLADESH                     1                42    242
24 months   ki1114097-CONTENT          PERU                           0               161    164
24 months   ki1114097-CONTENT          PERU                           1                 3    164


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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/45cdb23b-ed2c-4921-9519-aa544ab11a5d/d2ca1593-f3bf-462b-b2a1-5765d8b54999/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1006669   -1.3830208   -0.8183130
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0089783   -1.6879007   -0.3300559
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.9199760   -1.7349543   -0.1049976
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2593333   -0.7454647    0.2267981
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.7511674   -2.5744035   -0.9279314
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7971600   -1.1336394   -0.4606805
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.1128413   -0.1035979    0.3292804
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -1.4630595   -1.8401828   -1.0859362
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.6183737   -1.5658520    0.3291046
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8429295   -0.9373213   -0.7485377
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.4120072    0.3002736    0.5237408
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.8764752   -0.9977167   -0.7552337
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.6399700   -1.9501798   -1.3297602
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1641980   -1.2898273   -1.0385688
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2448457   -0.3405268    0.8302183
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2432955   -1.4632002   -1.0233909
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5257134   -0.6980143   -0.3534124
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1380867   -1.8842875   -0.3918858
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9688196   -1.1691398   -0.7684994
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6485965   -2.1821209   -1.1150721
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2948322   -1.4965586   -1.0931058
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0728540   -1.2503539   -0.8953541
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.1670214   -2.3458120   -1.9882307
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.0391531   -1.3667571   -0.7115492
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0449491   -1.1304512   -0.9594471
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5393280   -0.5922886   -0.4863674
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.9433170   -1.0058080   -0.8808259
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5375701   -1.6552688   -1.4198715
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2557303   -1.3707798   -1.1406808
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.9107414   -2.1588526   -1.6626301
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -2.2132909   -2.4447512   -1.9818306
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0772514   -0.0855356    0.2400384
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7726737   -1.9943556   -1.5509918
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.4593623   -1.7103352   -1.2083893
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.9470545   -2.5540151   -1.3400939
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4466861   -1.8599131   -1.0334590
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6322152   -2.7697851   -2.4946453
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5223438   -2.6647863   -2.3799012
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7675258   -1.8987112   -1.6363403
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.8278031   -3.0128789   -2.6427274
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5798686   -1.6801179   -1.4796193
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5548173   -1.6311528   -1.4784818
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.9041220   -2.0500594   -1.7581846
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.4872502   -2.6256377   -2.3488627


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1041048   -1.2383048   -0.9699048
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.5877869   -0.7622273   -0.4133464
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1369355   -1.3453337   -0.9285373
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -1.8608750   -2.0482045   -1.6735455
Birth       ki1000109-ResPak           PAKISTAN                       observed             observed          -0.9800000   -1.4086438   -0.5513562
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0325486   -0.0310420    0.0961393
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0454532   -1.1235003   -0.9674062
Birth       ki1114097-CMIN             BANGLADESH                     observed             observed          -1.2030000   -1.6953191   -0.7106809
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2115254   -1.3298727   -1.0931782
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4241872   -1.5668135   -1.2815609
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.0835567   -2.2027557   -1.9643578
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.4314086   -1.6374838   -1.2253335
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9116762   -0.9588660   -0.8644864
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5785476   -1.6926664   -1.4644288
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5489071   -2.6476125   -2.4502017
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5774758   -1.6295950   -1.5253566
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0034379   -0.2402441    0.2333683
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1946387   -0.7401050    0.3508276
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0371863   -0.7444293    0.8188018
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3284536   -0.7648704    0.1079633
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6142320   -0.2016601    1.4301241
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1640357   -0.4392916    0.1112203
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.4208825   -0.5578967   -0.2838683
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.3978155   -0.6897307   -0.1059002
Birth       ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.3616263   -1.1222731    0.3990205
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0421726   -0.1149140    0.0305688
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.3794585   -0.4674729   -0.2914442
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1689780   -0.2667466   -0.0712095
Birth       ki1114097-CMIN             BANGLADESH                     optimal              observed           0.4369700   -0.1045332    0.9784731
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0407951   -0.1167671    0.0351770
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1972700   -0.7556423    0.3611023
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0317701   -0.1409500    0.2044902
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0358686   -0.1673119    0.0955748
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1855794   -0.9090915    0.5379328
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0945006   -0.2796623    0.0906611
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2798516   -0.2401187    0.7998219
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1293550   -0.2715030    0.0127930
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1615522   -0.2772026   -0.0459019
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.0834646   -0.0316867    0.1986159
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.3922555   -0.6434058   -0.1411052
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0467424   -0.0921006   -0.0013841
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0041109   -0.0249387    0.0167169
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0316408   -0.0096627    0.0729443
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0409775   -0.0754366   -0.0065184
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0951090   -0.1823791   -0.0078389
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed           0.1263038   -0.0526946    0.3053022
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2348946    0.0500041    0.4197852
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0711370   -0.1493988    0.0071248
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1135157   -0.2927952    0.0657638
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1517745   -0.0617315    0.3652805
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1945835   -0.4013527    0.7905197
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1983735   -0.5803952    0.1836482
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0133456   -0.0512128    0.0245216
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0265633   -0.1276873    0.0745606
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0312517   -0.1139724    0.0514689
24 months   ki1000109-EE               PAKISTAN                       optimal              observed           0.1578131    0.0311541    0.2844721
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0225535   -0.0663141    0.0212071
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0226585   -0.0758234    0.0305064
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0167040   -0.0901257    0.1235336
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0237002   -0.0803755    0.0329752
