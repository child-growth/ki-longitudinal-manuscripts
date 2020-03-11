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
Birth       EE              PAKISTAN                       1                38      42
Birth       EE              PAKISTAN                       0                 4      42
Birth       GMS-Nepal       NEPAL                          1               419     563
Birth       GMS-Nepal       NEPAL                          0               144     563
Birth       JiVitA-3        BANGLADESH                     1             10466   13423
Birth       JiVitA-3        BANGLADESH                     0              2957   13423
Birth       JiVitA-4        BANGLADESH                     1              2103    2632
Birth       JiVitA-4        BANGLADESH                     0               529    2632
Birth       MAL-ED          BANGLADESH                     1                72     205
Birth       MAL-ED          BANGLADESH                     0               133     205
Birth       MAL-ED          BRAZIL                         1                 6      60
Birth       MAL-ED          BRAZIL                         0                54      60
Birth       MAL-ED          INDIA                          1                 4      39
Birth       MAL-ED          INDIA                          0                35      39
Birth       MAL-ED          NEPAL                          1                 3      24
Birth       MAL-ED          NEPAL                          0                21      24
Birth       MAL-ED          PERU                           1                73     213
Birth       MAL-ED          PERU                           0               140     213
Birth       MAL-ED          SOUTH AFRICA                   1                 1      91
Birth       MAL-ED          SOUTH AFRICA                   0                90      91
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               113     113
6 months    EE              PAKISTAN                       1                43      48
6 months    EE              PAKISTAN                       0                 5      48
6 months    GMS-Nepal       NEPAL                          1               406     547
6 months    GMS-Nepal       NEPAL                          0               141     547
6 months    JiVitA-3        BANGLADESH                     1              7644    9901
6 months    JiVitA-3        BANGLADESH                     0              2257    9901
6 months    JiVitA-4        BANGLADESH                     1              3328    4272
6 months    JiVitA-4        BANGLADESH                     0               944    4272
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
24 months   GMS-Nepal       NEPAL                          1               356     470
24 months   GMS-Nepal       NEPAL                          0               114     470
24 months   JiVitA-3        BANGLADESH                     1              3926    5088
24 months   JiVitA-3        BANGLADESH                     0              1162    5088
24 months   JiVitA-4        BANGLADESH                     1              3292    4199
24 months   JiVitA-4        BANGLADESH                     0               907    4199
24 months   LCNI-5          MALAWI                         1                34     189
24 months   LCNI-5          MALAWI                         0               155     189
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
![](/tmp/59fbf825-bc43-4d15-a748-588cd94ef51a/e67d2907-861d-4bc2-8e10-aa87d305c8ff/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        optimal              observed          -1.0515560   -1.1488920   -0.9542201
Birth       JiVitA-3    BANGLADESH   optimal              observed          -1.5932043   -1.6269547   -1.5594539
Birth       JiVitA-4    BANGLADESH   optimal              observed          -1.5646838   -1.6420182   -1.4873494
Birth       MAL-ED      BANGLADESH   optimal              observed          -0.9791926   -1.1719447   -0.7864405
Birth       MAL-ED      BRAZIL       optimal              observed          -0.8226194   -1.4780539   -0.1671849
Birth       MAL-ED      PERU         optimal              observed          -0.9471476   -1.0998141   -0.7944812
6 months    EE          PAKISTAN     optimal              observed          -0.9846021   -2.2578719    0.2886677
6 months    GMS-Nepal   NEPAL        optimal              observed          -1.3117350   -1.3983602   -1.2251098
6 months    JiVitA-3    BANGLADESH   optimal              observed          -1.3083962   -1.3388302   -1.2779622
6 months    JiVitA-4    BANGLADESH   optimal              observed          -1.3194148   -1.3628568   -1.2759728
6 months    LCNI-5      MALAWI       optimal              observed          -1.5346276   -1.7283681   -1.3408871
6 months    MAL-ED      BANGLADESH   optimal              observed          -1.0961917   -1.2759615   -0.9164219
6 months    MAL-ED      BRAZIL       optimal              observed           0.1157202   -0.3618007    0.5932411
6 months    MAL-ED      INDIA        optimal              observed          -1.1899847   -1.3108555   -1.0691139
6 months    MAL-ED      NEPAL        optimal              observed          -0.7981643   -0.9442819   -0.6520467
6 months    MAL-ED      PERU         optimal              observed          -1.2558409   -1.4324385   -1.0792433
24 months   GMS-Nepal   NEPAL        optimal              observed          -1.8092086   -1.9741675   -1.6442497
24 months   JiVitA-3    BANGLADESH   optimal              observed          -1.9981407   -2.0386180   -1.9576634
24 months   JiVitA-4    BANGLADESH   optimal              observed          -1.7803460   -1.8221560   -1.7385360
24 months   LCNI-5      MALAWI       optimal              observed          -1.9510612   -2.1095782   -1.7925443
24 months   MAL-ED      BANGLADESH   optimal              observed          -1.9331598   -2.0824443   -1.7838753
24 months   MAL-ED      BRAZIL       optimal              observed          -0.4669794   -0.8227789   -0.1111799
24 months   MAL-ED      INDIA        optimal              observed          -1.8438621   -1.9754116   -1.7123125
24 months   MAL-ED      NEPAL        optimal              observed          -1.3049895   -1.4303882   -1.1795909
24 months   MAL-ED      PERU         optimal              observed          -1.7507192   -1.9395785   -1.5618600


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        observed             observed          -1.0641208   -1.1525364   -0.9757052
Birth       JiVitA-3    BANGLADESH   observed             observed          -1.5955338   -1.6186322   -1.5724354
Birth       JiVitA-4    BANGLADESH   observed             observed          -1.5273138   -1.5765339   -1.4780937
Birth       MAL-ED      BANGLADESH   observed             observed          -1.0530244   -1.1913751   -0.9146736
Birth       MAL-ED      BRAZIL       observed             observed          -0.6963333   -0.9881882   -0.4044785
Birth       MAL-ED      PERU         observed             observed          -0.9065728   -1.0297267   -0.7834188
6 months    EE          PAKISTAN     observed             observed          -2.1595486   -2.5331781   -1.7859192
6 months    GMS-Nepal   NEPAL        observed             observed          -1.3540280   -1.4334801   -1.2745760
6 months    JiVitA-3    BANGLADESH   observed             observed          -1.3138259   -1.3418712   -1.2857806
6 months    JiVitA-4    BANGLADESH   observed             observed          -1.3482303   -1.3866421   -1.3098185
6 months    LCNI-5      MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED      BANGLADESH   observed             observed          -1.1900794   -1.3096296   -1.0705291
6 months    MAL-ED      BRAZIL       observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED      INDIA        observed             observed          -1.2188303   -1.3423090   -1.0953516
6 months    MAL-ED      NEPAL        observed             observed          -0.5622370   -0.6774081   -0.4470660
6 months    MAL-ED      PERU         observed             observed          -1.3220326   -1.4308168   -1.2132484
24 months   GMS-Nepal   NEPAL        observed             observed          -1.9002128   -1.9869255   -1.8135001
24 months   JiVitA-3    BANGLADESH   observed             observed          -2.0118003   -2.0479952   -1.9756055
24 months   JiVitA-4    BANGLADESH   observed             observed          -1.7914765   -1.8297816   -1.7531715
24 months   LCNI-5      MALAWI       observed             observed          -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED      BANGLADESH   observed             observed          -1.9576341   -2.0857597   -1.8295086
24 months   MAL-ED      BRAZIL       observed             observed           0.0061144   -0.1625850    0.1748138
24 months   MAL-ED      INDIA        observed             observed          -1.8863397   -2.0168508   -1.7558287
24 months   MAL-ED      NEPAL        observed             observed          -1.3187671   -1.4406685   -1.1968657
24 months   MAL-ED      PERU         observed             observed          -1.7524710   -1.8736426   -1.6312994


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        optimal              observed          -0.0125647   -0.0623781    0.0372487
Birth       JiVitA-3    BANGLADESH   optimal              observed          -0.0023295   -0.0259651    0.0213062
Birth       JiVitA-4    BANGLADESH   optimal              observed           0.0373700   -0.0206230    0.0953630
Birth       MAL-ED      BANGLADESH   optimal              observed          -0.0738318   -0.2240746    0.0764109
Birth       MAL-ED      BRAZIL       optimal              observed           0.1262861   -0.4377273    0.6902994
Birth       MAL-ED      PERU         optimal              observed           0.0405749   -0.0812046    0.1623544
6 months    EE          PAKISTAN     optimal              observed          -1.1749465   -2.3980137    0.0481207
6 months    GMS-Nepal   NEPAL        optimal              observed          -0.0422931   -0.0938815    0.0092954
6 months    JiVitA-3    BANGLADESH   optimal              observed          -0.0054297   -0.0173727    0.0065133
6 months    JiVitA-4    BANGLADESH   optimal              observed          -0.0288155   -0.0543165   -0.0033146
6 months    LCNI-5      MALAWI       optimal              observed          -0.1049680   -0.2604700    0.0505340
6 months    MAL-ED      BANGLADESH   optimal              observed          -0.0938876   -0.2447705    0.0569952
6 months    MAL-ED      BRAZIL       optimal              observed          -0.0681444   -0.5010127    0.3647239
6 months    MAL-ED      INDIA        optimal              observed          -0.0288456   -0.0751065    0.0174153
6 months    MAL-ED      NEPAL        optimal              observed           0.2359273    0.1041553    0.3676993
6 months    MAL-ED      PERU         optimal              observed          -0.0661917   -0.2143221    0.0819388
24 months   GMS-Nepal   NEPAL        optimal              observed          -0.0910042   -0.2208827    0.0388744
24 months   JiVitA-3    BANGLADESH   optimal              observed          -0.0136596   -0.0322438    0.0049247
24 months   JiVitA-4    BANGLADESH   optimal              observed          -0.0111305   -0.0290066    0.0067455
24 months   LCNI-5      MALAWI       optimal              observed          -0.0140710   -0.0744127    0.0462707
24 months   MAL-ED      BANGLADESH   optimal              observed          -0.0244743   -0.1321660    0.0832173
24 months   MAL-ED      BRAZIL       optimal              observed           0.4730938    0.1396323    0.8065553
24 months   MAL-ED      INDIA        optimal              observed          -0.0424777   -0.0808548   -0.0041005
24 months   MAL-ED      NEPAL        optimal              observed          -0.0137776   -0.0428619    0.0153067
24 months   MAL-ED      PERU         optimal              observed          -0.0017517   -0.1459664    0.1424629
