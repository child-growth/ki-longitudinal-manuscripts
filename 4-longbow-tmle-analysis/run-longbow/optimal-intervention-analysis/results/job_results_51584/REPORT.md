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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              205     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               17     222
Birth       ki0047075b-MAL-ED          BRAZIL                         1              165     167
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2     167
Birth       ki0047075b-MAL-ED          INDIA                          1              178     188
Birth       ki0047075b-MAL-ED          INDIA                          0               10     188
Birth       ki0047075b-MAL-ED          NEPAL                          1               64     159
Birth       ki0047075b-MAL-ED          NEPAL                          0               95     159
Birth       ki0047075b-MAL-ED          PERU                           1               54     252
Birth       ki0047075b-MAL-ED          PERU                           0              198     252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              196     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                7     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              106     113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               71      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      71
Birth       ki1000108-IRC              INDIA                          1              253     253
Birth       ki1000108-IRC              INDIA                          0                0     253
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               24      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                4      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               18      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                5      23
Birth       ki1114097-CONTENT          PERU                           1                2       2
Birth       ki1114097-CONTENT          PERU                           0                0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              925   15666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            14741   15666
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               58     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              625     683
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
6 months    ki1000108-IRC              INDIA                          1              304     304
6 months    ki1000108-IRC              INDIA                          0                0     304
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              476     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              539     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               43     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363     441
6 months    ki1114097-CONTENT          PERU                           1              201     215
6 months    ki1114097-CONTENT          PERU                           0               14     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1463   16746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15283   16746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              590    4826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             4236    4826
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              376     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              532     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               46     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0              312     384
24 months   ki1114097-CONTENT          PERU                           1              154     164
24 months   ki1114097-CONTENT          PERU                           0               10     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              672    8580
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7908    8580
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              565    4729
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             4164    4729


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
![](/tmp/54fa5c43-c9ef-4e81-99b6-cc5b8b3ffe24/382282f8-900a-4596-bd59-63f31a934f12/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.8201536   -1.0739945   -0.5663127
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.2104334   -1.7872511   -0.6336157
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.7481654   -0.9377423   -0.5585884
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0049491   -0.1307071    0.1208088
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2233466   -0.2518314    0.6985245
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5210231    0.2554218    0.7866244
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.4817329   -1.9446008    0.9811349
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.6188005   -0.7026626   -0.5349385
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.4943686   -0.7043878   -0.2843495
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0237322   -0.3010369    0.2535726
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.8010950   -1.1277370   -0.4744531
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.1348190   -0.0462028    0.3158407
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           1.0497172    0.8215982    1.2778362
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.4388839    0.1624958    0.7152720
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5346101    0.4011153    0.6681049
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.4757182   -0.5716629   -0.3797735
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.1826226   -0.2707814   -0.0944638
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0621813   -0.0300260    0.1543887
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.5950052   -0.8138615   -0.3761489
6 months    ki1114097-CONTENT       PERU                           optimal              observed           1.1237483    0.5127866    1.7347101
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.5473395   -0.6245459   -0.4701331
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.2359193   -0.3783465   -0.0934921
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.7849232   -0.9121478   -0.6576986
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.9387881   -1.0588055   -0.8187708
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.2004865   -0.3700450   -0.0309280
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.0797061   -0.1703582    0.3297703
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2913297    0.0073701    0.5752893
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0785313   -0.0599217    0.2169842
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.8936540   -1.0238927   -0.7634153
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.8675671   -0.9535451   -0.7815891
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.5488061   -0.6851686   -0.4124436
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -1.1648344   -1.3342542   -0.9954147
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.7521541    0.1931673    1.3111410
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.1799728   -1.2893196   -1.0706260
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.1677132   -1.2928531   -1.0425734


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.9902252   -1.1311070   -0.8493435
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -1.0536702   -1.1965043   -0.9108361
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.9364780   -1.0810831   -0.7918728
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.0384921   -0.1542085    0.0772244
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.0073148   -0.1632037    0.1485740
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.8080531    0.6030895    1.0130167
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -0.7235197   -0.7433637   -0.7036757
Birth       kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.1354618   -0.2647919   -0.0061317
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -0.7056667   -0.8312524   -0.5800810
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed           0.1286317   -0.0051407    0.2624042
6 months    ki0047075b-MAL-ED       PERU                           observed             observed           1.0527407    0.9299728    1.1755087
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.5403280    0.3866002    0.6940558
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5162517    0.3853881    0.6471153
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.4362094   -0.5254855   -0.3469333
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL                          observed             observed          -0.6267309   -0.7246812   -0.5287807
6 months    ki1114097-CONTENT       PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -0.5926720   -0.6122891   -0.5730549
6 months    kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -0.3901347   -0.4273932   -0.3528762
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.3487330   -0.4631704   -0.2342957
24 months   ki0047075b-MAL-ED       PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0429953   -0.0825155    0.1685060
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.9106710   -1.0090143   -0.8123277
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.1914974   -1.2943015   -1.0886933
24 months   ki1114097-CONTENT       PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -1.2970420   -1.3203145   -1.2737694
24 months   kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.2232311   -1.2550891   -1.1913732


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1700717   -0.4435817    0.1034384
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed           0.1567632   -0.3809692    0.6944955
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1883126   -0.3215903   -0.0550349
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0335429   -0.1019471    0.0348613
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.2306614   -0.6913443    0.2300215
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2870300    0.0463926    0.5276674
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.2691366   -1.5370558    0.9987825
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.1047192   -0.1858720   -0.0235663
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed           0.1260524   -0.0726331    0.3247378
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1117296   -0.3535775    0.1301182
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0954284   -0.2322234    0.4230802
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0061872   -0.1386467    0.1262723
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           0.0030236   -0.1994614    0.2055086
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.1014440   -0.1693550    0.3722430
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0183584   -0.0555620    0.0188452
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0395088   -0.0134533    0.0924709
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0257479   -0.0489519   -0.0025440
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0324191   -0.0786444    0.0138062
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.0317257   -0.2255464    0.1620951
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.0553165   -0.6453924    0.5347593
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.0453325   -0.1209279    0.0302630
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.1542154   -0.2925738   -0.0158569
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0359022   -0.0834964    0.0116919
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0135026   -0.0442422    0.0172369
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1482465   -0.2775768   -0.0189162
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.0401944   -0.1737701    0.2541589
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.1353719   -0.1493939    0.4201378
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0355360   -0.1445758    0.0735038
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0170170   -0.1161100    0.0820761
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0203741   -0.0456135    0.0048654
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0615441   -0.1738450    0.0507569
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.0266630   -0.1713442    0.1180183
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.1853249   -0.7330753    0.3624255
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.1170691   -0.2230472   -0.0110911
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.0555179   -0.1762139    0.0651781
