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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* vagbrth
* hdlvry
* W_birthwt
* W_birthlen
* single
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_vagbrth
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        perdiar24    n_cell      n
----------  --------------  -----------------------------  ----------  -------  -----
Birth       CMIN            BANGLADESH                     0%                6     19
Birth       CMIN            BANGLADESH                     (0%, 5%]          3     19
Birth       CMIN            BANGLADESH                     >5%              10     19
Birth       CONTENT         PERU                           0%                0      2
Birth       CONTENT         PERU                           (0%, 5%]          1      2
Birth       CONTENT         PERU                           >5%               1      2
Birth       EE              PAKISTAN                       0%              115    177
Birth       EE              PAKISTAN                       (0%, 5%]         62    177
Birth       EE              PAKISTAN                       >5%               0    177
Birth       JiVitA-4        BANGLADESH                     0%               61   2396
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]       2091   2396
Birth       JiVitA-4        BANGLADESH                     >5%             244   2396
Birth       MAL-ED          BANGLADESH                     0%               14    215
Birth       MAL-ED          BANGLADESH                     (0%, 5%]        127    215
Birth       MAL-ED          BANGLADESH                     >5%              74    215
Birth       MAL-ED          BRAZIL                         0%               34     62
Birth       MAL-ED          BRAZIL                         (0%, 5%]         26     62
Birth       MAL-ED          BRAZIL                         >5%               2     62
Birth       MAL-ED          INDIA                          0%                5     45
Birth       MAL-ED          INDIA                          (0%, 5%]         31     45
Birth       MAL-ED          INDIA                          >5%               9     45
Birth       MAL-ED          NEPAL                          0%                2     26
Birth       MAL-ED          NEPAL                          (0%, 5%]         19     26
Birth       MAL-ED          NEPAL                          >5%               5     26
Birth       MAL-ED          PERU                           0%               21    228
Birth       MAL-ED          PERU                           (0%, 5%]         87    228
Birth       MAL-ED          PERU                           >5%             120    228
Birth       MAL-ED          SOUTH AFRICA                   0%               42    112
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]         69    112
Birth       MAL-ED          SOUTH AFRICA                   >5%               1    112
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                7    115
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         77    115
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              31    115
Birth       NIH-Birth       BANGLADESH                     0%               46    572
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]        327    572
Birth       NIH-Birth       BANGLADESH                     >5%             199    572
Birth       NIH-Crypto      BANGLADESH                     0%              144    707
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]        375    707
Birth       NIH-Crypto      BANGLADESH                     >5%             188    707
Birth       PROVIDE         BANGLADESH                     0%               55    532
Birth       PROVIDE         BANGLADESH                     (0%, 5%]        322    532
Birth       PROVIDE         BANGLADESH                     >5%             155    532
6 months    CMIN            BANGLADESH                     0%                2    243
6 months    CMIN            BANGLADESH                     (0%, 5%]        111    243
6 months    CMIN            BANGLADESH                     >5%             130    243
6 months    CONTENT         PERU                           0%                6    215
6 months    CONTENT         PERU                           (0%, 5%]        142    215
6 months    CONTENT         PERU                           >5%              67    215
6 months    EE              PAKISTAN                       0%              258    375
6 months    EE              PAKISTAN                       (0%, 5%]        117    375
6 months    EE              PAKISTAN                       >5%               0    375
6 months    Guatemala BSC   GUATEMALA                      0%               29    299
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]         70    299
6 months    Guatemala BSC   GUATEMALA                      >5%             200    299
6 months    JiVitA-4        BANGLADESH                     0%              156   4833
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]       4153   4833
6 months    JiVitA-4        BANGLADESH                     >5%             524   4833
6 months    MAL-ED          BANGLADESH                     0%                6    241
6 months    MAL-ED          BANGLADESH                     (0%, 5%]        142    241
6 months    MAL-ED          BANGLADESH                     >5%              93    241
6 months    MAL-ED          BRAZIL                         0%              106    209
6 months    MAL-ED          BRAZIL                         (0%, 5%]        101    209
6 months    MAL-ED          BRAZIL                         >5%               2    209
6 months    MAL-ED          INDIA                          0%                3    236
6 months    MAL-ED          INDIA                          (0%, 5%]        191    236
6 months    MAL-ED          INDIA                          >5%              42    236
6 months    MAL-ED          NEPAL                          0%               14    236
6 months    MAL-ED          NEPAL                          (0%, 5%]        143    236
6 months    MAL-ED          NEPAL                          >5%              79    236
6 months    MAL-ED          PERU                           0%                7    273
6 months    MAL-ED          PERU                           (0%, 5%]        109    273
6 months    MAL-ED          PERU                           >5%             157    273
6 months    MAL-ED          SOUTH AFRICA                   0%               78    254
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]        174    254
6 months    MAL-ED          SOUTH AFRICA                   >5%               2    254
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        177    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              61    247
6 months    NIH-Birth       BANGLADESH                     0%               15    537
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]        339    537
6 months    NIH-Birth       BANGLADESH                     >5%             183    537
6 months    NIH-Crypto      BANGLADESH                     0%              134    715
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    PROVIDE         BANGLADESH                     0%               12    603
6 months    PROVIDE         BANGLADESH                     (0%, 5%]        408    603
6 months    PROVIDE         BANGLADESH                     >5%             183    603
6 months    SAS-FoodSuppl   INDIA                          0%               74    380
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    SAS-FoodSuppl   INDIA                          >5%             260    380
24 months   CMIN            BANGLADESH                     0%                3    243
24 months   CMIN            BANGLADESH                     (0%, 5%]        114    243
24 months   CMIN            BANGLADESH                     >5%             126    243
24 months   CONTENT         PERU                           0%                4    164
24 months   CONTENT         PERU                           (0%, 5%]        108    164
24 months   CONTENT         PERU                           >5%              52    164
24 months   EE              PAKISTAN                       0%              116    168
24 months   EE              PAKISTAN                       (0%, 5%]         52    168
24 months   EE              PAKISTAN                       >5%               0    168
24 months   JiVitA-4        BANGLADESH                     0%              164   4735
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]       4082   4735
24 months   JiVitA-4        BANGLADESH                     >5%             489   4735
24 months   MAL-ED          BANGLADESH                     0%                6    212
24 months   MAL-ED          BANGLADESH                     (0%, 5%]        130    212
24 months   MAL-ED          BANGLADESH                     >5%              76    212
24 months   MAL-ED          BRAZIL                         0%               76    169
24 months   MAL-ED          BRAZIL                         (0%, 5%]         91    169
24 months   MAL-ED          BRAZIL                         >5%               2    169
24 months   MAL-ED          INDIA                          0%                3    227
24 months   MAL-ED          INDIA                          (0%, 5%]        183    227
24 months   MAL-ED          INDIA                          >5%              41    227
24 months   MAL-ED          NEPAL                          0%               12    228
24 months   MAL-ED          NEPAL                          (0%, 5%]        140    228
24 months   MAL-ED          NEPAL                          >5%              76    228
24 months   MAL-ED          PERU                           0%                1    201
24 months   MAL-ED          PERU                           (0%, 5%]         84    201
24 months   MAL-ED          PERU                           >5%             116    201
24 months   MAL-ED          SOUTH AFRICA                   0%               71    238
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    238
24 months   MAL-ED          SOUTH AFRICA                   >5%               1    238
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        156    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    214
24 months   NIH-Birth       BANGLADESH                     0%                5    428
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]        278    428
24 months   NIH-Birth       BANGLADESH                     >5%             145    428
24 months   NIH-Crypto      BANGLADESH                     0%              123    514
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   PROVIDE         BANGLADESH                     0%                9    579
24 months   PROVIDE         BANGLADESH                     (0%, 5%]        396    579
24 months   PROVIDE         BANGLADESH                     >5%             174    579


