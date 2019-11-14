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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              185     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               16     201
Birth       ki0047075b-MAL-ED          BRAZIL                         1               55      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2      57
Birth       ki0047075b-MAL-ED          INDIA                          1               33      39
Birth       ki0047075b-MAL-ED          INDIA                          0                6      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                8      24
Birth       ki0047075b-MAL-ED          NEPAL                          0               16      24
Birth       ki0047075b-MAL-ED          PERU                           1               37     210
Birth       ki0047075b-MAL-ED          PERU                           0              173     210
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               86      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                9      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                5     111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              106     111
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               68      68
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      68
Birth       ki1000108-IRC              INDIA                          1              253     253
Birth       ki1000108-IRC              INDIA                          0                0     253
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              505     572
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               67     572
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              485     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               47     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              542     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              165     707
Birth       ki1113344-GMS-Nepal        NEPAL                          1               97     503
Birth       ki1113344-GMS-Nepal        NEPAL                          0              406     503
Birth       ki1114097-CONTENT          PERU                           1                2       2
Birth       ki1114097-CONTENT          PERU                           0                0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             1881   22027
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            20146   22027
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              271    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             2123    2394
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
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              477     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              557     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               46     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363     441
6 months    ki1114097-CONTENT          PERU                           1              201     215
6 months    ki1114097-CONTENT          PERU                           0               14     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1459   16689
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15230   16689
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              533     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               46     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     373
24 months   ki1113344-GMS-Nepal        NEPAL                          0              301     373
24 months   ki1114097-CONTENT          PERU                           1              154     164
24 months   ki1114097-CONTENT          PERU                           0               10     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              665    8515
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7850    8515
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
![](/tmp/acf5be08-b3ee-47a0-8877-8ef9c3f3eb34/73510938-0391-4b82-b877-da67e92b0c75/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.6648338   -0.9378388   -0.3918287
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.8692718   -1.1877347   -0.5508089
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.0891556   -1.6971125   -0.4811987
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0477130   -0.2627640    0.1673381
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0066982   -0.5697498    0.5831461
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4834326   -0.1329619    1.0998271
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.2949995   -1.5627100   -1.0272890
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.1984069   -1.3670438   -1.0297701
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.1976535   -1.2919821   -1.1033250
Birth       ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -1.1443465   -1.3083236   -0.9803693
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.6439071   -0.7250883   -0.5627260
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.6202998   -0.8065408   -0.4340587
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0437884   -0.3042978    0.2167210
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.6276794   -1.1237535   -0.1316053
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.2180559    0.0408501    0.3952617
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           0.9094676    0.6442166    1.1747185
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.4205052    0.0968129    0.7441976
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5588154    0.4237146    0.6939162
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.4052771   -0.5529280   -0.2576261
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.1567833   -0.2434857   -0.0700809
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0457065   -0.0438154    0.1352284
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.5909821   -0.8323979   -0.3495663
6 months    ki1114097-CONTENT       PERU                           optimal              observed           1.1678413    0.5060975    1.8295851
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.5535018   -0.6269598   -0.4800439
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.2290004   -0.3716555   -0.0863454
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.7884114   -0.9162644   -0.6605585
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.9163600   -1.0369027   -0.7958172
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.2980465   -0.4763496   -0.1197433
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.1453034   -0.1028006    0.3934074
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.4816537    0.2245910    0.7387163
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0745451   -0.2454087    0.3944988
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.8838947   -1.0454224   -0.7223670
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.8671548   -0.9531501   -0.7811595
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.5858091   -0.7483902   -0.4232279
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -1.2156113   -1.4073867   -1.0238359
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.7190704    0.1307542    1.3073865
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.2028514   -1.3094649   -1.0962379
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.1799250   -1.3125007   -1.0473493


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.9721393   -1.1211171   -0.8231615
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -0.9441026   -1.2397919   -0.6484132
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.8087500   -1.1914221   -0.4260779
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.0468095   -0.1738806    0.0802616
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7690991    0.5714748    0.9667234
Birth       ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -1.3448514   -1.4396716   -1.2500312
Birth       ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.0860636   -1.1830454   -0.9890818
Birth       kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -0.7496300   -0.7674582   -0.7318018
Birth       kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.1340556   -0.2631866   -0.0049245
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -0.7105603   -0.8374801   -0.5836404
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed           0.1286317   -0.0051407    0.2624042
6 months    ki0047075b-MAL-ED       PERU                           observed             observed           1.0552716    0.9326038    1.1779394
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.5409906    0.3873048    0.6946765
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5355782    0.4032519    0.6679046
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.4447399   -0.5354039   -0.3540758
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL                          observed             observed          -0.6273772   -0.7253868   -0.5293676
6 months    ki1114097-CONTENT       PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -0.5921149   -0.6117586   -0.5724711
6 months    kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -0.3901347   -0.4273932   -0.3528762
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.3487330   -0.4631704   -0.2342957
24 months   ki0047075b-MAL-ED       PERU                           observed             observed           0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0468868   -0.0789101    0.1726837
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.9106710   -1.0090143   -0.8123277
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.1990840   -1.3039914   -1.0941766
24 months   ki1114097-CONTENT       PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -1.2986588   -1.3220045   -1.2753131
24 months   kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.2232311   -1.2550891   -1.1913732


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.3073056   -0.6007882   -0.0138230
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0748307   -0.2131013    0.0634398
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.2804056   -0.1091275    0.6699387
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed           0.0009034   -0.1826761    0.1844830
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.1796455   -0.7612094    0.4019183
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2856665   -0.3275282    0.8988611
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0498519   -0.3042999    0.2045962
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.1000517   -0.2590350    0.0589316
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0464978   -0.0943798    0.0013841
Birth       ki1113344-GMS-Nepal     NEPAL                          optimal              observed           0.0582828   -0.0624129    0.1789786
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.1057229   -0.1842938   -0.0271520
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.0679500   -0.2463737    0.1104736
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0902671   -0.3134633    0.1329290
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0828809   -0.5716247    0.4058629
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0894242   -0.2307761    0.0519277
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           0.1458040   -0.0830082    0.3746163
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.1204854   -0.1758228    0.4167936
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0232372   -0.0604681    0.0139937
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0394628   -0.1627439    0.0838182
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0423074   -0.0701317   -0.0144830
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0159443   -0.0617954    0.0299069
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.0363951   -0.2572218    0.1844317
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.0994095   -0.7411331    0.5423141
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.0386130   -0.1104671    0.0332411
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.1611342   -0.2994952   -0.0227733
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0317772   -0.0795795    0.0160250
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0359308   -0.0748205    0.0029590
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0506866   -0.1847111    0.0833379
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0248556   -0.2266268    0.1769156
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0668007   -0.3100880    0.1764865
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0276583   -0.3327997    0.2774832
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0267763   -0.1625244    0.1089719
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0257122   -0.0508974   -0.0005270
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0245411   -0.1650822    0.1160000
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed           0.0165273   -0.1516724    0.1847269
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.1522411   -0.7279905    0.4235083
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.0958074   -0.1987580    0.0071432
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.0433061   -0.1716311    0.0850189
