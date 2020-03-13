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

**Intervention Variable:** predfeed6

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        predfeed6    n_cell       n
----------  --------------  -----------------------------  ----------  -------  ------
Birth       EE              PAKISTAN                       1                24      28
Birth       EE              PAKISTAN                       0                 4      28
Birth       GMS-Nepal       NEPAL                          1               390     522
Birth       GMS-Nepal       NEPAL                          0               132     522
Birth       JiVitA-3        BANGLADESH                     1              8392   10744
Birth       JiVitA-3        BANGLADESH                     0              2352   10744
Birth       JiVitA-4        BANGLADESH                     1              1802    2224
Birth       JiVitA-4        BANGLADESH                     0               422    2224
Birth       MAL-ED          BANGLADESH                     1                68     194
Birth       MAL-ED          BANGLADESH                     0               126     194
Birth       MAL-ED          BRAZIL                         1                 5      57
Birth       MAL-ED          BRAZIL                         0                52      57
Birth       MAL-ED          INDIA                          1                 4      37
Birth       MAL-ED          INDIA                          0                33      37
Birth       MAL-ED          NEPAL                          1                 3      23
Birth       MAL-ED          NEPAL                          0                20      23
Birth       MAL-ED          PERU                           1                72     208
Birth       MAL-ED          PERU                           0               136     208
Birth       MAL-ED          SOUTH AFRICA                   1                 1      90
Birth       MAL-ED          SOUTH AFRICA                   0                89      90
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               105     105
6 months    EE              PAKISTAN                       1                43      48
6 months    EE              PAKISTAN                       0                 5      48
6 months    GMS-Nepal       NEPAL                          1               406     547
6 months    GMS-Nepal       NEPAL                          0               141     547
6 months    JiVitA-3        BANGLADESH                     1              7625    9882
6 months    JiVitA-3        BANGLADESH                     0              2257    9882
6 months    JiVitA-4        BANGLADESH                     1              3327    4275
6 months    JiVitA-4        BANGLADESH                     0               948    4275
6 months    LCNI-5          MALAWI                         1                47     272
6 months    LCNI-5          MALAWI                         0               225     272
6 months    MAL-ED          BANGLADESH                     1                84     231
6 months    MAL-ED          BANGLADESH                     0               147     231
6 months    MAL-ED          BRAZIL                         1                30     209
6 months    MAL-ED          BRAZIL                         0               179     209
6 months    MAL-ED          INDIA                          1                11     218
6 months    MAL-ED          INDIA                          0               207     218
6 months    MAL-ED          NEPAL                          1                12     225
6 months    MAL-ED          NEPAL                          0               213     225
6 months    MAL-ED          PERU                           1                92     271
6 months    MAL-ED          PERU                           0               179     271
6 months    MAL-ED          SOUTH AFRICA                   1                 3     233
6 months    MAL-ED          SOUTH AFRICA                   0               230     233
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232
6 months    SAS-FoodSuppl   INDIA                          1                 0     168
6 months    SAS-FoodSuppl   INDIA                          0               168     168
24 months   EE              PAKISTAN                       1                20      23
24 months   EE              PAKISTAN                       0                 3      23
24 months   GMS-Nepal       NEPAL                          1               355     469
24 months   GMS-Nepal       NEPAL                          0               114     469
24 months   JiVitA-3        BANGLADESH                     1              3909    5067
24 months   JiVitA-3        BANGLADESH                     0              1158    5067
24 months   JiVitA-4        BANGLADESH                     1              3278    4184
24 months   JiVitA-4        BANGLADESH                     0               906    4184
24 months   LCNI-5          MALAWI                         1                34     184
24 months   LCNI-5          MALAWI                         0               150     184
24 months   MAL-ED          BANGLADESH                     1                76     205
24 months   MAL-ED          BANGLADESH                     0               129     205
24 months   MAL-ED          BRAZIL                         1                25     169
24 months   MAL-ED          BRAZIL                         0               144     169
24 months   MAL-ED          INDIA                          1                11     209
24 months   MAL-ED          INDIA                          0               198     209
24 months   MAL-ED          NEPAL                          1                12     219
24 months   MAL-ED          NEPAL                          0               207     219
24 months   MAL-ED          PERU                           1                68     201
24 months   MAL-ED          PERU                           0               133     201
24 months   MAL-ED          SOUTH AFRICA                   1                 3     216
24 months   MAL-ED          SOUTH AFRICA                   0               213     216
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/70a64b6a-0e8d-4670-8e0d-31e626257f71/228f55a0-bcd6-4f24-a5e1-20d0fb2417a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        optimal              observed          -1.1260539   -1.2720448   -0.9800629
Birth       JiVitA-3    BANGLADESH   optimal              observed          -0.7413245   -0.7778645   -0.7047845
Birth       JiVitA-4    BANGLADESH   optimal              observed          -0.7025286   -0.7872302   -0.6178270
Birth       MAL-ED      BANGLADESH   optimal              observed          -0.8365260   -1.0850709   -0.5879811
Birth       MAL-ED      BRAZIL       optimal              observed           0.5038113    0.1768074    0.8308153
Birth       MAL-ED      PERU         optimal              observed          -0.0244290   -0.2365434    0.1876855
6 months    EE          PAKISTAN     optimal              observed          -0.6299444   -1.1412344   -0.1186543
6 months    GMS-Nepal   NEPAL        optimal              observed          -0.5762460   -0.6785844   -0.4739075
6 months    JiVitA-3    BANGLADESH   optimal              observed          -0.6090219   -0.6514646   -0.5665792
6 months    JiVitA-4    BANGLADESH   optimal              observed          -0.3488371   -0.3951403   -0.3025338
6 months    LCNI-5      MALAWI       optimal              observed           0.3748151    0.1565085    0.5931217
6 months    MAL-ED      BANGLADESH   optimal              observed          -0.2870296   -0.4983431   -0.0757162
6 months    MAL-ED      BRAZIL       optimal              observed           1.4235264    0.9586254    1.8884275
6 months    MAL-ED      INDIA        optimal              observed          -0.0702711   -0.5656907    0.4251485
6 months    MAL-ED      NEPAL        optimal              observed          -0.0633121   -0.2607648    0.1341406
6 months    MAL-ED      PERU         optimal              observed           1.1993647    1.0003582    1.3983711
24 months   GMS-Nepal   NEPAL        optimal              observed          -1.1045261   -1.2115682   -0.9974841
24 months   JiVitA-3    BANGLADESH   optimal              observed          -1.2772843   -1.3404228   -1.2141458
24 months   JiVitA-4    BANGLADESH   optimal              observed          -1.2437098   -1.3087380   -1.1786816
24 months   LCNI-5      MALAWI       optimal              observed          -0.0968909   -0.3225354    0.1287536
24 months   MAL-ED      BANGLADESH   optimal              observed          -0.7474126   -0.9080701   -0.5867551
24 months   MAL-ED      BRAZIL       optimal              observed           0.1955920   -0.1852120    0.5763960
24 months   MAL-ED      INDIA        optimal              observed          -0.7082654   -1.2660154   -0.1505155
24 months   MAL-ED      NEPAL        optimal              observed          -0.9220253   -1.0883322   -0.7557184
24 months   MAL-ED      PERU         optimal              observed           0.1067539   -0.0619126    0.2754205


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        observed             observed          -1.1064559   -1.2034951   -1.0094168
Birth       JiVitA-3    BANGLADESH   observed             observed          -0.7807809   -0.8030521   -0.7585097
Birth       JiVitA-4    BANGLADESH   observed             observed          -0.6904586   -0.7435822   -0.6373351
Birth       MAL-ED      BANGLADESH   observed             observed          -0.9755670   -1.1287016   -0.8224325
Birth       MAL-ED      BRAZIL       observed             observed           0.4643860    0.1360519    0.7927200
Birth       MAL-ED      PERU         observed             observed          -0.0587981   -0.1871869    0.0695908
6 months    EE          PAKISTAN     observed             observed          -0.6106944   -0.9239621   -0.2974268
6 months    GMS-Nepal   NEPAL        observed             observed          -0.6009171   -0.6886356   -0.5131986
6 months    JiVitA-3    BANGLADESH   observed             observed          -0.6001300   -0.6240378   -0.5762223
6 months    JiVitA-4    BANGLADESH   observed             observed          -0.3968456   -0.4358721   -0.3578192
6 months    LCNI-5      MALAWI       observed             observed           0.3925000    0.2735307    0.5114693
6 months    MAL-ED      BANGLADESH   observed             observed          -0.1213203   -0.2539388    0.0112981
6 months    MAL-ED      BRAZIL       observed             observed           0.9720774    0.8078144    1.1363403
6 months    MAL-ED      INDIA        observed             observed          -0.7067317   -0.8369134   -0.5765499
6 months    MAL-ED      NEPAL        observed             observed           0.1091407   -0.0265536    0.2448351
6 months    MAL-ED      PERU         observed             observed           1.0506150    0.9281868    1.1730433
24 months   GMS-Nepal   NEPAL        observed             observed          -1.1423525   -1.2336321   -1.0510729
24 months   JiVitA-3    BANGLADESH   observed             observed          -1.3103375   -1.3408810   -1.2797940
24 months   JiVitA-4    BANGLADESH   observed             observed          -1.2265320   -1.2620508   -1.1910132
24 months   LCNI-5      MALAWI       observed             observed          -0.0770652   -0.2204213    0.0662909
24 months   MAL-ED      BANGLADESH   observed             observed          -0.8169756   -0.9388013   -0.6951499
24 months   MAL-ED      BRAZIL       observed             observed           0.4626233    0.2567495    0.6684971
24 months   MAL-ED      INDIA        observed             observed          -0.9442584   -1.0642426   -0.8242742
24 months   MAL-ED      NEPAL        observed             observed          -0.3674429   -0.4840752   -0.2508107
24 months   MAL-ED      PERU         observed             observed           0.1111982   -0.0118399    0.2342362


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        optimal              observed           0.0195979   -0.0867357    0.1259315
Birth       JiVitA-3    BANGLADESH   optimal              observed          -0.0394564   -0.0687769   -0.0101359
Birth       JiVitA-4    BANGLADESH   optimal              observed           0.0120700   -0.0480728    0.0722128
Birth       MAL-ED      BANGLADESH   optimal              observed          -0.1390410   -0.3566387    0.0785566
Birth       MAL-ED      BRAZIL       optimal              observed          -0.0394254   -0.1818577    0.1030069
Birth       MAL-ED      PERU         optimal              observed          -0.0343691   -0.2102302    0.1414920
6 months    EE          PAKISTAN     optimal              observed           0.0192499   -0.5429835    0.5814834
6 months    GMS-Nepal   NEPAL        optimal              observed          -0.0246712   -0.0760483    0.0267059
6 months    JiVitA-3    BANGLADESH   optimal              observed           0.0088919   -0.0268125    0.0445962
6 months    JiVitA-4    BANGLADESH   optimal              observed          -0.0480085   -0.0719342   -0.0240829
6 months    LCNI-5      MALAWI       optimal              observed           0.0176849   -0.1707398    0.2061096
6 months    MAL-ED      BANGLADESH   optimal              observed           0.1657093   -0.0020659    0.3334845
6 months    MAL-ED      BRAZIL       optimal              observed          -0.4514491   -0.8804215   -0.0224767
6 months    MAL-ED      INDIA        optimal              observed          -0.6364605   -1.1271742   -0.1457469
6 months    MAL-ED      NEPAL        optimal              observed           0.1724528    0.0107553    0.3341504
6 months    MAL-ED      PERU         optimal              observed          -0.1487497   -0.3155521    0.0180527
24 months   GMS-Nepal   NEPAL        optimal              observed          -0.0378264   -0.1099445    0.0342918
24 months   JiVitA-3    BANGLADESH   optimal              observed          -0.0330532   -0.0885656    0.0224592
24 months   JiVitA-4    BANGLADESH   optimal              observed           0.0171778   -0.0368535    0.0712091
24 months   LCNI-5      MALAWI       optimal              observed           0.0198257   -0.1420330    0.1816844
24 months   MAL-ED      BANGLADESH   optimal              observed          -0.0695630   -0.1591041    0.0199781
24 months   MAL-ED      BRAZIL       optimal              observed           0.2670312   -0.0430500    0.5771125
24 months   MAL-ED      INDIA        optimal              observed          -0.2359929   -0.7853554    0.3133695
24 months   MAL-ED      NEPAL        optimal              observed           0.5545824    0.3855331    0.7236316
24 months   MAL-ED      PERU         optimal              observed           0.0044443   -0.1236978    0.1325863
