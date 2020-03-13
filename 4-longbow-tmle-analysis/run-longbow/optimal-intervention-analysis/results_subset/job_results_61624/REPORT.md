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

agecat      studyid          country                        impfloor    n_cell       n
----------  ---------------  -----------------------------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1               68      68
Birth       CMC-V-BCS-2002   INDIA                          0                0      68
Birth       CONTENT          PERU                           1                2       2
Birth       CONTENT          PERU                           0                0       2
Birth       GMS-Nepal        NEPAL                          1               97     503
Birth       GMS-Nepal        NEPAL                          0              406     503
Birth       IRC              INDIA                          1              253     253
Birth       IRC              INDIA                          0                0     253
Birth       JiVitA-3         BANGLADESH                     1             1215   17966
Birth       JiVitA-3         BANGLADESH                     0            16751   17966
Birth       JiVitA-4         BANGLADESH                     1              271    2394
Birth       JiVitA-4         BANGLADESH                     0             2123    2394
Birth       MAL-ED           BANGLADESH                     1              185     201
Birth       MAL-ED           BANGLADESH                     0               16     201
Birth       MAL-ED           BRAZIL                         1               55      57
Birth       MAL-ED           BRAZIL                         0                2      57
Birth       MAL-ED           INDIA                          1               33      39
Birth       MAL-ED           INDIA                          0                6      39
Birth       MAL-ED           NEPAL                          1                8      24
Birth       MAL-ED           NEPAL                          0               16      24
Birth       MAL-ED           PERU                           1               37     210
Birth       MAL-ED           PERU                           0              173     210
Birth       MAL-ED           SOUTH AFRICA                   1               86      95
Birth       MAL-ED           SOUTH AFRICA                   0                9      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                5     111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              106     111
Birth       NIH-Birth        BANGLADESH                     1              505     572
Birth       NIH-Birth        BANGLADESH                     0               67     572
Birth       NIH-Crypto       BANGLADESH                     1              542     707
Birth       NIH-Crypto       BANGLADESH                     0              165     707
Birth       PROVIDE          BANGLADESH                     1              485     532
Birth       PROVIDE          BANGLADESH                     0               47     532
6 months    CMC-V-BCS-2002   INDIA                          1              257     257
6 months    CMC-V-BCS-2002   INDIA                          0                0     257
6 months    CONTENT          PERU                           1              201     215
6 months    CONTENT          PERU                           0               14     215
6 months    GMS-Nepal        NEPAL                          1               78     441
6 months    GMS-Nepal        NEPAL                          0              363     441
6 months    IRC              INDIA                          1              304     304
6 months    IRC              INDIA                          0                0     304
6 months    JiVitA-3         BANGLADESH                     1             1463   16746
6 months    JiVitA-3         BANGLADESH                     0            15283   16746
6 months    JiVitA-4         BANGLADESH                     1              590    4826
6 months    JiVitA-4         BANGLADESH                     0             4236    4826
6 months    MAL-ED           BANGLADESH                     1              221     240
6 months    MAL-ED           BANGLADESH                     0               19     240
6 months    MAL-ED           BRAZIL                         1              207     209
6 months    MAL-ED           BRAZIL                         0                2     209
6 months    MAL-ED           INDIA                          1              220     235
6 months    MAL-ED           INDIA                          0               15     235
6 months    MAL-ED           NEPAL                          1              103     229
6 months    MAL-ED           NEPAL                          0              126     229
6 months    MAL-ED           PERU                           1               58     270
6 months    MAL-ED           PERU                           0              212     270
6 months    MAL-ED           SOUTH AFRICA                   1              229     249
6 months    MAL-ED           SOUTH AFRICA                   0               20     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               14     245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              231     245
6 months    NIH-Birth        BANGLADESH                     1              477     535
6 months    NIH-Birth        BANGLADESH                     0               58     535
6 months    NIH-Crypto       BANGLADESH                     1              537     715
6 months    NIH-Crypto       BANGLADESH                     0              178     715
6 months    PROVIDE          BANGLADESH                     1              557     603
6 months    PROVIDE          BANGLADESH                     0               46     603
24 months   CMC-V-BCS-2002   INDIA                          1              260     260
24 months   CMC-V-BCS-2002   INDIA                          0                0     260
24 months   CONTENT          PERU                           1              154     164
24 months   CONTENT          PERU                           0               10     164
24 months   GMS-Nepal        NEPAL                          1               72     373
24 months   GMS-Nepal        NEPAL                          0              301     373
24 months   IRC              INDIA                          1              305     305
24 months   IRC              INDIA                          0                0     305
24 months   JiVitA-3         BANGLADESH                     1              672    8580
24 months   JiVitA-3         BANGLADESH                     0             7908    8580
24 months   JiVitA-4         BANGLADESH                     1              565    4729
24 months   JiVitA-4         BANGLADESH                     0             4164    4729
24 months   MAL-ED           BANGLADESH                     1              195     212
24 months   MAL-ED           BANGLADESH                     0               17     212
24 months   MAL-ED           BRAZIL                         1              167     169
24 months   MAL-ED           BRAZIL                         0                2     169
24 months   MAL-ED           INDIA                          1              212     227
24 months   MAL-ED           INDIA                          0               15     227
24 months   MAL-ED           NEPAL                          1               98     221
24 months   MAL-ED           NEPAL                          0              123     221
24 months   MAL-ED           PERU                           1               49     201
24 months   MAL-ED           PERU                           0              152     201
24 months   MAL-ED           SOUTH AFRICA                   1              220     238
24 months   MAL-ED           SOUTH AFRICA                   0               18     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              200     212
24 months   NIH-Birth        BANGLADESH                     1              376     426
24 months   NIH-Birth        BANGLADESH                     0               50     426
24 months   NIH-Crypto       BANGLADESH                     1              346     514
24 months   NIH-Crypto       BANGLADESH                     0              168     514
24 months   PROVIDE          BANGLADESH                     1              533     579
24 months   PROVIDE          BANGLADESH                     0               46     579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d7be1adf-6115-4757-b24c-8b953edb61ea/2a9bb34e-5424-4ce1-93cd-2a761b3966fd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          optimal              observed          -1.2339036   -1.4434117   -1.0243955
Birth       JiVitA-3     BANGLADESH                     optimal              observed          -0.6834891   -0.7380159   -0.6289622
Birth       JiVitA-4     BANGLADESH                     optimal              observed          -0.7763528   -0.9621347   -0.5905708
Birth       MAL-ED       BANGLADESH                     optimal              observed          -0.6305948   -0.8988054   -0.3623841
Birth       MAL-ED       INDIA                          optimal              observed          -0.8741435   -1.1920104   -0.5562766
Birth       MAL-ED       NEPAL                          optimal              observed          -0.9958444   -1.7592488   -0.2324400
Birth       MAL-ED       PERU                           optimal              observed           0.0718478   -0.1106864    0.2543820
Birth       MAL-ED       SOUTH AFRICA                   optimal              observed          -0.1815734   -0.7022210    0.3390741
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5213848   -0.0834985    1.1262681
Birth       NIH-Birth    BANGLADESH                     optimal              observed          -1.4177374   -1.6658219   -1.1696530
Birth       NIH-Crypto   BANGLADESH                     optimal              observed          -1.1946267   -1.2879412   -1.1013121
Birth       PROVIDE      BANGLADESH                     optimal              observed          -1.2977895   -1.4801794   -1.1153996
6 months    CONTENT      PERU                           optimal              observed           1.2883340    0.6412251    1.9354428
6 months    GMS-Nepal    NEPAL                          optimal              observed          -0.7537992   -1.0689458   -0.4386525
6 months    JiVitA-3     BANGLADESH                     optimal              observed          -0.6185279   -0.6772825   -0.5597734
6 months    JiVitA-4     BANGLADESH                     optimal              observed          -0.2349000   -0.3644810   -0.1053191
6 months    MAL-ED       BANGLADESH                     optimal              observed          -0.1879361   -0.4858041    0.1099320
6 months    MAL-ED       INDIA                          optimal              observed          -0.9454052   -1.1988347   -0.6919758
6 months    MAL-ED       NEPAL                          optimal              observed           0.1414011   -0.0533691    0.3361712
6 months    MAL-ED       PERU                           optimal              observed           1.0169858    0.7477803    1.2861914
6 months    MAL-ED       SOUTH AFRICA                   optimal              observed           0.5214997    0.1878752    0.8551243
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5559045    0.4207844    0.6910247
6 months    NIH-Birth    BANGLADESH                     optimal              observed          -0.4587794   -0.5661598   -0.3513989
6 months    NIH-Crypto   BANGLADESH                     optimal              observed           0.0662725   -0.0242753    0.1568203
6 months    PROVIDE      BANGLADESH                     optimal              observed          -0.1367487   -0.2604925   -0.0130050
24 months   CONTENT      PERU                           optimal              observed           0.7422036    0.2442962    1.2401109
24 months   GMS-Nepal    NEPAL                          optimal              observed          -1.0503590   -1.2111276   -0.8895904
24 months   JiVitA-3     BANGLADESH                     optimal              observed          -1.2137407   -1.3021728   -1.1253086
24 months   JiVitA-4     BANGLADESH                     optimal              observed          -1.1234613   -1.2237861   -1.0231365
24 months   MAL-ED       BANGLADESH                     optimal              observed          -0.8947877   -1.1953336   -0.5942418
24 months   MAL-ED       INDIA                          optimal              observed          -1.0174321   -1.1388255   -0.8960387
24 months   MAL-ED       NEPAL                          optimal              observed          -0.2397996   -0.4035356   -0.0760637
24 months   MAL-ED       PERU                           optimal              observed           0.2932480    0.0761811    0.5103149
24 months   MAL-ED       SOUTH AFRICA                   optimal              observed           0.4905979    0.2380924    0.7431034
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6219240   -0.7997690   -0.4440791
24 months   NIH-Birth    BANGLADESH                     optimal              observed          -0.8658012   -1.0957239   -0.6358786
24 months   NIH-Crypto   BANGLADESH                     optimal              observed          -0.6345290   -0.8025403   -0.4665177
24 months   PROVIDE      BANGLADESH                     optimal              observed          -0.8707157   -0.9565710   -0.7848604


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          observed             observed          -1.0860636   -1.1830454   -0.9890818
Birth       JiVitA-3     BANGLADESH                     observed             observed          -0.7773511   -0.7963777   -0.7583245
Birth       JiVitA-4     BANGLADESH                     observed             observed          -0.6882498   -0.7406539   -0.6358456
Birth       MAL-ED       BANGLADESH                     observed             observed          -0.9728358   -1.1217009   -0.8239707
Birth       MAL-ED       INDIA                          observed             observed          -0.9441026   -1.2397919   -0.6484132
Birth       MAL-ED       NEPAL                          observed             observed          -0.8087500   -1.1914221   -0.4260779
Birth       MAL-ED       PERU                           observed             observed          -0.0468095   -0.1738806    0.0802616
Birth       MAL-ED       SOUTH AFRICA                   observed             observed          -0.1729474   -0.4186222    0.0727275
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7690991    0.5714748    0.9667234
Birth       NIH-Birth    BANGLADESH                     observed             observed          -1.3448514   -1.4396716   -1.2500312
Birth       NIH-Crypto   BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE      BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
6 months    CONTENT      PERU                           observed             observed           1.0644279    0.9468682    1.1819876
6 months    GMS-Nepal    NEPAL                          observed             observed          -0.6273772   -0.7253868   -0.5293676
6 months    JiVitA-3     BANGLADESH                     observed             observed          -0.5926720   -0.6122891   -0.5730549
6 months    JiVitA-4     BANGLADESH                     observed             observed          -0.3901347   -0.4273932   -0.3528762
6 months    MAL-ED       BANGLADESH                     observed             observed          -0.1333333   -0.2623761   -0.0042906
6 months    MAL-ED       INDIA                          observed             observed          -0.7102872   -0.8371659   -0.5834085
6 months    MAL-ED       NEPAL                          observed             observed           0.1281441   -0.0056126    0.2619008
6 months    MAL-ED       PERU                           observed             observed           1.0512099    0.9285617    1.1738581
6 months    MAL-ED       SOUTH AFRICA                   observed             observed           0.5404351    0.3867005    0.6941696
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5355782    0.4032519    0.6679046
6 months    NIH-Birth    BANGLADESH                     observed             observed          -0.4447399   -0.5354039   -0.3540758
6 months    NIH-Crypto   BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROVIDE      BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
24 months   CONTENT      PERU                           observed             observed           0.5902439    0.4560143    0.7244735
24 months   GMS-Nepal    NEPAL                          observed             observed          -1.1990840   -1.3039914   -1.0941766
24 months   JiVitA-3     BANGLADESH                     observed             observed          -1.2970420   -1.3203145   -1.2737694
24 months   JiVitA-4     BANGLADESH                     observed             observed          -1.2232311   -1.2550891   -1.1913732
24 months   MAL-ED       BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED       INDIA                          observed             observed          -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED       NEPAL                          observed             observed          -0.3471493   -0.4618867   -0.2324120
24 months   MAL-ED       PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   MAL-ED       SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0477437   -0.0779935    0.1734809
24 months   NIH-Birth    BANGLADESH                     observed             observed          -0.9106710   -1.0090143   -0.8123277
24 months   NIH-Crypto   BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE      BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          optimal              observed           0.1478400   -0.0420006    0.3376806
Birth       JiVitA-3     BANGLADESH                     optimal              observed          -0.0938621   -0.1461593   -0.0415648
Birth       JiVitA-4     BANGLADESH                     optimal              observed           0.0881030   -0.0887785    0.2649845
Birth       MAL-ED       BANGLADESH                     optimal              observed          -0.3422411   -0.6323901   -0.0520920
Birth       MAL-ED       INDIA                          optimal              observed          -0.0699591   -0.2048889    0.0649707
Birth       MAL-ED       NEPAL                          optimal              observed           0.1870944   -0.3522145    0.7264032
Birth       MAL-ED       PERU                           optimal              observed          -0.1186573   -0.2867204    0.0494057
Birth       MAL-ED       SOUTH AFRICA                   optimal              observed           0.0086261   -0.5294220    0.5466741
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2477143   -0.3581349    0.8535635
Birth       NIH-Birth    BANGLADESH                     optimal              observed           0.0728860   -0.1587354    0.3045074
Birth       NIH-Crypto   BANGLADESH                     optimal              observed          -0.0495247   -0.0980630   -0.0009863
Birth       PROVIDE      BANGLADESH                     optimal              observed          -0.0006692   -0.1713547    0.1700164
6 months    CONTENT      PERU                           optimal              observed          -0.2239061   -0.8493924    0.4015803
6 months    GMS-Nepal    NEPAL                          optimal              observed           0.1264220   -0.1691410    0.4219850
6 months    JiVitA-3     BANGLADESH                     optimal              observed           0.0258560   -0.0312542    0.0829661
6 months    JiVitA-4     BANGLADESH                     optimal              observed          -0.1552346   -0.2799260   -0.0305433
6 months    MAL-ED       BANGLADESH                     optimal              observed           0.0546028   -0.2078974    0.3171029
6 months    MAL-ED       INDIA                          optimal              observed           0.2351180   -0.0258243    0.4960603
6 months    MAL-ED       NEPAL                          optimal              observed          -0.0132570   -0.1453944    0.1188805
6 months    MAL-ED       PERU                           optimal              observed           0.0342241   -0.2002267    0.2686748
6 months    MAL-ED       SOUTH AFRICA                   optimal              observed           0.0189353   -0.2849881    0.3228588
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0203263   -0.0572475    0.0165949
6 months    NIH-Birth    BANGLADESH                     optimal              observed           0.0140395   -0.0469109    0.0749899
6 months    NIH-Crypto   BANGLADESH                     optimal              observed          -0.0365103   -0.0837880    0.0107675
6 months    PROVIDE      BANGLADESH                     optimal              observed          -0.0623419   -0.1526479    0.0279640
24 months   CONTENT      PERU                           optimal              observed          -0.1519597   -0.6433356    0.3394163
24 months   GMS-Nepal    NEPAL                          optimal              observed          -0.1487250   -0.2771800   -0.0202700
24 months   JiVitA-3     BANGLADESH                     optimal              observed          -0.0833012   -0.1681911    0.0015887
24 months   JiVitA-4     BANGLADESH                     optimal              observed          -0.0997698   -0.1984468   -0.0010928
24 months   MAL-ED       BANGLADESH                     optimal              observed           0.0754952   -0.1811778    0.3321683
24 months   MAL-ED       INDIA                          optimal              observed           0.0657801    0.0073234    0.1242368
24 months   MAL-ED       NEPAL                          optimal              observed          -0.1073497   -0.2303442    0.0156448
24 months   MAL-ED       PERU                           optimal              observed          -0.1820498   -0.3579349   -0.0061648
24 months   MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0815678   -0.3265898    0.1634543
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6696678    0.5159468    0.8233887
24 months   NIH-Birth    BANGLADESH                     optimal              observed          -0.0448698   -0.2454637    0.1557242
24 months   NIH-Crypto   BANGLADESH                     optimal              observed           0.0241788   -0.1226616    0.1710192
24 months   PROVIDE      BANGLADESH                     optimal              observed          -0.0221513   -0.0466927    0.0023901