The following strata were considered:

* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
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
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
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

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7a2069e6-b385-474d-ab9e-e72dbccf7fd7/759c269e-0e2c-4782-85e0-69d25c759896/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     optimal              observed          -0.7230599   -1.0083316   -0.4377883
Birth       MAL-ED          BANGLADESH                     optimal              observed          -0.5000260   -1.1514127    0.1513607
Birth       MAL-ED          INDIA                          optimal              observed          -0.9112554   -1.9446838    0.1221730
Birth       MAL-ED          PERU                           optimal              observed          -0.0410648   -0.3555317    0.2734021
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3501128    0.0623055    0.6379201
Birth       NIH-Birth       BANGLADESH                     optimal              observed          -1.3590091   -1.6092994   -1.1087188
Birth       NIH-Crypto      BANGLADESH                     optimal              observed          -1.3068331   -1.4655917   -1.1480745
Birth       PROVIDE         BANGLADESH                     optimal              observed          -1.3402154   -1.4553868   -1.2250440
6 months    CONTENT         PERU                           optimal              observed           1.4406008    0.8598033    2.0213982
6 months    Guatemala BSC   GUATEMALA                      optimal              observed          -0.1043363   -0.5410511    0.3323785
6 months    JiVitA-4        BANGLADESH                     optimal              observed          -0.2258950   -0.4166177   -0.0351723
6 months    MAL-ED          BANGLADESH                     optimal              observed           0.1897329   -0.6668452    1.0463110
6 months    MAL-ED          NEPAL                          optimal              observed           0.0142507   -0.5475021    0.5760034
6 months    MAL-ED          PERU                           optimal              observed           0.9690393    0.8086333    1.1294454
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5861250    0.3666619    0.8055881
6 months    NIH-Birth       BANGLADESH                     optimal              observed          -0.2644022   -0.6648227    0.1360184
6 months    NIH-Crypto      BANGLADESH                     optimal              observed          -0.0603184   -0.2660371    0.1454004
6 months    PROVIDE         BANGLADESH                     optimal              observed          -0.1660053   -0.4460025    0.1139919
6 months    SAS-FoodSuppl   INDIA                          optimal              observed          -0.7857493   -1.1394618   -0.4320369
24 months   JiVitA-4        BANGLADESH                     optimal              observed          -1.2462493   -1.3145137   -1.1779850
24 months   MAL-ED          BANGLADESH                     optimal              observed          -1.3612157   -1.8480197   -0.8744117
24 months   MAL-ED          NEPAL                          optimal              observed          -0.5009650   -0.9365755   -0.0653545
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0345739   -0.6334098    0.7025577
24 months   NIH-Birth       BANGLADESH                     optimal              observed          -0.8337612   -0.9985418   -0.6689807
24 months   NIH-Crypto      BANGLADESH                     optimal              observed          -0.5653039   -0.8034332   -0.3271746
24 months   PROVIDE         BANGLADESH                     optimal              observed          -0.8185688   -0.9734213   -0.6637163


