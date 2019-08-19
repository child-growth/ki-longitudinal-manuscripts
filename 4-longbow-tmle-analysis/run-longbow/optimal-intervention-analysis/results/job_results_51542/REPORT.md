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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              216     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               18     234
Birth       ki0047075b-MAL-ED          BRAZIL                         1              172     174
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2     174
Birth       ki0047075b-MAL-ED          INDIA                          1              181     191
Birth       ki0047075b-MAL-ED          INDIA                          0               10     191
Birth       ki0047075b-MAL-ED          NEPAL                          1               66     164
Birth       ki0047075b-MAL-ED          NEPAL                          0               98     164
Birth       ki0047075b-MAL-ED          PERU                           1               56     259
Birth       ki0047075b-MAL-ED          PERU                           0              203     259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              197     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               21     218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                8     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              109     117
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               71      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      71
Birth       ki1000108-IRC              INDIA                          1              287     287
Birth       ki1000108-IRC              INDIA                          0                0     287
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               24      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                4      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               21      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                6      27
Birth       ki1114097-CONTENT          PERU                           1                2       2
Birth       ki1114097-CONTENT          PERU                           0                0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             1076   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            18487   19563
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               71     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              751     822
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              539     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               44     583
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              260     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     260
24 months   ki1000108-IRC              INDIA                          1              305     305
24 months   ki1000108-IRC              INDIA                          0                0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              377     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              532     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               45     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     385
24 months   ki1113344-GMS-Nepal        NEPAL                          0              313     385
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
![](/tmp/bfd038bf-c93f-4e76-95fd-e0bdee92fa61/195867a2-9f98-4626-9f7c-5a85f6808095/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.9569576   -1.3821746   -0.5317405
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.0741682   -1.2385159   -0.9098205
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.0404405   -1.2689074   -0.8119737
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.7755528   -0.9898428   -0.5612629
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.5037064   -0.9003040   -0.1071087
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0772508   -2.3575614    0.2030598
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.1875563   -2.1051750   -0.2699376
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.4506767   -1.5188991   -1.3824543
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.3264712   -1.5941768   -1.0587656
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.5422683   -2.0185873   -1.0659492
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.3751450   -1.8648117   -0.8854783
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.4660366   -0.6361815   -0.2958917
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -1.1420991   -1.3205194   -0.9636788
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.8149445   -1.0753730   -0.5545160
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4261344   -1.9475179   -0.9047509
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.3711823   -1.4731056   -1.2692589
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.0413917   -1.1181904   -0.9645930
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.2083044   -1.3324200   -1.0841889
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -1.1047137   -1.2939855   -0.9154418
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.2653675   -0.7512606    0.2205255
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.0663595   -1.1377182   -0.9950007
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.0934659   -1.2492361   -0.9376957
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.7780058   -2.1745968   -1.3814148
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.7270831   -1.9370882   -1.5170779
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.0468282   -1.2359056   -0.8577507
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -1.7323639   -1.9423380   -1.5223898
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -1.5614193   -1.9016550   -1.2211837
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4705930   -2.9243803   -2.0168058
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -2.1567024   -2.2942528   -2.0191519
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.4283349   -1.5253150   -1.3313547
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.4177296   -1.5203382   -1.3151211
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -1.7491888   -1.9417125   -1.5566651
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.6691409   -0.8466607   -0.4916211
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.7366665   -1.8483589   -1.6249741
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.5114259   -1.6645771   -1.3582747


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.0229487   -1.1509575   -0.8949400
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -1.0069634   -1.1525107   -0.8614160
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.6988415   -0.8600838   -0.5375991
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.9447876   -1.0604945   -0.8290808
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.6917890   -0.8248091   -0.5587689
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.8777778   -1.0853531   -0.6702024
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -1.5749762   -1.5947643   -1.5551882
Birth       kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.2033681   -1.3212429   -1.0854932
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -1.2159433   -1.3345235   -1.0973630
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.5534934   -0.6683107   -0.4386762
6 months    ki0047075b-MAL-ED       PERU                           observed             observed          -1.3280247   -1.4371552   -1.2188942
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -1.0548494   -1.1845497   -0.9251491
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3613469   -1.4843950   -1.2382988
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -1.4060639   -1.4948910   -1.3172368
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.3005896   -1.3898487   -1.2113304
6 months    ki1114097-CONTENT       PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -1.3134597   -1.3365976   -1.2903219
6 months    kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.3440174   -1.3812821   -1.3067527
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -1.2618778   -1.3846215   -1.1391341
24 months   ki0047075b-MAL-ED       PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6031840   -2.7387629   -2.4676050
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -2.1856460   -2.2886758   -2.0826161
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.8384978   -1.9325778   -1.7444179
24 months   ki1114097-CONTENT       PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -2.0124544   -2.0401076   -1.9848012
24 months   kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.7579225   -1.7933649   -1.7224800


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0659912   -0.4761254    0.3441431
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0672048   -0.0127018    0.1471115
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.3415991    0.1732659    0.5099323
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1692348   -0.3416059    0.0031362
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.1880826   -0.5539303    0.1777650
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1994730   -1.0024559    1.4014019
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0775563   -0.6142147    0.7693273
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.1242995   -0.1915703   -0.0570287
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.1711930   -0.4304914    0.0881054
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.3389002   -0.1060938    0.7838942
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.1592018   -0.3101746    0.6285781
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0874568   -0.2107121    0.0357984
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1859256   -0.3245122   -0.0473390
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.2399049   -0.4854085    0.0055988
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0647875   -0.4458875    0.5754624
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0348816   -0.0844802    0.0147169
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0457124   -0.0747068   -0.0167180
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0096261   -0.0889072    0.1081595
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.1958759   -0.3587950   -0.0329568
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.0485542   -0.5030176    0.4059093
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.2471003   -0.3175841   -0.1766164
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.2505515   -0.3971009   -0.1040022
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1651074   -0.5498404    0.2196256
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.1187319   -0.3028653    0.0654014
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.2150497   -0.3587390   -0.0713603
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0177356   -0.1982186    0.1627473
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0614168   -0.3928435    0.2700099
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1325909   -0.5836227    0.3184409
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0289436   -0.1184465    0.0605593
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.1577830   -0.2202123   -0.0953537
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0118034   -0.0706163    0.0470095
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.0893091   -0.2648462    0.0862281
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.0270786   -0.0675768    0.0134196
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.2757879   -0.3862398   -0.1653361
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.2464966   -0.3924128   -0.1005803
