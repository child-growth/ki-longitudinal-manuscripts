---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** predfeed3

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

agecat      studyid     country                        predfeed3    n_cell       n  outcome_variable 
----------  ----------  -----------------------------  ----------  -------  ------  -----------------
Birth       EE          PAKISTAN                       1                35      35  haz              
Birth       EE          PAKISTAN                       0                 0      35  haz              
Birth       GMS-Nepal   NEPAL                          1               380     458  haz              
Birth       GMS-Nepal   NEPAL                          0                78     458  haz              
Birth       JiVitA-3    BANGLADESH                     1             12017   13276  haz              
Birth       JiVitA-3    BANGLADESH                     0              1259   13276  haz              
Birth       JiVitA-4    BANGLADESH                     1               105     116  haz              
Birth       JiVitA-4    BANGLADESH                     0                11     116  haz              
Birth       MAL-ED      BANGLADESH                     1               176     215  haz              
Birth       MAL-ED      BANGLADESH                     0                39     215  haz              
Birth       MAL-ED      BRAZIL                         1                24      57  haz              
Birth       MAL-ED      BRAZIL                         0                33      57  haz              
Birth       MAL-ED      INDIA                          1                29      41  haz              
Birth       MAL-ED      INDIA                          0                12      41  haz              
Birth       MAL-ED      NEPAL                          1                14      26  haz              
Birth       MAL-ED      NEPAL                          0                12      26  haz              
Birth       MAL-ED      PERU                           1               150     223  haz              
Birth       MAL-ED      PERU                           0                73     223  haz              
Birth       MAL-ED      SOUTH AFRICA                   1                33     100  haz              
Birth       MAL-ED      SOUTH AFRICA                   0                67     100  haz              
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                26     102  haz              
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                76     102  haz              
6 months    EE          PAKISTAN                       1                39      39  haz              
6 months    EE          PAKISTAN                       0                 0      39  haz              
6 months    GMS-Nepal   NEPAL                          1               367     441  haz              
6 months    GMS-Nepal   NEPAL                          0                74     441  haz              
6 months    JiVitA-3    BANGLADESH                     1              8516    9328  haz              
6 months    JiVitA-3    BANGLADESH                     0               812    9328  haz              
6 months    JiVitA-4    BANGLADESH                     1                76      88  haz              
6 months    JiVitA-4    BANGLADESH                     0                12      88  haz              
6 months    MAL-ED      BANGLADESH                     1               191     233  haz              
6 months    MAL-ED      BANGLADESH                     0                42     233  haz              
6 months    MAL-ED      BRAZIL                         1                93     187  haz              
6 months    MAL-ED      BRAZIL                         0                94     187  haz              
6 months    MAL-ED      INDIA                          1               147     210  haz              
6 months    MAL-ED      INDIA                          0                63     210  haz              
6 months    MAL-ED      NEPAL                          1               113     227  haz              
6 months    MAL-ED      NEPAL                          0               114     227  haz              
6 months    MAL-ED      PERU                           1               176     270  haz              
6 months    MAL-ED      PERU                           0                94     270  haz              
6 months    MAL-ED      SOUTH AFRICA                   1                63     244  haz              
6 months    MAL-ED      SOUTH AFRICA                   0               181     244  haz              
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                64     212  haz              
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               148     212  haz              
24 months   EE          PAKISTAN                       1                20      20  haz              
24 months   EE          PAKISTAN                       0                 0      20  haz              
24 months   GMS-Nepal   NEPAL                          1               322     384  haz              
24 months   GMS-Nepal   NEPAL                          0                62     384  haz              
24 months   JiVitA-3    BANGLADESH                     1              4434    4852  haz              
24 months   JiVitA-3    BANGLADESH                     0               418    4852  haz              
24 months   JiVitA-4    BANGLADESH                     1               136     151  haz              
24 months   JiVitA-4    BANGLADESH                     0                15     151  haz              
24 months   MAL-ED      BANGLADESH                     1               168     205  haz              
24 months   MAL-ED      BANGLADESH                     0                37     205  haz              
24 months   MAL-ED      BRAZIL                         1                79     152  haz              
24 months   MAL-ED      BRAZIL                         0                73     152  haz              
24 months   MAL-ED      INDIA                          1               139     202  haz              
24 months   MAL-ED      INDIA                          0                63     202  haz              
24 months   MAL-ED      NEPAL                          1               110     220  haz              
24 months   MAL-ED      NEPAL                          0               110     220  haz              
24 months   MAL-ED      PERU                           1               131     198  haz              
24 months   MAL-ED      PERU                           0                67     198  haz              
24 months   MAL-ED      SOUTH AFRICA                   1                60     228  haz              
24 months   MAL-ED      SOUTH AFRICA                   0               168     228  haz              
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                54     184  haz              
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               130     184  haz              


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e7a5fe60-a821-459a-9110-b7bb9c24db26/528885ad-be69-4b55-9f18-603732e75454/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e7a5fe60-a821-459a-9110-b7bb9c24db26/528885ad-be69-4b55-9f18-603732e75454/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e7a5fe60-a821-459a-9110-b7bb9c24db26/528885ad-be69-4b55-9f18-603732e75454/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.0253426   -1.1325187   -0.9181665
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.1848816   -1.4494998   -0.9202634
Birth       JiVitA-3    BANGLADESH                     1                    NA                -1.5901981   -1.6138574   -1.5665388
Birth       JiVitA-3    BANGLADESH                     0                    NA                -1.6141232   -1.6693778   -1.5588686
Birth       JiVitA-4    BANGLADESH                     1                    NA                -1.5491389   -1.7539614   -1.3443164
Birth       JiVitA-4    BANGLADESH                     0                    NA                -1.1857061   -2.0297545   -0.3416577
Birth       MAL-ED      BANGLADESH                     1                    NA                -1.1235564   -1.2777734   -0.9693394
Birth       MAL-ED      BANGLADESH                     0                    NA                -0.8113640   -1.0936232   -0.5291048
Birth       MAL-ED      BRAZIL                         1                    NA                -0.7937283   -1.2455597   -0.3418969
Birth       MAL-ED      BRAZIL                         0                    NA                -0.7671430   -1.1515461   -0.3827399
Birth       MAL-ED      INDIA                          1                    NA                -1.3817552   -1.7928815   -0.9706289
Birth       MAL-ED      INDIA                          0                    NA                -0.7043710   -1.1364871   -0.2722549
Birth       MAL-ED      NEPAL                          1                    NA                -0.9516074   -1.3446451   -0.5585697
Birth       MAL-ED      NEPAL                          0                    NA                -0.6896398   -1.3666578   -0.0126217
Birth       MAL-ED      PERU                           1                    NA                -0.8853043   -1.0230614   -0.7475472
Birth       MAL-ED      PERU                           0                    NA                -0.8555903   -1.0351622   -0.6760184
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                -0.4648421   -0.8133793   -0.1163049
Birth       MAL-ED      SOUTH AFRICA                   0                    NA                -0.6431128   -0.8881501   -0.3980755
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.1769708   -1.5936384   -0.7603031
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0770471   -1.3441061   -0.8099881
6 months    GMS-Nepal   NEPAL                          1                    NA                -1.3263942   -1.4213331   -1.2314553
6 months    GMS-Nepal   NEPAL                          0                    NA                -1.4276362   -1.6708525   -1.1844198
6 months    JiVitA-3    BANGLADESH                     1                    NA                -1.3204192   -1.3496273   -1.2912111
6 months    JiVitA-3    BANGLADESH                     0                    NA                -1.3621852   -1.4473828   -1.2769876
6 months    JiVitA-4    BANGLADESH                     1                    NA                -1.1172513   -1.3055607   -0.9289419
6 months    JiVitA-4    BANGLADESH                     0                    NA                -1.1597670   -1.8265805   -0.4929535
6 months    MAL-ED      BANGLADESH                     1                    NA                -1.1817896   -1.3075687   -1.0560105
6 months    MAL-ED      BANGLADESH                     0                    NA                -1.4062789   -1.7511096   -1.0614483
6 months    MAL-ED      BRAZIL                         1                    NA                -0.0889034   -0.3220849    0.1442782
6 months    MAL-ED      BRAZIL                         0                    NA                 0.2112438   -0.0049415    0.4274291
6 months    MAL-ED      INDIA                          1                    NA                -1.2223501   -1.3701850   -1.0745153
6 months    MAL-ED      INDIA                          0                    NA                -1.1589841   -1.4084698   -0.9094985
6 months    MAL-ED      NEPAL                          1                    NA                -0.6114439   -0.7735704   -0.4493174
6 months    MAL-ED      NEPAL                          0                    NA                -0.5078287   -0.6645862   -0.3510713
6 months    MAL-ED      PERU                           1                    NA                -1.2875144   -1.4158694   -1.1591594
6 months    MAL-ED      PERU                           0                    NA                -1.3746109   -1.5617697   -1.1874522
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                -1.0328611   -1.2917449   -0.7739774
6 months    MAL-ED      SOUTH AFRICA                   0                    NA                -1.0943052   -1.2477357   -0.9408748
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3478959   -1.5551031   -1.1406888
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4319412   -1.5879739   -1.2759085
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.8818496   -1.9835974   -1.7801019
24 months   GMS-Nepal   NEPAL                          0                    NA                -1.8562966   -2.0920080   -1.6205852
24 months   JiVitA-3    BANGLADESH                     1                    NA                -2.0051889   -2.0429984   -1.9673794
24 months   JiVitA-3    BANGLADESH                     0                    NA                -2.1618416   -2.2683404   -2.0553427
24 months   JiVitA-4    BANGLADESH                     1                    NA                -1.7206648   -1.8687279   -1.5726017
24 months   JiVitA-4    BANGLADESH                     0                    NA                -2.5230086   -2.8041726   -2.2418446
24 months   MAL-ED      BANGLADESH                     1                    NA                -1.9910029   -2.1383395   -1.8436664
24 months   MAL-ED      BANGLADESH                     0                    NA                -2.0761340   -2.3333348   -1.8189333
24 months   MAL-ED      BRAZIL                         1                    NA                -0.1871419   -0.4257103    0.0514264
24 months   MAL-ED      BRAZIL                         0                    NA                 0.1754253   -0.0814278    0.4322784
24 months   MAL-ED      INDIA                          1                    NA                -2.0252955   -2.1840103   -1.8665808
24 months   MAL-ED      INDIA                          0                    NA                -1.6285539   -1.8953799   -1.3617280
24 months   MAL-ED      NEPAL                          1                    NA                -1.3973096   -1.5611711   -1.2334480
24 months   MAL-ED      NEPAL                          0                    NA                -1.2220688   -1.3940944   -1.0500431
24 months   MAL-ED      PERU                           1                    NA                -1.7143543   -1.8606821   -1.5680265
24 months   MAL-ED      PERU                           0                    NA                -1.8047022   -2.0253403   -1.5840642
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                -1.6405434   -1.8871305   -1.3939564
24 months   MAL-ED      SOUTH AFRICA                   0                    NA                -1.6404703   -1.8110805   -1.4698601
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.4886753   -2.7315782   -2.2457725
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7294636   -2.9066408   -2.5522864


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          NA                   NA                -1.0555240   -1.1550843   -0.9559638
Birth       JiVitA-3    BANGLADESH                     NA                   NA                -1.5928457   -1.6158667   -1.5698248
Birth       JiVitA-4    BANGLADESH                     NA                   NA                -1.6073276   -1.8105798   -1.4040753
Birth       MAL-ED      BANGLADESH                     NA                   NA                -1.0949767   -1.2319917   -0.9579618
Birth       MAL-ED      BRAZIL                         NA                   NA                -0.6996491   -0.9856018   -0.4136965
Birth       MAL-ED      INDIA                          NA                   NA                -1.2075610   -1.5261540   -0.8889679
Birth       MAL-ED      NEPAL                          NA                   NA                -0.8234615   -1.1896049   -0.4573182
Birth       MAL-ED      PERU                           NA                   NA                -0.8753812   -0.9932108   -0.7575515
Birth       MAL-ED      SOUTH AFRICA                   NA                   NA                -0.5797000   -0.7788298   -0.3805702
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1086275   -1.3310338   -0.8862211
6 months    GMS-Nepal   NEPAL                          NA                   NA                -1.3499849   -1.4387386   -1.2612312
6 months    JiVitA-3    BANGLADESH                     NA                   NA                -1.3240051   -1.3526414   -1.2953689
6 months    JiVitA-4    BANGLADESH                     NA                   NA                -1.1994318   -1.3808291   -1.0180345
6 months    MAL-ED      BANGLADESH                     NA                   NA                -1.2242918   -1.3439424   -1.1046413
6 months    MAL-ED      BRAZIL                         NA                   NA                 0.0609091   -0.0944768    0.2162950
6 months    MAL-ED      INDIA                          NA                   NA                -1.2002381   -1.3274929   -1.0729833
6 months    MAL-ED      NEPAL                          NA                   NA                -0.5634068   -0.6769687   -0.4498449
6 months    MAL-ED      PERU                           NA                   NA                -1.3108735   -1.4182407   -1.2035062
6 months    MAL-ED      SOUTH AFRICA                   NA                   NA                -1.0662227   -1.1965862   -0.9358591
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4030503   -1.5292443   -1.2768563
24 months   GMS-Nepal   NEPAL                          NA                   NA                -1.8752995   -1.9688053   -1.7817937
24 months   JiVitA-3    BANGLADESH                     NA                   NA                -2.0187325   -2.0554682   -1.9819968
24 months   JiVitA-4    BANGLADESH                     NA                   NA                -1.7726490   -1.9111913   -1.6341067
24 months   MAL-ED      BANGLADESH                     NA                   NA                -2.0016585   -2.1303297   -1.8729874
24 months   MAL-ED      BRAZIL                         NA                   NA                -0.0162939   -0.1929098    0.1603221
24 months   MAL-ED      INDIA                          NA                   NA                -1.8994059   -2.0346781   -1.7641337
24 months   MAL-ED      NEPAL                          NA                   NA                -1.3109318   -1.4313748   -1.1904888
24 months   MAL-ED      PERU                           NA                   NA                -1.7412963   -1.8630698   -1.6195228
24 months   MAL-ED      SOUTH AFRICA                   NA                   NA                -1.6424525   -1.7808926   -1.5040124
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6768207   -2.8213178   -2.5323235


