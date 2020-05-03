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
![](/tmp/3721c597-455a-41f6-bdea-a88c3c0ecdbd/f00e6daf-b401-4b8a-8150-4dd5a9864e7e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3721c597-455a-41f6-bdea-a88c3c0ecdbd/f00e6daf-b401-4b8a-8150-4dd5a9864e7e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3721c597-455a-41f6-bdea-a88c3c0ecdbd/f00e6daf-b401-4b8a-8150-4dd5a9864e7e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.0257773   -1.1328444   -0.9187101
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.1999116   -1.4637668   -0.9360564
Birth       JiVitA-3    BANGLADESH                     1                    NA                -1.5900744   -1.6137300   -1.5664188
Birth       JiVitA-3    BANGLADESH                     0                    NA                -1.6162714   -1.6713247   -1.5612181
Birth       JiVitA-4    BANGLADESH                     1                    NA                -1.5443076   -1.7494608   -1.3391545
Birth       JiVitA-4    BANGLADESH                     0                    NA                -0.8744484   -1.6350203   -0.1138765
Birth       MAL-ED      BANGLADESH                     1                    NA                -1.1303162   -1.2845243   -0.9761082
Birth       MAL-ED      BANGLADESH                     0                    NA                -0.9036738   -1.2022466   -0.6051009
Birth       MAL-ED      BRAZIL                         1                    NA                -0.5942628   -1.0520037   -0.1365219
Birth       MAL-ED      BRAZIL                         0                    NA                -0.7193814   -1.0969001   -0.3418628
Birth       MAL-ED      INDIA                          1                    NA                -1.4009381   -1.8097774   -0.9920989
Birth       MAL-ED      INDIA                          0                    NA                -0.7422885   -1.1552814   -0.3292955
Birth       MAL-ED      NEPAL                          1                    NA                -0.9697625   -1.3347893   -0.6047357
Birth       MAL-ED      NEPAL                          0                    NA                -0.6240713   -1.2166317   -0.0315109
Birth       MAL-ED      PERU                           1                    NA                -0.8817396   -1.0179606   -0.7455186
Birth       MAL-ED      PERU                           0                    NA                -0.8630086   -1.0385647   -0.6874526
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                -0.4946913   -0.8521234   -0.1372593
Birth       MAL-ED      SOUTH AFRICA                   0                    NA                -0.6382962   -0.8845016   -0.3920908
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2531197   -1.6573619   -0.8488776
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0884279   -1.3548513   -0.8220045
6 months    GMS-Nepal   NEPAL                          1                    NA                -1.3297327   -1.4245892   -1.2348762
6 months    GMS-Nepal   NEPAL                          0                    NA                -1.4793944   -1.7155313   -1.2432576
6 months    JiVitA-3    BANGLADESH                     1                    NA                -1.3200089   -1.3492204   -1.2907973
6 months    JiVitA-3    BANGLADESH                     0                    NA                -1.3626367   -1.4468668   -1.2784067
6 months    JiVitA-4    BANGLADESH                     1                    NA                -1.1250940   -1.3126967   -0.9374912
6 months    JiVitA-4    BANGLADESH                     0                    NA                -1.5143698   -2.1311437   -0.8975959
6 months    MAL-ED      BANGLADESH                     1                    NA                -1.1846570   -1.3105108   -1.0588031
6 months    MAL-ED      BANGLADESH                     0                    NA                -1.4246761   -1.7639218   -1.0854305
6 months    MAL-ED      BRAZIL                         1                    NA                -0.0949979   -0.3248905    0.1348947
6 months    MAL-ED      BRAZIL                         0                    NA                 0.1996477   -0.0133321    0.4126274
6 months    MAL-ED      INDIA                          1                    NA                -1.2266837   -1.3754799   -1.0778874
6 months    MAL-ED      INDIA                          0                    NA                -1.1374211   -1.3813258   -0.8935163
6 months    MAL-ED      NEPAL                          1                    NA                -0.6134832   -0.7783169   -0.4486495
6 months    MAL-ED      NEPAL                          0                    NA                -0.5348815   -0.6931690   -0.3765941
6 months    MAL-ED      PERU                           1                    NA                -1.2845684   -1.4142251   -1.1549117
6 months    MAL-ED      PERU                           0                    NA                -1.3480241   -1.5403056   -1.1557426
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                -1.0208722   -1.2871194   -0.7546250
6 months    MAL-ED      SOUTH AFRICA                   0                    NA                -1.0908102   -1.2458129   -0.9358076
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2937689   -1.5034684   -1.0840694
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4254261   -1.5804950   -1.2703573
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.8848598   -1.9864454   -1.7832741
24 months   GMS-Nepal   NEPAL                          0                    NA                -1.8028345   -2.0321290   -1.5735400
24 months   JiVitA-3    BANGLADESH                     1                    NA                -2.0055709   -2.0433708   -1.9677711
24 months   JiVitA-3    BANGLADESH                     0                    NA                -2.1565239   -2.2616505   -2.0513972
24 months   JiVitA-4    BANGLADESH                     1                    NA                -1.7155830   -1.8636226   -1.5675435
24 months   JiVitA-4    BANGLADESH                     0                    NA                -2.3390977   -2.6687438   -2.0094516
24 months   MAL-ED      BANGLADESH                     1                    NA                -1.9897895   -2.1369561   -1.8426229
24 months   MAL-ED      BANGLADESH                     0                    NA                -2.0571029   -2.3084161   -1.8057897
24 months   MAL-ED      BRAZIL                         1                    NA                -0.1689597   -0.4074458    0.0695263
24 months   MAL-ED      BRAZIL                         0                    NA                 0.1879266   -0.0703123    0.4461655
24 months   MAL-ED      INDIA                          1                    NA                -2.0215223   -2.1789082   -1.8641363
24 months   MAL-ED      INDIA                          0                    NA                -1.6071032   -1.8712088   -1.3429977
24 months   MAL-ED      NEPAL                          1                    NA                -1.4116402   -1.5783359   -1.2449445
24 months   MAL-ED      NEPAL                          0                    NA                -1.2354616   -1.4084087   -1.0625144
24 months   MAL-ED      PERU                           1                    NA                -1.7157067   -1.8614444   -1.5699690
24 months   MAL-ED      PERU                           0                    NA                -1.8011300   -2.0176104   -1.5846495
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                -1.6406001   -1.8705881   -1.4106121
24 months   MAL-ED      SOUTH AFRICA                   0                    NA                -1.6430126   -1.8142907   -1.4717345
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5131774   -2.7554160   -2.2709388
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7266745   -2.9053327   -2.5480163


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
Birth       GMS-Nepal   NEPAL                          0                    1                 -0.1741343   -0.4590280    0.1107594
Birth       JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                 -0.0261970   -0.0817104    0.0293164
Birth       JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH                     0                    1                  0.6698593   -0.1280512    1.4677697
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                  0.2266424   -0.1097695    0.5630544
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                 -0.1251186   -0.7157640    0.4655268
Birth       MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      INDIA                          0                    1                  0.6586497    0.0729194    1.2443800
Birth       MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      NEPAL                          0                    1                  0.3456912   -0.3295139    1.0208962
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU                           0                    1                  0.0187310   -0.1779603    0.2154223
Birth       MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      SOUTH AFRICA                   0                    1                 -0.1436048   -0.5802829    0.2930732
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1646918   -0.3249860    0.6543696
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                 -0.1496617   -0.4028469    0.1035235
6 months    JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                 -0.0426279   -0.1278427    0.0425870
6 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH                     0                    1                 -0.3892758   -1.0338526    0.2553009
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                 -0.2400192   -0.6020096    0.1219712
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                  0.2946456   -0.0173166    0.6066077
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA                          0                    1                  0.0892626   -0.1972936    0.3758188
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL                          0                    1                  0.0786017   -0.1505623    0.3077656
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU                           0                    1                 -0.0634557   -0.2958381    0.1689267
6 months    MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      SOUTH AFRICA                   0                    1                 -0.0699380   -0.3790396    0.2391635
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1316572   -0.3892783    0.1259638
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                  0.0820252   -0.1660400    0.3300905
24 months   JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                 -0.1509529   -0.2592970   -0.0426089
24 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                 -0.6235147   -0.9844659   -0.2625635
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                 -0.0673134   -0.3590676    0.2244407
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                  0.3568863    0.0036394    0.7101332
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA                          0                    1                  0.4144191    0.1064226    0.7224156
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL                          0                    1                  0.1761786   -0.0634178    0.4157751
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU                           0                    1                 -0.0854233   -0.3431161    0.1722696
24 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      SOUTH AFRICA                   0                    1                 -0.0024125   -0.2894162    0.2845912
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2134971   -0.5163809    0.0893866


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -0.0297468   -0.0785347    0.0190411
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.0027713   -0.0080205    0.0024779
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.0630199   -0.1558975    0.0298577
Birth       MAL-ED      BANGLADESH                     1                    NA                 0.0353395   -0.0250487    0.0957277
Birth       MAL-ED      BRAZIL                         1                    NA                -0.1053863   -0.4542797    0.2435071
Birth       MAL-ED      INDIA                          1                    NA                 0.1933772   -0.0023870    0.3891414
Birth       MAL-ED      NEPAL                          1                    NA                 0.1463009   -0.2023097    0.4949116
Birth       MAL-ED      PERU                           1                    NA                 0.0063584   -0.0574391    0.0701560
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                -0.0850087   -0.3807964    0.2107791
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1444923   -0.2206729    0.5096574
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.0202522   -0.0630887    0.0225844
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.0039963   -0.0114511    0.0034585
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0743378   -0.1617704    0.0130947
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.0396349   -0.1044369    0.0251672
6 months    MAL-ED      BRAZIL                         1                    NA                 0.1559070   -0.0052351    0.3170492
6 months    MAL-ED      INDIA                          1                    NA                 0.0264456   -0.0576564    0.1105475
6 months    MAL-ED      NEPAL                          1                    NA                 0.0500764   -0.0653194    0.1654723
6 months    MAL-ED      PERU                           1                    NA                -0.0263050   -0.1070417    0.0544317
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                -0.0453505   -0.2825233    0.1918224
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1092814   -0.2918194    0.0732566
24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0095603   -0.0302916    0.0494122
24 months   JiVitA-3    BANGLADESH                     1                    NA                -0.0131616   -0.0226398   -0.0036833
24 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0570660   -0.0960938   -0.0180382
24 months   MAL-ED      BANGLADESH                     1                    NA                -0.0118691   -0.0642567    0.0405186
24 months   MAL-ED      BRAZIL                         1                    NA                 0.1526659   -0.0194626    0.3247943
24 months   MAL-ED      INDIA                          1                    NA                 0.1221163    0.0248845    0.2193482
24 months   MAL-ED      NEPAL                          1                    NA                 0.1007084   -0.0213863    0.2228031
24 months   MAL-ED      PERU                           1                    NA                -0.0255896   -0.1123176    0.0611384
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.0018524   -0.2150202    0.2113155
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1636433   -0.3787069    0.0514204
