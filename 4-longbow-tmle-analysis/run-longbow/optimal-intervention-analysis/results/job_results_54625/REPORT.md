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

**Intervention Variable:** impfloor

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
* W_nrooms
* W_nchldlt5
* W_parity
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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        impfloor    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              196     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               17     213
Birth       ki0047075b-MAL-ED          BRAZIL                         1               58      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2      60
Birth       ki0047075b-MAL-ED          INDIA                          1               35      41
Birth       ki0047075b-MAL-ED          INDIA                          0                6      41
Birth       ki0047075b-MAL-ED          NEPAL                          1                9      25
Birth       ki0047075b-MAL-ED          NEPAL                          0               16      25
Birth       ki0047075b-MAL-ED          PERU                           1               39     215
Birth       ki0047075b-MAL-ED          PERU                           0              176     215
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               87      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                9      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                7     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              112     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               72      72
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      72
Birth       ki1000108-IRC              INDIA                          1              287     287
Birth       ki1000108-IRC              INDIA                          0                0     287
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              533     605
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               72     605
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              491     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               48     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              558     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              174     732
Birth       ki1113344-GMS-Nepal        NEPAL                          1              100     544
Birth       ki1113344-GMS-Nepal        NEPAL                          0              444     544
Birth       ki1114097-CONTENT          PERU                           1                2       2
Birth       ki1114097-CONTENT          PERU                           0                0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             1394   22399
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            21005   22399
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              307    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             2513    2820
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              221     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               19     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1              207     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                2     209
6 months    ki0047075b-MAL-ED          INDIA                          1              220     235
6 months    ki0047075b-MAL-ED          INDIA                          0               15     235
6 months    ki0047075b-MAL-ED          NEPAL                          1              103     229
6 months    ki0047075b-MAL-ED          NEPAL                          0              126     229
6 months    ki0047075b-MAL-ED          PERU                           1               58     270
6 months    ki0047075b-MAL-ED          PERU                           0              212     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              229     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               14     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              231     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              257     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0     257
6 months    ki1000108-IRC              INDIA                          1              303     303
6 months    ki1000108-IRC              INDIA                          0                0     303
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              477     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              557     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               47     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363     441
6 months    ki1114097-CONTENT          PERU                           1              201     215
6 months    ki1114097-CONTENT          PERU                           0               14     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1465   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15308   16773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              590    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             4234    4824
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1              167     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     169
24 months   ki0047075b-MAL-ED          INDIA                          1              212     227
24 months   ki0047075b-MAL-ED          INDIA                          0               15     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               98     221
24 months   ki0047075b-MAL-ED          NEPAL                          0              123     221
24 months   ki0047075b-MAL-ED          PERU                           1               49     201
24 months   ki0047075b-MAL-ED          PERU                           0              152     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              220     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              200     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              259     259
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     259
24 months   ki1000108-IRC              INDIA                          1              305     305
24 months   ki1000108-IRC              INDIA                          0                0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              377     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              533     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               45     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     374
24 months   ki1113344-GMS-Nepal        NEPAL                          0              302     374
24 months   ki1114097-CONTENT          PERU                           1              154     164
24 months   ki1114097-CONTENT          PERU                           0               10     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              674    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7935    8609
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              566    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             4180    4746


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/99b569bd-eacd-4888-9469-d99e34b08302/c8f6b9e8-d9dc-4b76-93ef-4e82684fe4a9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.8598505   -1.3437379   -0.3759631
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.3060428   -1.4660759   -1.1460097
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.6316672   -1.0894038   -0.1739307
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.6472733   -0.8662102   -0.4283363
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.6901557   -0.9671147   -0.4131968
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0777242   -1.2791671   -0.8762813
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.8973222   -0.9924817   -0.8021627
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.8618234   -0.9407917   -0.7828551
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.9758238   -1.0857816   -0.8658660
Birth       ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.8884190   -1.0937086   -0.6831294
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.4625132   -1.5450452   -1.3799812
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.4472926   -1.7184147   -1.1761705
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.6791142   -2.0638040   -1.2944244
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.3870396   -1.8558639   -0.9182154
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.4504224   -0.6382575   -0.2625874
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -1.2239752   -1.3833670   -1.0645835
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -1.3335028   -1.5763833   -1.0906224
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1703612   -1.5548364   -0.7858860
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.3949369   -1.4917246   -1.2981491
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.0476248   -1.1225531   -0.9726964
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.3559561   -1.4866917   -1.2252205
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -1.1373633   -1.3167273   -0.9579993
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.3446408   -0.7862722    0.0969906
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.0741755   -1.1457841   -1.0025668
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.1275135   -1.2779109   -0.9771161
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.6667882   -2.0950644   -1.2385120
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.9020994   -2.1866973   -1.6175014
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.1211712   -1.3233018   -0.9190405
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -1.6805679   -1.9424680   -1.4186679
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -1.5206523   -1.8375543   -1.2037503
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.3797870   -2.9504140   -1.8091601
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -2.1514940   -2.2594987   -2.0434894
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.5369303   -1.6250694   -1.4487912
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.3625838   -1.4935580   -1.2316096
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -1.7482373   -1.9450899   -1.5513847
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.6697294   -0.8473572   -0.4921016
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.7287586   -1.8446656   -1.6128517
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.5619075   -1.7120151   -1.4117999


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.0530516   -1.1896058   -0.9164975
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -1.2070732   -1.5254820   -0.8886644
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.7828000   -1.1547571   -0.4108429
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.9141395   -1.0364098   -0.7918693
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.5523958   -0.7550074   -0.3497843
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1213445   -1.3341800   -0.9085090
Birth       ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.9289256   -1.0178691   -0.8399821
Birth       ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.1177022   -1.2075344   -1.0278700
Birth       kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -1.5895451   -1.6088186   -1.5702715
Birth       kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.2026806   -1.3203025   -1.0850586
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -1.2070638   -1.3255909   -1.0885368
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.5534862   -0.6681825   -0.4387899
6 months    ki0047075b-MAL-ED       PERU                           observed             observed          -1.3248549   -1.4336721   -1.2160378
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -1.0547925   -1.1843544   -0.9252306
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3700408   -1.4930436   -1.2470380
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -1.4060639   -1.4948910   -1.3172368
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.3225094   -1.4115793   -1.2334396
6 months    ki1114097-CONTENT       PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -1.3134597   -1.3365976   -1.2903219
6 months    kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.3440174   -1.3812821   -1.3067527
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -1.2928054   -1.4146944   -1.1709164
24 months   ki0047075b-MAL-ED       PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6432311   -2.7795797   -2.5068826
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -2.2235968   -2.3265592   -2.1206344
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.8396747   -1.9349390   -1.7444104
24 months   ki1114097-CONTENT       PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -2.0134592   -2.0410825   -1.9858359
24 months   kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.7804046   -1.8159135   -1.7448956


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1932011   -0.6593382    0.2729359
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0989696   -0.2393897    0.4373289
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1511328   -0.4585731    0.1563076
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.2668663   -0.4477796   -0.0859530
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.1377599   -0.0356920    0.3112118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0436203   -0.1423000    0.0550594
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0316034   -0.0623105   -0.0008963
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0232787   -0.0454443   -0.0011130
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0663293   -0.0251305    0.1577891
Birth       ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.2292832   -0.4210254   -0.0375409
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.1270318   -0.2079192   -0.0461444
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.0763209   -0.3371628    0.1845210
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.4764336    0.1215527    0.8313145
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.1799758   -0.2675373    0.6274889
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1030637   -0.2372750    0.0311475
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1008797   -0.2223890    0.0206296
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2787103    0.0598245    0.4975961
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1996796   -0.5808332    0.1814740
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0111270   -0.0650955    0.0428415
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0440668   -0.0724850   -0.0156485
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.1572778    0.0503656    0.2641900
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.1851462   -0.3375938   -0.0326985
6 months    ki1114097-CONTENT       PERU                           optimal              observed           0.0307191   -0.3661021    0.4275403
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.2392843   -0.3098825   -0.1686861
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.2165039   -0.3578469   -0.0751609
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.3116080   -0.7262907    0.1030746
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0159100   -0.2341280    0.2659479
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1716343   -0.3166990   -0.0265695
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0719031   -0.2904484    0.1466423
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.1244072   -0.4328341    0.1840197
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2634441   -0.8245300    0.2976418
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0721028   -0.1107786   -0.0334270
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0654918   -0.1034730   -0.0275107
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0786808   -0.1798205    0.0224589
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.0914374   -0.2709436    0.0880688
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.0264901   -0.0667599    0.0137797
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.2847005   -0.3991920   -0.1702091
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.2184971   -0.3614804   -0.0755137