### Parameter: ATE


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL                          0                    1                 -0.1595390   -0.4451912    0.1261133
Birth       JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                 -0.0239251   -0.0796249    0.0317747
Birth       JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH                     0                    1                  0.3634328   -0.5010973    1.2279629
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                  0.3121924   -0.0105836    0.6349684
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                  0.0265853   -0.5681215    0.6212921
Birth       MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      INDIA                          0                    1                  0.6773842    0.0795369    1.2752314
Birth       MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      NEPAL                          0                    1                  0.2619676   -0.5372267    1.0611620
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU                           0                    1                  0.0297140   -0.1733573    0.2327853
Birth       MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      SOUTH AFRICA                   0                    1                 -0.1782707   -0.6070070    0.2504656
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0999236   -0.3981582    0.5980054
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                 -0.1012420   -0.3626637    0.1601798
6 months    JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                 -0.0417660   -0.1279684    0.0444363
6 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH                     0                    1                 -0.0425157   -0.7371467    0.6521153
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                 -0.2244893   -0.5917633    0.1427847
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                  0.3001471   -0.0172212    0.6175155
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA                          0                    1                  0.0633660   -0.2271230    0.3538550
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL                          0                    1                  0.1036151   -0.1197769    0.3270072
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU                           0                    1                 -0.0870965   -0.3096556    0.1354626
6 months    MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      SOUTH AFRICA                   0                    1                 -0.0614441   -0.3632609    0.2403727
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0840453   -0.3415220    0.1734315
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                  0.0255530   -0.2298178    0.2809239
24 months   JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                 -0.1566527   -0.2663558   -0.0469495
24 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                 -0.8023438   -1.1200638   -0.4846238
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                 -0.0851311   -0.3826086    0.2123465
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                  0.3625672    0.0112466    0.7138878
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA                          0                    1                  0.3967416    0.0853125    0.7081707
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL                          0                    1                  0.1752408   -0.0590006    0.4094822
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU                           0                    1                 -0.0903479   -0.3555947    0.1748988
24 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      SOUTH AFRICA                   0                    1                  0.0000731   -0.2998717    0.3000178
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2407883   -0.5422327    0.0606561


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -0.0301814   -0.0789978    0.0186350
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.0026477   -0.0079148    0.0026195
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.0581887   -0.1503819    0.0340045
Birth       MAL-ED      BANGLADESH                     1                    NA                 0.0285796   -0.0324275    0.0895868
Birth       MAL-ED      BRAZIL                         1                    NA                 0.0940792   -0.2594733    0.4476317
Birth       MAL-ED      INDIA                          1                    NA                 0.1741942   -0.0197134    0.3681018
Birth       MAL-ED      NEPAL                          1                    NA                 0.1281459   -0.2426294    0.4989212
Birth       MAL-ED      PERU                           1                    NA                 0.0099232   -0.0559875    0.0758338
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                -0.1148579   -0.4030658    0.1733500
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0683433   -0.3054417    0.4421283
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.0235907   -0.0673695    0.0201882
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.0035859   -0.0110590    0.0038871
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0821805   -0.1719049    0.0075439
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.0425022   -0.1075071    0.0225027
6 months    MAL-ED      BRAZIL                         1                    NA                 0.1498124   -0.0127393    0.3123642
6 months    MAL-ED      INDIA                          1                    NA                 0.0221120   -0.0621201    0.1063442
6 months    MAL-ED      NEPAL                          1                    NA                 0.0480371   -0.0639932    0.1600674
6 months    MAL-ED      PERU                           1                    NA                -0.0233590   -0.1005398    0.0538218
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                -0.0333615   -0.2653197    0.1985967
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0551544   -0.2352024    0.1248936
24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0065502   -0.0339741    0.0470744
24 months   JiVitA-3    BANGLADESH                     1                    NA                -0.0135436   -0.0230387   -0.0040484
24 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0519842   -0.0902100   -0.0137585
24 months   MAL-ED      BANGLADESH                     1                    NA                -0.0106556   -0.0631393    0.0418281
24 months   MAL-ED      BRAZIL                         1                    NA                 0.1708481   -0.0008276    0.3425238
24 months   MAL-ED      INDIA                          1                    NA                 0.1258896    0.0274739    0.2243053
24 months   MAL-ED      NEPAL                          1                    NA                 0.0863777   -0.0313407    0.2040962
24 months   MAL-ED      PERU                           1                    NA                -0.0269420   -0.1165399    0.0626558
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.0019091   -0.2301332    0.2263151
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1881453   -0.4038036    0.0275130