### Parameter: E(Y)


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
Birth       MAL-ED          BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED          INDIA                          observed             observed          -0.9324444   -1.2067907   -0.6580982
Birth       MAL-ED          PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       NIH-Birth       BANGLADESH                     observed             observed          -1.3525437   -1.4473932   -1.2576942
Birth       NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
6 months    CONTENT         PERU                           observed             observed           1.0644279    0.9468682    1.1819876
6 months    Guatemala BSC   GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    JiVitA-4        BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
6 months    MAL-ED          BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED          NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    MAL-ED          PERU                           observed             observed           1.0528816    0.9313005    1.1744626
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    NIH-Birth       BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
24 months   JiVitA-4        BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543
24 months   MAL-ED          BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED          NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth       BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-4        BANGLADESH                     optimal              observed           0.0344331   -0.2406174   0.3094835
Birth       MAL-ED          BANGLADESH                     optimal              observed          -0.4418345   -1.0725392   0.1888703
Birth       MAL-ED          INDIA                          optimal              observed          -0.0211891   -0.9433186   0.9009404
Birth       MAL-ED          PERU                           optimal              observed          -0.0109528   -0.2990965   0.2771910
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4123220    0.1247912   0.6998528
Birth       NIH-Birth       BANGLADESH                     optimal              observed           0.0064654   -0.2386354   0.2515662
Birth       NIH-Crypto      BANGLADESH                     optimal              observed           0.0626818   -0.0687722   0.1941357
Birth       PROVIDE         BANGLADESH                     optimal              observed           0.0417567   -0.0443200   0.1278335
6 months    CONTENT         PERU                           optimal              observed          -0.3761729   -0.9558461   0.2035004
6 months    Guatemala BSC   GUATEMALA                      optimal              observed           0.0203229   -0.3877931   0.4284390
6 months    JiVitA-4        BANGLADESH                     optimal              observed          -0.1639105   -0.3499475   0.0221266
6 months    MAL-ED          BANGLADESH                     optimal              observed          -0.3274092   -1.1741460   0.5193275
6 months    MAL-ED          NEPAL                          optimal              observed           0.0961801   -0.4281782   0.6205384
6 months    MAL-ED          PERU                           optimal              observed           0.0838422   -0.0224931   0.1901775
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0499037   -0.2552029   0.1553955
6 months    NIH-Birth       BANGLADESH                     optimal              observed          -0.1830016   -0.5835096   0.2175064
6 months    NIH-Crypto      BANGLADESH                     optimal              observed           0.0900806   -0.1000819   0.2802430
6 months    PROVIDE         BANGLADESH                     optimal              observed          -0.0330854   -0.3068744   0.2407037
6 months    SAS-FoodSuppl   INDIA                          optimal              observed          -0.2264086   -0.5590492   0.1062321
24 months   JiVitA-4        BANGLADESH                     optimal              observed           0.0231406   -0.0348624   0.0811436
24 months   MAL-ED          BANGLADESH                     optimal              observed           0.5419232    0.0523238   1.0315227
24 months   MAL-ED          NEPAL                          optimal              observed           0.1260528   -0.2994844   0.5515899
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0202236   -0.6422557   0.6827028
24 months   NIH-Birth       BANGLADESH                     optimal              observed          -0.0778178   -0.2138081   0.0581724
24 months   NIH-Crypto      BANGLADESH                     optimal              observed          -0.0450463   -0.2533043   0.1632117
24 months   PROVIDE         BANGLADESH                     optimal              observed          -0.0742982   -0.2026737   0.0540773
