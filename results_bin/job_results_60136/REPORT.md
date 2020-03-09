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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
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
* delta_W_nrooms
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

agecat      studyid          country                        nchldlt5    stunted   n_cell       n
----------  ---------------  -----------------------------  ---------  --------  -------  ------
Birth       IRC              INDIA                          1                 0       72     388
Birth       IRC              INDIA                          1                 1       12     388
Birth       IRC              INDIA                          2+                0      271     388
Birth       IRC              INDIA                          2+                1       33     388
Birth       JiVitA-3         BANGLADESH                     1                 0     9011   22431
Birth       JiVitA-3         BANGLADESH                     1                 1     4975   22431
Birth       JiVitA-3         BANGLADESH                     2+                0     6039   22431
Birth       JiVitA-3         BANGLADESH                     2+                1     2406   22431
Birth       NIH-Crypto       BANGLADESH                     1                 0      449     732
Birth       NIH-Crypto       BANGLADESH                     1                 1       73     732
Birth       NIH-Crypto       BANGLADESH                     2+                0      182     732
Birth       NIH-Crypto       BANGLADESH                     2+                1       28     732
Birth       PROVIDE          BANGLADESH                     1                 0      354     539
Birth       PROVIDE          BANGLADESH                     1                 1       37     539
Birth       PROVIDE          BANGLADESH                     2+                0      137     539
Birth       PROVIDE          BANGLADESH                     2+                1       11     539
6 months    IRC              INDIA                          1                 0       67     407
6 months    IRC              INDIA                          1                 1       22     407
6 months    IRC              INDIA                          2+                0      240     407
6 months    IRC              INDIA                          2+                1       78     407
6 months    JiVitA-3         BANGLADESH                     1                 0     8093   16800
6 months    JiVitA-3         BANGLADESH                     1                 1     2794   16800
6 months    JiVitA-3         BANGLADESH                     2+                0     4484   16800
6 months    JiVitA-3         BANGLADESH                     2+                1     1429   16800
6 months    LCNI-5           MALAWI                         1                 0      263     811
6 months    LCNI-5           MALAWI                         1                 1      127     811
6 months    LCNI-5           MALAWI                         2+                0      253     811
6 months    LCNI-5           MALAWI                         2+                1      168     811
6 months    NIH-Crypto       BANGLADESH                     1                 0      400     715
6 months    NIH-Crypto       BANGLADESH                     1                 1      107     715
6 months    NIH-Crypto       BANGLADESH                     2+                0      165     715
6 months    NIH-Crypto       BANGLADESH                     2+                1       43     715
6 months    PROVIDE          BANGLADESH                     1                 0      368     604
6 months    PROVIDE          BANGLADESH                     1                 1       70     604
6 months    PROVIDE          BANGLADESH                     2+                0      140     604
6 months    PROVIDE          BANGLADESH                     2+                1       26     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1267    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      124    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      558    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1       71    2020
24 months   IRC              INDIA                          1                 0       58     409
24 months   IRC              INDIA                          1                 1       31     409
24 months   IRC              INDIA                          2+                0      179     409
24 months   IRC              INDIA                          2+                1      141     409
24 months   JiVitA-3         BANGLADESH                     1                 0     2889    8622
24 months   JiVitA-3         BANGLADESH                     1                 1     2565    8622
24 months   JiVitA-3         BANGLADESH                     2+                0     1499    8622
24 months   JiVitA-3         BANGLADESH                     2+                1     1669    8622
24 months   LCNI-5           MALAWI                         1                 0      161     571
24 months   LCNI-5           MALAWI                         1                 1      122     571
24 months   LCNI-5           MALAWI                         2+                0      158     571
24 months   LCNI-5           MALAWI                         2+                1      130     571
24 months   NIH-Crypto       BANGLADESH                     1                 0      276     514
24 months   NIH-Crypto       BANGLADESH                     1                 1       81     514
24 months   NIH-Crypto       BANGLADESH                     2+                0      106     514
24 months   NIH-Crypto       BANGLADESH                     2+                1       51     514
24 months   PROVIDE          BANGLADESH                     1                 0      299     578
24 months   PROVIDE          BANGLADESH                     1                 1      125     578
24 months   PROVIDE          BANGLADESH                     2+                0       89     578
24 months   PROVIDE          BANGLADESH                     2+                1       65     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        0       6


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7d69d54a-1e42-4984-b8ee-d208c5281665/54276ed5-fe95-48e1-8ae7-8a38039d88e0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7d69d54a-1e42-4984-b8ee-d208c5281665/54276ed5-fe95-48e1-8ae7-8a38039d88e0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7d69d54a-1e42-4984-b8ee-d208c5281665/54276ed5-fe95-48e1-8ae7-8a38039d88e0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7d69d54a-1e42-4984-b8ee-d208c5281665/54276ed5-fe95-48e1-8ae7-8a38039d88e0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          1                    NA                0.1435317   0.0688767   0.2181867
Birth       IRC              INDIA                          2+                   NA                0.1083745   0.0734137   0.1433352
Birth       JiVitA-3         BANGLADESH                     1                    NA                0.3406775   0.3299918   0.3513632
Birth       JiVitA-3         BANGLADESH                     2+                   NA                0.3149418   0.2983568   0.3315268
Birth       NIH-Crypto       BANGLADESH                     1                    NA                0.1378280   0.1076212   0.1680349
Birth       NIH-Crypto       BANGLADESH                     2+                   NA                0.1320028   0.0848595   0.1791461
Birth       PROVIDE          BANGLADESH                     1                    NA                0.0950235   0.0659395   0.1241075
Birth       PROVIDE          BANGLADESH                     2+                   NA                0.0725119   0.0296747   0.1153490
6 months    IRC              INDIA                          1                    NA                0.2411323   0.1514459   0.3308187
6 months    IRC              INDIA                          2+                   NA                0.2456701   0.1982201   0.2931200
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.2534531   0.2424926   0.2644136
6 months    JiVitA-3         BANGLADESH                     2+                   NA                0.2527057   0.2329234   0.2724879
6 months    LCNI-5           MALAWI                         1                    NA                0.3391470   0.2914836   0.3868105
6 months    LCNI-5           MALAWI                         2+                   NA                0.3856357   0.3387357   0.4325357
6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.2098419   0.1740961   0.2455876
6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.2141047   0.1550854   0.2731240
6 months    PROVIDE          BANGLADESH                     1                    NA                0.1604379   0.1260336   0.1948421
6 months    PROVIDE          BANGLADESH                     2+                   NA                0.1593313   0.1039379   0.2147246
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0913991   0.0751720   0.1076263
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1120542   0.0827337   0.1413747
24 months   IRC              INDIA                          1                    NA                0.3556319   0.2526532   0.4586106
24 months   IRC              INDIA                          2+                   NA                0.4403899   0.3857755   0.4950043
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.4716528   0.4533208   0.4899849
24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.5197077   0.4898869   0.5495284
24 months   LCNI-5           MALAWI                         1                    NA                0.4361086   0.3767687   0.4954486
24 months   LCNI-5           MALAWI                         2+                   NA                0.4459922   0.3879662   0.5040182
24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.2400919   0.1948801   0.2853037
24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.3558233   0.2792790   0.4323676
24 months   PROVIDE          BANGLADESH                     1                    NA                0.2995296   0.2563508   0.3427085
24 months   PROVIDE          BANGLADESH                     2+                   NA                0.4040008   0.3265629   0.4814387


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.3290535   0.3216788   0.3364283
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
6 months    IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2513690   0.2432434   0.2594947
6 months    LCNI-5           MALAWI                         NA                   NA                0.3637485   0.3306185   0.3968784
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965347   0.0836528   0.1094165
24 months   IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4910694   0.4779621   0.5041766
24 months   LCNI-5           MALAWI                         NA                   NA                0.4413310   0.4005676   0.4820944
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA                          2+                   1                 0.7550560   0.4091807   1.3932953
Birth       JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     2+                   1                 0.9244573   0.8708982   0.9813103
Birth       NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH                     2+                   1                 0.9577354   0.6297592   1.4565201
Birth       PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     2+                   1                 0.7630941   0.3923761   1.4840672
6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          2+                   1                 1.0188187   0.6701549   1.5488828
6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     2+                   1                 0.9970511   0.9146356   1.0868928
6 months    LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    LCNI-5           MALAWI                         2+                   1                 1.1370753   0.9454287   1.3675703
6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto       BANGLADESH                     2+                   1                 1.0203143   0.7386671   1.4093511
6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     2+                   1                 0.9931026   0.6599832   1.4943606
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.2259874   0.8938862   1.6814725
24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          2+                   1                 1.2383307   0.9036011   1.6970574
24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     2+                   1                 1.1018860   1.0318888   1.1766315
24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   LCNI-5           MALAWI                         2+                   1                 1.0226630   0.8480718   1.2331971
24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.4820294   1.1198947   1.9612659
24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     2+                   1                 1.3487840   1.0653798   1.7075772


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.0275523   -0.0922942    0.0371896
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.0116239   -0.0184306   -0.0048172
Birth       NIH-Crypto       BANGLADESH                     1                    NA                 0.0001501   -0.0163898    0.0166900
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.0059697   -0.0203574    0.0084181
6 months    IRC              INDIA                          1                    NA                 0.0045680   -0.0748857    0.0840216
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0020840   -0.0091407    0.0049726
6 months    LCNI-5           MALAWI                         1                    NA                 0.0246014   -0.0108449    0.0600478
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0000517   -0.0198379    0.0197345
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0014975   -0.0194660    0.0164711
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0051355   -0.0053316    0.0156027
24 months   IRC              INDIA                          1                    NA                 0.0649060   -0.0274823    0.1572943
24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0194165    0.0073976    0.0314354
24 months   LCNI-5           MALAWI                         1                    NA                 0.0052224   -0.0376702    0.0481149
24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0167174   -0.0107190    0.0441538
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0291901    0.0057080    0.0526722


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.2375622   -0.9399070    0.2104981
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.0353253   -0.0561260   -0.0149344
Birth       NIH-Crypto       BANGLADESH                     1                    NA                 0.0010878   -0.1262786    0.1140509
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.0670346   -0.2408356    0.0824224
6 months    IRC              INDIA                          1                    NA                 0.0185916   -0.3644349    0.2940943
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0082908   -0.0367489    0.0193862
6 months    LCNI-5           MALAWI                         1                    NA                 0.0676331   -0.0350656    0.1601420
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0002463   -0.0991503    0.0897581
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0094216   -0.1290454    0.0975280
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0531987   -0.0615839    0.1555705
24 months   IRC              INDIA                          1                    NA                 0.1543404   -0.0968585    0.3480106
24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0395393    0.0146585    0.0637918
24 months   LCNI-5           MALAWI                         1                    NA                 0.0118332   -0.0903096    0.1044070
24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0650966   -0.0478504    0.1658691
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0887993    0.0146491    0.1573694
