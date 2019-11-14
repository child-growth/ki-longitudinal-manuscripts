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

**Intervention Variable:** pers_wast

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

agecat      studyid                    country                        pers_wast    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               220    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 9    229
Birth       ki0047075b-MAL-ED          BRAZIL                         0                65     65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0     65
Birth       ki0047075b-MAL-ED          INDIA                          0                43     45
Birth       ki0047075b-MAL-ED          INDIA                          1                 2     45
Birth       ki0047075b-MAL-ED          NEPAL                          0                26     27
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1     27
Birth       ki0047075b-MAL-ED          PERU                           0               233    233
Birth       ki0047075b-MAL-ED          PERU                           1                 0    233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               111    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               123    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                80     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                12     92
Birth       ki1000108-IRC              INDIA                          0               319    387
Birth       ki1000108-IRC              INDIA                          1                68    387
Birth       ki1000109-EE               PAKISTAN                       0               224    240
Birth       ki1000109-EE               PAKISTAN                       1                16    240
Birth       ki1000109-ResPak           PAKISTAN                       0                30     34
Birth       ki1000109-ResPak           PAKISTAN                       1                 4     34
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               516    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                23    539
Birth       ki1101329-Keneba           GAMBIA                         0              1374   1419
Birth       ki1101329-Keneba           GAMBIA                         1                45   1419
Birth       ki1113344-GMS-Nepal        NEPAL                          0               521    585
Birth       ki1113344-GMS-Nepal        NEPAL                          1                64    585
Birth       ki1114097-CMIN             BANGLADESH                     0                16     18
Birth       ki1114097-CMIN             BANGLADESH                     1                 2     18
Birth       ki1114097-CONTENT          PERU                           0                 2      2
Birth       ki1114097-CONTENT          PERU                           1                 0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               234    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 7    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               208    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1    209
6 months    ki0047075b-MAL-ED          INDIA                          0               218    236
6 months    ki0047075b-MAL-ED          INDIA                          1                18    236
6 months    ki0047075b-MAL-ED          NEPAL                          0               230    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 6    236
6 months    ki0047075b-MAL-ED          PERU                           0               273    273
6 months    ki0047075b-MAL-ED          PERU                           1                 0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               252    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               247    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               313    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                52    365
6 months    ki1000108-IRC              INDIA                          0               337    406
6 months    ki1000108-IRC              INDIA                          1                69    406
6 months    ki1000109-EE               PAKISTAN                       0               347    373
6 months    ki1000109-EE               PAKISTAN                       1                26    373
6 months    ki1000109-ResPak           PAKISTAN                       0               202    227
6 months    ki1000109-ResPak           PAKISTAN                       1                25    227
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               590    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                14    604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1968   2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                51   2019
6 months    ki1101329-Keneba           GAMBIA                         0              1836   1897
6 months    ki1101329-Keneba           GAMBIA                         1                61   1897
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               267    276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 9    276
6 months    ki1113344-GMS-Nepal        NEPAL                          0               499    559
6 months    ki1113344-GMS-Nepal        NEPAL                          1                60    559
6 months    ki1114097-CMIN             BANGLADESH                     0               232    243
6 months    ki1114097-CMIN             BANGLADESH                     1                11    243
6 months    ki1114097-CONTENT          PERU                           0               215    215
6 months    ki1114097-CONTENT          PERU                           1                 0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               206    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               168    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    169
24 months   ki0047075b-MAL-ED          INDIA                          0               209    227
24 months   ki0047075b-MAL-ED          INDIA                          1                18    227
24 months   ki0047075b-MAL-ED          NEPAL                          0               222    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 6    228
24 months   ki0047075b-MAL-ED          PERU                           0               201    201
24 months   ki0047075b-MAL-ED          PERU                           1                 0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               236    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               214    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               311    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                55    366
24 months   ki1000108-IRC              INDIA                          0               339    408
24 months   ki1000108-IRC              INDIA                          1                69    408
24 months   ki1000109-EE               PAKISTAN                       0               156    167
24 months   ki1000109-EE               PAKISTAN                       1                11    167
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               565    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                13    578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      6
24 months   ki1101329-Keneba           GAMBIA                         0              1395   1442
24 months   ki1101329-Keneba           GAMBIA                         1                47   1442
24 months   ki1113344-GMS-Nepal        NEPAL                          0               430    479
24 months   ki1113344-GMS-Nepal        NEPAL                          1                49    479
24 months   ki1114097-CMIN             BANGLADESH                     0               233    242
24 months   ki1114097-CMIN             BANGLADESH                     1                 9    242
24 months   ki1114097-CONTENT          PERU                           0               164    164
24 months   ki1114097-CONTENT          PERU                           1                 0    164


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/90f773aa-2954-4dac-ada6-9646037cc51f/42e99625-ed1c-4549-bfb0-f874f3d1f39c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8811976   -2.0884730    0.3260777
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8617863   -1.0762656   -0.6473070
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0388246   -0.3670722    0.4447214
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -1.2970001   -2.1918240   -0.4021762
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8756109   -0.9530962   -0.7981256
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0543797   -0.2988034    0.4075629
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0337679   -1.2204859   -0.8470500
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3284713   -2.9187706    0.2618279
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.5303506   -1.8290659   -1.2316353
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5459239   -0.6594277   -0.4324202
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.4691392   -1.8073267   -1.1309516
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7282815   -1.0653645   -0.3911986
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.9837150   -2.1053605   -1.8620695
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.7571350   -1.3637882   -0.1504819
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0714589   -1.1460314   -0.9968864
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5797289   -0.6808022   -0.4786557
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.9052619   -0.9541402   -0.8563836
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5415896   -1.6569201   -1.4262590
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.3192983   -1.4010896   -1.2375070
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.7114377   -1.8490246   -1.5738507
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2922621   -1.8122954   -0.7722289
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.5779923   -2.0189355   -1.1370492
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.5266290   -1.6672350   -1.3860231
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4941917   -2.5977733   -2.3906102
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7685680   -1.9685514   -1.5685846
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.6319003   -2.7830424   -2.4807581
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6027414   -1.6685374   -1.5369455
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5407816   -1.5978643   -1.4836989
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8289479   -1.9254306   -1.7324652
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.5010240   -2.6288212   -2.3732267


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1041048   -1.2383048   -0.9699048
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3117313   -0.4727359   -0.1507267
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -1.8608750   -2.0482045   -1.6735455
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0432135   -0.0229516    0.1093787
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0554530   -1.1411259   -0.9697801
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2113701   -1.3298485   -1.0928916
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4241872   -1.5668135   -1.2815609
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2382964   -1.3698449   -1.1067479
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.0835567   -2.2027557   -1.9643578
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.3874523   -1.5959323   -1.1789723
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5450830   -0.5941754   -0.4959906
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9282048   -0.9770928   -0.8793169
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5734843   -1.6884116   -1.4585570
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3533244   -1.4319426   -1.2747062
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3118640   -1.4315132   -1.1922149
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5489071   -2.6476125   -2.4502017
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7989338   -1.8927769   -1.7050907
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5924094   -1.6461889   -1.5386298
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8938622   -1.9795205   -1.8082040
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2229072   -1.4022601    0.9564457
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0994093   -0.2144012    0.0155825
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.3505559   -0.7064727    0.0053609
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.5638749   -1.4293046    0.3015548
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0094911   -0.0226013    0.0036191
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0111662   -0.3588064    0.3364740
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0216851   -0.1900109    0.1466408
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1229803   -1.4333187    1.6792793
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3189806    0.0392837    0.5986774
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0151354   -0.0380798    0.0078090
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0449519   -0.2501895    0.3400934
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5100149   -0.8135303   -0.2064994
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0998417   -0.1602350   -0.0394484
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.6303173   -1.1998390   -0.0607955
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0202326   -0.0377794   -0.0026858
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0346460   -0.0530360    0.1223280
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0229429   -0.0353025   -0.0105834
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0318947   -0.0600986   -0.0036909
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0340261   -0.0644778   -0.0035743
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0729999   -0.1318483   -0.0141516
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6866530   -1.2094140   -0.1638919
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3068535   -0.7345863    0.1208794
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2147650    0.1079908    0.3215392
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0547154   -0.0994222   -0.0100086
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0303658   -0.2110820    0.1503504
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.0380897   -0.0692423   -0.0069372
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0003193   -0.0654741    0.0661127
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0516278   -0.0741190   -0.0291365
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0649143   -0.1188900   -0.0109385
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0099264   -0.0331451    0.0132922
