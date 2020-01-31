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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             1215   17966
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            16751   17966
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              533     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               46     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     373
24 months   ki1113344-GMS-Nepal        NEPAL                          0              301     373
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
![](/tmp/d947e50b-9674-4722-b268-568c4e321f7b/63c66a1c-838a-4a7b-93b2-3c552ba52dfe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.6994600   -0.9367445   -0.4621755
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.8788761   -1.1985323   -0.5592200
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.0391778   -1.7251563   -0.3531992
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed           0.1000627   -0.1170403    0.3171658
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0451108   -0.5952335    0.6854550
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0014424   -0.1610541    0.1639388
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.5326631   -1.7275189   -1.3378074
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.2003187   -1.3775499   -1.0230875
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.1962520   -1.2894398   -1.1030642
Birth       ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -1.0825661   -1.1905845   -0.9745477
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.7061026   -0.7797137   -0.6324914
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.5961385   -0.7918590   -0.4004181
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0437751   -0.3046517    0.2171016
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.9728922   -1.2109163   -0.7348681
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.3180415    0.1321885    0.5038945
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           0.9426438    0.6727578    1.2125298
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2911667    0.0095125    0.5728210
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5669584    0.4310240    0.7028928
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.3983647   -0.5498305   -0.2468988
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.1778108   -0.2643954   -0.0912262
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0510124   -0.0398506    0.1418754
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.5866556   -0.8271282   -0.3461831
6 months    ki1114097-CONTENT       PERU                           optimal              observed           1.2282124    0.6160569    1.8403680
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.5573857   -0.6318363   -0.4829352
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.2151918   -0.3629663   -0.0674173
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.9116241   -1.1463979   -0.6768503
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.9341961   -1.0556385   -0.8127537
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.2893870   -0.4607100   -0.1180640
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.1591475   -0.0830341    0.4013291
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.4490946    0.2533131    0.6448762
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1377650   -0.1584310    0.4339609
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.7798729   -0.9426385   -0.6171073
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.8687510   -0.9545750   -0.7829271
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.5860697   -0.7453405   -0.4267990
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -1.0816399   -1.2863820   -0.8768978
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.7940625    0.1966429    1.3914821
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.1768309   -1.2814940   -1.0721679
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.1777084   -1.3108145   -1.0446022


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.9728358   -1.1217009   -0.8239707
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -0.9441026   -1.2397919   -0.6484132
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.8087500   -1.1914221   -0.4260779
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.0468095   -0.1738806    0.0802616
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7690991    0.5714748    0.9667234
Birth       ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -1.3448514   -1.4396716   -1.2500312
Birth       ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.0860636   -1.1830454   -0.9890818
Birth       kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -0.7773511   -0.7963777   -0.7583245
Birth       kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.1333333   -0.2623761   -0.0042906
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -0.7102872   -0.8371659   -0.5834085
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed           0.1281441   -0.0056126    0.2619008
6 months    ki0047075b-MAL-ED       PERU                           observed             observed           1.0512099    0.9285617    1.1738581
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.5404351    0.3867005    0.6941696
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5355782    0.4032519    0.6679046
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.4447399   -0.5354039   -0.3540758
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL                          observed             observed          -0.6273772   -0.7253868   -0.5293676
6 months    ki1114097-CONTENT       PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -0.5926720   -0.6122891   -0.5730549
6 months    kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -0.3901347   -0.4273932   -0.3528762
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.3471493   -0.4618867   -0.2324120
24 months   ki0047075b-MAL-ED       PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0477437   -0.0779935    0.1734809
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.9106710   -1.0090143   -0.8123277
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.1990840   -1.3039914   -1.0941766
24 months   ki1114097-CONTENT       PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -1.2970420   -1.3203145   -1.2737694
24 months   kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.2232311   -1.2550891   -1.1913732


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.2733758   -0.5366080   -0.0101436
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0652264   -0.2001667    0.0697139
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.2304278   -0.2466362    0.7074917
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1468723   -0.3274976    0.0337531
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.2180581   -0.8593470    0.4232307
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7676567    0.5807566    0.9545569
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.1878117    0.0069426    0.3686809
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0981400   -0.2657534    0.0694735
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0478993   -0.0953241   -0.0004746
Birth       ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.0034975   -0.0515035    0.0445085
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.0712485   -0.1409848   -0.0015123
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.0921112   -0.2798283    0.0956058
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0895583   -0.3133453    0.1342288
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.2626049    0.0253683    0.4998415
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1898974   -0.3356735   -0.0441213
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           0.1085661   -0.1258742    0.3430064
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2492683   -0.0107797    0.5093164
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0313801   -0.0719353    0.0091750
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0463752   -0.1671891    0.0744387
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0212798   -0.0439487    0.0013891
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0212501   -0.0679338    0.0254335
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.0407215   -0.2590424    0.1775993
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.1597807   -0.7504707    0.4309094
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.0352863   -0.1079063    0.0373338
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.1749429   -0.3183115   -0.0315742
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0923316   -0.1008203    0.2854836
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0174559   -0.0490973    0.0141855
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0577623   -0.1885495    0.0730249
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0479493   -0.2398587    0.1439600
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0400645   -0.2362341    0.1561051
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0900213   -0.3622294    0.1821869
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.1307981   -0.2708946    0.0092984
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0241160   -0.0492217    0.0009897
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0242805   -0.1580753    0.1095144
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.1174441   -0.2930365    0.0581482
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.2272332   -0.8121451    0.3576786
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.1202110   -0.2211908   -0.0192313
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.0455228   -0.1742069    0.0831613
