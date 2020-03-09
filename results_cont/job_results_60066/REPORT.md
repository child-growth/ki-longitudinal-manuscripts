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

agecat      studyid     country                        predfeed3    n_cell       n
----------  ----------  -----------------------------  ----------  -------  ------
Birth       EE          PAKISTAN                       1                35      35
Birth       EE          PAKISTAN                       0                 0      35
Birth       GMS-Nepal   NEPAL                          1               380     458
Birth       GMS-Nepal   NEPAL                          0                78     458
Birth       JiVitA-3    BANGLADESH                     1             12017   13276
Birth       JiVitA-3    BANGLADESH                     0              1259   13276
Birth       JiVitA-4    BANGLADESH                     1               105     116
Birth       JiVitA-4    BANGLADESH                     0                11     116
Birth       MAL-ED      BANGLADESH                     1               176     215
Birth       MAL-ED      BANGLADESH                     0                39     215
Birth       MAL-ED      BRAZIL                         1                24      57
Birth       MAL-ED      BRAZIL                         0                33      57
Birth       MAL-ED      INDIA                          1                29      41
Birth       MAL-ED      INDIA                          0                12      41
Birth       MAL-ED      NEPAL                          1                14      26
Birth       MAL-ED      NEPAL                          0                12      26
Birth       MAL-ED      PERU                           1               150     223
Birth       MAL-ED      PERU                           0                73     223
Birth       MAL-ED      SOUTH AFRICA                   1                33     100
Birth       MAL-ED      SOUTH AFRICA                   0                67     100
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                26     102
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                76     102
6 months    EE          PAKISTAN                       1                39      39
6 months    EE          PAKISTAN                       0                 0      39
6 months    GMS-Nepal   NEPAL                          1               367     441
6 months    GMS-Nepal   NEPAL                          0                74     441
6 months    JiVitA-3    BANGLADESH                     1              8516    9328
6 months    JiVitA-3    BANGLADESH                     0               812    9328
6 months    JiVitA-4    BANGLADESH                     1                76      88
6 months    JiVitA-4    BANGLADESH                     0                12      88
6 months    MAL-ED      BANGLADESH                     1               191     233
6 months    MAL-ED      BANGLADESH                     0                42     233
6 months    MAL-ED      BRAZIL                         1                93     187
6 months    MAL-ED      BRAZIL                         0                94     187
6 months    MAL-ED      INDIA                          1               147     210
6 months    MAL-ED      INDIA                          0                63     210
6 months    MAL-ED      NEPAL                          1               113     227
6 months    MAL-ED      NEPAL                          0               114     227
6 months    MAL-ED      PERU                           1               176     270
6 months    MAL-ED      PERU                           0                94     270
6 months    MAL-ED      SOUTH AFRICA                   1                63     244
6 months    MAL-ED      SOUTH AFRICA                   0               181     244
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                64     212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               148     212
24 months   EE          PAKISTAN                       1                20      20
24 months   EE          PAKISTAN                       0                 0      20
24 months   GMS-Nepal   NEPAL                          1               322     384
24 months   GMS-Nepal   NEPAL                          0                62     384
24 months   JiVitA-3    BANGLADESH                     1              4434    4852
24 months   JiVitA-3    BANGLADESH                     0               418    4852
24 months   JiVitA-4    BANGLADESH                     1               136     151
24 months   JiVitA-4    BANGLADESH                     0                15     151
24 months   MAL-ED      BANGLADESH                     1               168     205
24 months   MAL-ED      BANGLADESH                     0                37     205
24 months   MAL-ED      BRAZIL                         1                79     152
24 months   MAL-ED      BRAZIL                         0                73     152
24 months   MAL-ED      INDIA                          1               139     202
24 months   MAL-ED      INDIA                          0                63     202
24 months   MAL-ED      NEPAL                          1               110     220
24 months   MAL-ED      NEPAL                          0               110     220
24 months   MAL-ED      PERU                           1               131     198
24 months   MAL-ED      PERU                           0                67     198
24 months   MAL-ED      SOUTH AFRICA                   1                60     228
24 months   MAL-ED      SOUTH AFRICA                   0               168     228
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                54     184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               130     184


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
![](/tmp/e2f5b343-08cd-4f08-b110-3cbeec99a30e/72ace4ba-b5f3-4c88-af21-15957a8ddfb7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e2f5b343-08cd-4f08-b110-3cbeec99a30e/72ace4ba-b5f3-4c88-af21-15957a8ddfb7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e2f5b343-08cd-4f08-b110-3cbeec99a30e/72ace4ba-b5f3-4c88-af21-15957a8ddfb7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.0253746   -1.1324040   -0.9183451
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.2098039   -1.4743633   -0.9452444
Birth       JiVitA-3    BANGLADESH                     1                    NA                -1.5901351   -1.6138004   -1.5664697
Birth       JiVitA-3    BANGLADESH                     0                    NA                -1.6180250   -1.6728468   -1.5632032
Birth       JiVitA-4    BANGLADESH                     1                    NA                -1.5540627   -1.7592395   -1.3488858
Birth       JiVitA-4    BANGLADESH                     0                    NA                -1.4362472   -2.4304674   -0.4420270
Birth       MAL-ED      BANGLADESH                     1                    NA                -1.1248431   -1.2796875   -0.9699987
Birth       MAL-ED      BANGLADESH                     0                    NA                -0.7946661   -1.0825157   -0.5068165
Birth       MAL-ED      BRAZIL                         1                    NA                -0.6394109   -1.0864889   -0.1923329
Birth       MAL-ED      BRAZIL                         0                    NA                -0.7570760   -1.1396451   -0.3745068
Birth       MAL-ED      INDIA                          1                    NA                -1.3576027   -1.7626145   -0.9525908
Birth       MAL-ED      INDIA                          0                    NA                -0.4917411   -0.9372269   -0.0462553
Birth       MAL-ED      NEPAL                          1                    NA                -0.9653744   -1.3370264   -0.5937224
Birth       MAL-ED      NEPAL                          0                    NA                -0.6542646   -1.3038559   -0.0046733
Birth       MAL-ED      PERU                           1                    NA                -0.8736517   -1.0112137   -0.7360897
Birth       MAL-ED      PERU                           0                    NA                -0.8692632   -1.0444876   -0.6940388
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                -0.4771301   -0.8373239   -0.1169362
Birth       MAL-ED      SOUTH AFRICA                   0                    NA                -0.6472297   -0.8938978   -0.4005617
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.4501490   -1.8501391   -1.0501588
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1131532   -1.3810490   -0.8452575
6 months    GMS-Nepal   NEPAL                          1                    NA                -1.3247034   -1.4196268   -1.2297800
6 months    GMS-Nepal   NEPAL                          0                    NA                -1.3922428   -1.6249137   -1.1595719
6 months    JiVitA-3    BANGLADESH                     1                    NA                -1.3202507   -1.3494394   -1.2910621
6 months    JiVitA-3    BANGLADESH                     0                    NA                -1.3639014   -1.4469499   -1.2808529
6 months    JiVitA-4    BANGLADESH                     1                    NA                -1.1237658   -1.3112743   -0.9362573
6 months    JiVitA-4    BANGLADESH                     0                    NA                -1.2882394   -2.0424837   -0.5339951
6 months    MAL-ED      BANGLADESH                     1                    NA                -1.1839115   -1.3101028   -1.0577201
6 months    MAL-ED      BANGLADESH                     0                    NA                -1.4493607   -1.7895286   -1.1091927
6 months    MAL-ED      BRAZIL                         1                    NA                -0.0640196   -0.2894701    0.1614309
6 months    MAL-ED      BRAZIL                         0                    NA                 0.1847579   -0.0256313    0.3951470
6 months    MAL-ED      INDIA                          1                    NA                -1.2270600   -1.3782917   -1.0758283
6 months    MAL-ED      INDIA                          0                    NA                -1.1193279   -1.3609253   -0.8777305
6 months    MAL-ED      NEPAL                          1                    NA                -0.6070373   -0.7699226   -0.4441519
6 months    MAL-ED      NEPAL                          0                    NA                -0.5169165   -0.6741767   -0.3596563
6 months    MAL-ED      PERU                           1                    NA                -1.2861643   -1.4162236   -1.1561049
6 months    MAL-ED      PERU                           0                    NA                -1.3577459   -1.5489302   -1.1665615
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                -1.0228379   -1.2765552   -0.7691205
6 months    MAL-ED      SOUTH AFRICA                   0                    NA                -1.0890143   -1.2433898   -0.9346389
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3383726   -1.5425532   -1.1341919
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4263514   -1.5821719   -1.2705308
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.8826162   -1.9842791   -1.7809533
24 months   GMS-Nepal   NEPAL                          0                    NA                -1.8345433   -2.0652620   -1.6038245
24 months   JiVitA-3    BANGLADESH                     1                    NA                -2.0056723   -2.0434838   -1.9678609
24 months   JiVitA-3    BANGLADESH                     0                    NA                -2.1501371   -2.2563264   -2.0439478
24 months   JiVitA-4    BANGLADESH                     1                    NA                -1.7152229   -1.8632220   -1.5672238
24 months   JiVitA-4    BANGLADESH                     0                    NA                -2.2106338   -2.4864257   -1.9348419
24 months   MAL-ED      BANGLADESH                     1                    NA                -1.9897239   -2.1373181   -1.8421298
24 months   MAL-ED      BANGLADESH                     0                    NA                -1.9904476   -2.2428137   -1.7380815
24 months   MAL-ED      BRAZIL                         1                    NA                -0.1758447   -0.4161973    0.0645079
24 months   MAL-ED      BRAZIL                         0                    NA                 0.2041818   -0.0593081    0.4676717
24 months   MAL-ED      INDIA                          1                    NA                -2.0186985   -2.1764784   -1.8609187
24 months   MAL-ED      INDIA                          0                    NA                -1.6023220   -1.8533462   -1.3512978
24 months   MAL-ED      NEPAL                          1                    NA                -1.3980898   -1.5629543   -1.2332253
24 months   MAL-ED      NEPAL                          0                    NA                -1.2355503   -1.4087007   -1.0623999
24 months   MAL-ED      PERU                           1                    NA                -1.7192143   -1.8640108   -1.5744178
24 months   MAL-ED      PERU                           0                    NA                -1.7945724   -2.0105975   -1.5785473
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                -1.6437506   -1.8767539   -1.4107473
24 months   MAL-ED      SOUTH AFRICA                   0                    NA                -1.6443410   -1.8146409   -1.4740411
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5431111   -2.7831628   -2.3030595
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7239662   -2.9013195   -2.5466129


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
Birth       GMS-Nepal   NEPAL                          0                    1                 -0.1844293   -0.4699670    0.1011084
Birth       JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                 -0.0278900   -0.0831504    0.0273705
Birth       JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH                     0                    1                  0.1178155   -0.8995487    1.1351796
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                  0.3301770    0.0022291    0.6581248
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                 -0.1176651   -0.7093554    0.4740253
Birth       MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      INDIA                          0                    1                  0.8658616    0.2461315    1.4855917
Birth       MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      NEPAL                          0                    1                  0.3111097   -0.4298576    1.0520771
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU                           0                    1                  0.0043885   -0.1931833    0.2019603
Birth       MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      SOUTH AFRICA                   0                    1                 -0.1700997   -0.6073134    0.2671140
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.3369957   -0.1524361    0.8264275
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                 -0.0675394   -0.3191312    0.1840523
6 months    JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                 -0.0436506   -0.1276100    0.0403087
6 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH                     0                    1                 -0.1644736   -0.9444348    0.6154875
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                 -0.2654492   -0.6286470    0.0977486
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                  0.2487775   -0.0583234    0.5558783
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA                          0                    1                  0.1077321   -0.1776182    0.3930824
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL                          0                    1                  0.0901207   -0.1348283    0.3150697
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU                           0                    1                 -0.0715816   -0.3029995    0.1598364
6 months    MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      SOUTH AFRICA                   0                    1                 -0.0661765   -0.3637080    0.2313551
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0879788   -0.3423758    0.1664181
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                  0.0480730   -0.2015439    0.2976898
24 months   JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                 -0.1444648   -0.2535685   -0.0353611
24 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                 -0.4954109   -0.8075909   -0.1832308
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                 -0.0007237   -0.2936410    0.2921936
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                  0.3800265    0.0200720    0.7399810
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA                          0                    1                  0.4163765    0.1219052    0.7108478
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL                          0                    1                  0.1625395   -0.0757644    0.4008434
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU                           0                    1                 -0.0753581   -0.3323654    0.1816493
24 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      SOUTH AFRICA                   0                    1                 -0.0005904   -0.2880148    0.2868339
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1808551   -0.4786870    0.1169768


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -0.0301494   -0.0788824    0.0185835
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.0027107   -0.0079584    0.0025370
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.0532649   -0.1423727    0.0358429
Birth       MAL-ED      BANGLADESH                     1                    NA                 0.0298663   -0.0316158    0.0913485
Birth       MAL-ED      BRAZIL                         1                    NA                -0.0602382   -0.4060968    0.2856203
Birth       MAL-ED      INDIA                          1                    NA                 0.1500417   -0.0361095    0.3361930
Birth       MAL-ED      NEPAL                          1                    NA                 0.1419128   -0.2161002    0.4999259
Birth       MAL-ED      PERU                           1                    NA                -0.0017295   -0.0678077    0.0643488
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                -0.1025699   -0.3993217    0.1941818
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3415215   -0.0279478    0.7109908
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.0252815   -0.0695391    0.0189761
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.0037544   -0.0111306    0.0036218
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0756660   -0.1627930    0.0114609
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.0403804   -0.1053000    0.0245392
6 months    MAL-ED      BRAZIL                         1                    NA                 0.1249287   -0.0304362    0.2802935
6 months    MAL-ED      INDIA                          1                    NA                 0.0268219   -0.0588653    0.1125092
6 months    MAL-ED      NEPAL                          1                    NA                 0.0436305   -0.0690928    0.1563538
6 months    MAL-ED      PERU                           1                    NA                -0.0247092   -0.1056972    0.0562789
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                -0.0433848   -0.2685279    0.1817584
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0646778   -0.2424666    0.1131111
24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0073167   -0.0324645    0.0470979
24 months   JiVitA-3    BANGLADESH                     1                    NA                -0.0130601   -0.0225402   -0.0035801
24 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0574261   -0.0965731   -0.0182790
24 months   MAL-ED      BANGLADESH                     1                    NA                -0.0119346   -0.0643039    0.0404347
24 months   MAL-ED      BRAZIL                         1                    NA                 0.1595509   -0.0153476    0.3344493
24 months   MAL-ED      INDIA                          1                    NA                 0.1192926    0.0253370    0.2132482
24 months   MAL-ED      NEPAL                          1                    NA                 0.0871580   -0.0325723    0.2068882
24 months   MAL-ED      PERU                           1                    NA                -0.0220820   -0.1090333    0.0648694
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0012981   -0.2145949    0.2171911
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1337095   -0.3448959    0.0774768
