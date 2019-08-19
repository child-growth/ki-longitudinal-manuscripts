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

agecat      studyid                    country                        pers_wast    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               246    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 9    255
Birth       ki0047075b-MAL-ED          BRAZIL                         0               191    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0    191
Birth       ki0047075b-MAL-ED          INDIA                          0               191    206
Birth       ki0047075b-MAL-ED          INDIA                          1                15    206
Birth       ki0047075b-MAL-ED          NEPAL                          0               170    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3    173
Birth       ki0047075b-MAL-ED          PERU                           0               286    286
Birth       ki0047075b-MAL-ED          PERU                           1                 0    286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               255    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 6    261
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               123    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                78     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                12     90
Birth       ki1000108-IRC              INDIA                          0               319    388
Birth       ki1000108-IRC              INDIA                          1                69    388
Birth       ki1000109-EE               PAKISTAN                       0                 2      2
Birth       ki1000109-EE               PAKISTAN                       1                 0      2
Birth       ki1000109-ResPak           PAKISTAN                       0                 6      7
Birth       ki1000109-ResPak           PAKISTAN                       1                 1      7
Birth       ki1101329-Keneba           GAMBIA                         0              1507   1541
Birth       ki1101329-Keneba           GAMBIA                         1                34   1541
Birth       ki1114097-CMIN             BANGLADESH                     0                 5      8
Birth       ki1114097-CMIN             BANGLADESH                     1                 3      8
Birth       ki1114097-CMIN             PERU                           0                10     10
Birth       ki1114097-CMIN             PERU                           1                 0     10
Birth       ki1114097-CONTENT          PERU                           0                 2      2
Birth       ki1114097-CONTENT          PERU                           1                 0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               234    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 7    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               208    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1    209
6 months    ki0047075b-MAL-ED          INDIA                          0               218    236
6 months    ki0047075b-MAL-ED          INDIA                          1                18    236
6 months    ki0047075b-MAL-ED          NEPAL                          0               232    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 4    236
6 months    ki0047075b-MAL-ED          PERU                           0               273    273
6 months    ki0047075b-MAL-ED          PERU                           1                 0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               252    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               247    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               313    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                53    366
6 months    ki1000108-IRC              INDIA                          0               337    407
6 months    ki1000108-IRC              INDIA                          1                70    407
6 months    ki1000109-EE               PAKISTAN                       0               344    372
6 months    ki1000109-EE               PAKISTAN                       1                28    372
6 months    ki1000109-ResPak           PAKISTAN                       0               206    235
6 months    ki1000109-ResPak           PAKISTAN                       1                29    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               569    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                14    583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1978   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                51   2029
6 months    ki1101329-Keneba           GAMBIA                         0              2004   2057
6 months    ki1101329-Keneba           GAMBIA                         1                53   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               270    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                10    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0               497    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                66    563
6 months    ki1114097-CMIN             BANGLADESH                     0               232    243
6 months    ki1114097-CMIN             BANGLADESH                     1                11    243
6 months    ki1114097-CMIN             PERU                           0               614    627
6 months    ki1114097-CMIN             PERU                           1                13    627
6 months    ki1114097-CONTENT          PERU                           0               215    215
6 months    ki1114097-CONTENT          PERU                           1                 0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               206    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               168    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    169
24 months   ki0047075b-MAL-ED          INDIA                          0               209    227
24 months   ki0047075b-MAL-ED          INDIA                          1                18    227
24 months   ki0047075b-MAL-ED          NEPAL                          0               224    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 4    228
24 months   ki0047075b-MAL-ED          PERU                           0               201    201
24 months   ki0047075b-MAL-ED          PERU                           1                 0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               236    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               214    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               312    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                56    368
24 months   ki1000108-IRC              INDIA                          0               339    409
24 months   ki1000108-IRC              INDIA                          1                70    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               564    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                13    577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      6
24 months   ki1101329-Keneba           GAMBIA                         0              1522   1564
24 months   ki1101329-Keneba           GAMBIA                         1                42   1564
24 months   ki1113344-GMS-Nepal        NEPAL                          0               440    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                59    499
24 months   ki1114097-CMIN             BANGLADESH                     0               233    242
24 months   ki1114097-CMIN             BANGLADESH                     1                 9    242
24 months   ki1114097-CMIN             PERU                           0               228    234
24 months   ki1114097-CMIN             PERU                           1                 6    234
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
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







# Results Detail

## Results Plots
![](/tmp/750e3ada-6909-4d05-9abe-92b63a811c34/671ab4ac-bdf8-4570-ad5a-6c4d62cce779/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7685954   -1.8422287    0.3050380
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6970959   -1.1923681   -0.2018237
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1018299   -0.8373715    1.0410313
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7775033   -0.9942317   -0.5607749
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0292945   -0.4337739    0.3751849
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0358652   -0.3754910    0.3037606
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3074092   -2.7805529    0.1657346
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2945751   -1.5466194   -1.0425309
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.5306482   -1.8440707   -1.2172256
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.6957148   -1.0317033   -0.3597263
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.3987127   -2.7361391   -2.0612863
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.0066450   -1.6366108   -0.3766791
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0641482   -1.1405114   -0.9877849
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6430039   -0.8149407   -0.4710672
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8896935   -0.9368241   -0.8425630
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.8787241   -2.1354029   -1.6220452
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.3035968   -1.4096998   -1.1974938
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.7719363   -1.9136466   -1.6302261
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.6431275   -0.7299847   -0.5562704
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2554320   -1.7643154   -0.7465486
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.5367608   -1.9587779   -1.1147438
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5036488   -2.6107732   -2.3965243
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6732020   -1.8797809   -1.4666232
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.8330960   -1.9476271   -1.7185648
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5413137   -1.5939079   -1.4887195
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8857887   -2.0558813   -1.7156961
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.6434190   -2.8109998   -2.4758383
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.4457589   -1.5704845   -1.3210332


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0715686   -1.1969582   -0.9461791
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7064368   -0.8290380   -0.5838355
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0341467   -0.0293905    0.0976838
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2203672   -1.3387619   -1.1019726
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
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3029733   -1.3518545    0.7459079
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3135352   -0.7930764    0.1660061
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8082667   -1.7338783    0.1173449
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1879411   -0.3512575   -0.0246247
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2787467   -0.6409031    0.0834097
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0700119   -0.2589107    0.3989344
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1017314   -1.3385712    1.5420341
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0742079   -0.1672034    0.3156192
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1055161   -0.1852933    0.3963255
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5386914   -0.8414363   -0.2359465
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.1982423   -0.1082702    0.5047547
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.3962770   -0.9865660    0.1940120
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0229559   -0.0420525   -0.0038593
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0995650   -0.0649398    0.2640698
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0224437   -0.0335326   -0.0113547
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.3001765    0.0566146    0.5437383
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0285553   -0.1184995    0.0613889
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0125012   -0.0401654    0.0151629
6 months    ki1114097-CMIN             PERU                           optimal              observed           0.1332977    0.0779948    0.1886005
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6876812   -1.2005094   -0.1748530
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3090542   -0.7192708    0.1011625
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0493811   -0.0934834   -0.0052789
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1092756   -0.3030642    0.0845131
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.2469781    0.1341603    0.3597959
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0191823   -0.0305603   -0.0078044
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0021982   -0.1381371    0.1425335
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed           0.1324686    0.0171752    0.2477620
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.0238850   -0.0576820    0.0099120
