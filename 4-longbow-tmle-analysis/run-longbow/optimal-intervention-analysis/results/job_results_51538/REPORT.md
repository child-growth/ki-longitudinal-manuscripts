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
* W_mage
* meducyrs
* month
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_month
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        anywast06    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               198    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                57    255
Birth       ki0047075b-MAL-ED          BRAZIL                         0               178    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                13    191
Birth       ki0047075b-MAL-ED          INDIA                          0               144    206
Birth       ki0047075b-MAL-ED          INDIA                          1                62    206
Birth       ki0047075b-MAL-ED          NEPAL                          0               141    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                32    173
Birth       ki0047075b-MAL-ED          PERU                           0               275    286
Birth       ki0047075b-MAL-ED          PERU                           1                11    286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               230    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                31    261
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               117    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 6    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                36     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                54     90
Birth       ki1000108-IRC              INDIA                          0               164    388
Birth       ki1000108-IRC              INDIA                          1               224    388
Birth       ki1000109-EE               PAKISTAN                       0                 0      2
Birth       ki1000109-EE               PAKISTAN                       1                 2      2
Birth       ki1000109-ResPak           PAKISTAN                       0                 6      7
Birth       ki1000109-ResPak           PAKISTAN                       1                 1      7
Birth       ki1101329-Keneba           GAMBIA                         0              1287   1541
Birth       ki1101329-Keneba           GAMBIA                         1               254   1541
Birth       ki1114097-CMIN             BANGLADESH                     0                 5      8
Birth       ki1114097-CMIN             BANGLADESH                     1                 3      8
Birth       ki1114097-CMIN             PERU                           0                10     10
Birth       ki1114097-CMIN             PERU                           1                 0     10
Birth       ki1114097-CONTENT          PERU                           0                 2      2
Birth       ki1114097-CONTENT          PERU                           1                 0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               184    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                57    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               195    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                14    209
6 months    ki0047075b-MAL-ED          INDIA                          0               162    236
6 months    ki0047075b-MAL-ED          INDIA                          1                74    236
6 months    ki0047075b-MAL-ED          NEPAL                          0               193    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                43    236
6 months    ki0047075b-MAL-ED          PERU                           0               263    273
6 months    ki0047075b-MAL-ED          PERU                           1                10    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               226    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                28    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               236    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               174    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               192    366
6 months    ki1000108-IRC              INDIA                          0               165    407
6 months    ki1000108-IRC              INDIA                          1               242    407
6 months    ki1000109-EE               PAKISTAN                       0               270    372
6 months    ki1000109-EE               PAKISTAN                       1               102    372
6 months    ki1000109-ResPak           PAKISTAN                       0               140    235
6 months    ki1000109-ResPak           PAKISTAN                       1                95    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               435    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               148    583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1728   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               301   2029
6 months    ki1101329-Keneba           GAMBIA                         0              1695   2057
6 months    ki1101329-Keneba           GAMBIA                         1               362   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               270    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                10    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0               391    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               172    563
6 months    ki1114097-CMIN             BANGLADESH                     0               201    243
6 months    ki1114097-CMIN             BANGLADESH                     1                42    243
6 months    ki1114097-CMIN             PERU                           0               581    627
6 months    ki1114097-CMIN             PERU                           1                46    627
6 months    ki1114097-CONTENT          PERU                           0               211    215
6 months    ki1114097-CONTENT          PERU                           1                 4    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               163    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                49    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               157    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                12    169
24 months   ki0047075b-MAL-ED          INDIA                          0               154    227
24 months   ki0047075b-MAL-ED          INDIA                          1                73    227
24 months   ki0047075b-MAL-ED          NEPAL                          0               187    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                41    228
24 months   ki0047075b-MAL-ED          PERU                           0               193    201
24 months   ki0047075b-MAL-ED          PERU                           1                 8    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               214    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                24    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               203    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               174    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               194    368
24 months   ki1000108-IRC              INDIA                          0               166    409
24 months   ki1000108-IRC              INDIA                          1               243    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               431    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               146    577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      6
24 months   ki1101329-Keneba           GAMBIA                         0              1297   1564
24 months   ki1101329-Keneba           GAMBIA                         1               267   1564
24 months   ki1113344-GMS-Nepal        NEPAL                          0               351    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1               148    499
24 months   ki1114097-CMIN             BANGLADESH                     0               200    242
24 months   ki1114097-CMIN             BANGLADESH                     1                42    242
24 months   ki1114097-CMIN             PERU                           0               220    234
24 months   ki1114097-CMIN             PERU                           1                14    234
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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
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
![](/tmp/7aafb49b-a58f-40b2-8945-4d25a2dc97ba/cf99485a-fd22-454e-835b-9a93407aa424/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9891685   -1.2721705   -0.7061665
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3308356   -0.7436766    0.0820054
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8332657   -1.0914488   -0.5750826
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7414976   -1.0206071   -0.4623880
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8728929   -1.6932319   -0.0525540
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4194691   -0.7547462   -0.0841920
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3758995   -1.8894745   -0.8623244
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8641823   -1.1715769   -0.5567876
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.1132273   -0.1057031    0.3321577
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0994548   -0.0634077    0.2623172
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2108894   -1.3541235   -1.0676554
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4223002   -0.2704067    1.1150071
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3842465   -1.5851207   -1.1833723
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5938275   -0.7258254   -0.4618297
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8182292   -1.2307655   -0.4056929
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.2335853   -1.4040240   -1.0631467
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.8525097   -2.0093066   -1.6957127
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.4821921   -1.6934176   -1.2709665
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0993737   -1.2718556   -0.9268918
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.3059315   -2.4781345   -2.1337284
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.0112670   -1.3493486   -0.6731855
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0476660   -1.1356147   -0.9597173
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5382562   -0.6371761   -0.4393363
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8853752   -0.9346347   -0.8361157
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5383715   -1.6548610   -1.4218821
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2498986   -1.3738940   -1.1259031
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.9230147   -2.1115567   -1.7344727
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.4708548   -0.5483883   -0.3933213
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -2.0873357   -2.3479679   -1.8267034
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0814286   -0.0909571    0.2538144
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7622844   -1.9937434   -1.5308254
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.4464410   -1.6600494   -1.2328327
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.4510596   -2.2642115   -0.6379076
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.8590801   -2.2537954   -1.4643647
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5346222   -2.6754091   -2.3938352
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4863174   -2.6304678   -2.3421671
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.8656844   -1.9933979   -1.7379709
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5727046   -1.6727542   -1.4726549
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5662482   -1.6565050   -1.4759914
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8998976   -2.0278808   -1.7719145
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.4860341   -2.6239171   -2.3481511
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.5702337   -1.7858726   -1.3545948


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0715686   -1.1969582   -0.9461791
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9163986   -1.0263706   -0.8064266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7064368   -0.8290380   -0.5838355
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0341467   -0.0293905    0.0976838
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4251321   -1.5673802   -1.2828839
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.4029220   -1.6085859   -1.1972581
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9121372   -0.9593127   -0.8649617
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5785476   -1.6926664   -1.4644288
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3321522   -1.4103691   -1.2539352
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CMIN             PERU                           observed             observed          -0.5098299   -0.5892202   -0.4304395
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5530299   -2.6529925   -2.4530672
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5604961   -1.6126979   -1.5082943
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8835905   -1.9681499   -1.7990312
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CMIN             PERU                           observed             observed          -1.4696439   -1.5956384   -1.3436493


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0824001   -0.3247483    0.1599480
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.4301068   -0.8460423   -0.0141713
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1773654   -0.3952040    0.0404733
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0325959   -0.1948431    0.2600348
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0435057   -0.8353671    0.7483558
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2869677   -0.5916844    0.0177490
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4420783   -0.0906678    0.9748245
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1012622   -0.3530039    0.1504795
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.4212685   -0.5598243   -0.2827128
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0653081   -0.2086994    0.0780832
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0052117   -0.0856110    0.0960345
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3712795   -1.0421930    0.2996340
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1638793    0.0209470    0.3068116
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0327682   -0.0703943    0.1359307
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.5085718   -0.9098972   -0.1072464
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1702094    0.0714000    0.2690187
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4923882    0.3595024    0.6252740
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0570600   -0.0934938    0.2076138
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1350325   -0.2445659   -0.0254992
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.1054610   -0.0137311    0.2246532
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.3916550   -0.6481242   -0.1351858
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0394380   -0.0857831    0.0069070
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0051827   -0.0893880    0.0790226
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0267620   -0.0525172   -0.0010069
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0401761   -0.0734036   -0.0069486
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0822536   -0.1865237    0.0220165
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed           0.1385771    0.0044751    0.2726791
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.0389751   -0.0731824   -0.0047678
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1442225   -0.0736378    0.3620827
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0395943   -0.0895955    0.0104069
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0835306   -0.2675908    0.1005297
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1712217    0.0076894    0.3347540
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2990399   -1.0926974    0.4946175
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2362439   -0.1368969    0.6093848
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0712657   -0.1355471   -0.0069843
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0667125   -0.1699650    0.0365401
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0832068   -0.0060737    0.1724873
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0134133   -0.0583779    0.0315513
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed           0.0057521   -0.0636117    0.0751160
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0163071   -0.0806007    0.1132149
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0249163   -0.0814444    0.0316117
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.1005898   -0.0772441    0.2784238
