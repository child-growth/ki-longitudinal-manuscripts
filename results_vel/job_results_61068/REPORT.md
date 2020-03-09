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

**Outcome Variable:** y_rate_len

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

agecat         studyid          country                        nchldlt5    n_cell       n
-------------  ---------------  -----------------------------  ---------  -------  ------
0-3 months     IRC              INDIA                          1               82     377
0-3 months     IRC              INDIA                          2+             295     377
0-3 months     JiVitA-3         BANGLADESH                     1            12370   19860
0-3 months     JiVitA-3         BANGLADESH                     2+            7490   19860
0-3 months     NIH-Crypto       BANGLADESH                     1              512     721
0-3 months     NIH-Crypto       BANGLADESH                     2+             209     721
0-3 months     PROVIDE          BANGLADESH                     1              471     640
0-3 months     PROVIDE          BANGLADESH                     2+             169     640
3-6 months     IRC              INDIA                          1               87     397
3-6 months     IRC              INDIA                          2+             310     397
3-6 months     JiVitA-3         BANGLADESH                     1             8103   12572
3-6 months     JiVitA-3         BANGLADESH                     2+            4469   12572
3-6 months     NIH-Crypto       BANGLADESH                     1              492     695
3-6 months     NIH-Crypto       BANGLADESH                     2+             203     695
3-6 months     PROVIDE          BANGLADESH                     1              434     598
3-6 months     PROVIDE          BANGLADESH                     2+             164     598
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1146    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             510    1656
6-9 months     IRC              INDIA                          1               89     407
6-9 months     IRC              INDIA                          2+             318     407
6-9 months     LCNI-5           MALAWI                         1              261     557
6-9 months     LCNI-5           MALAWI                         2+             296     557
6-9 months     NIH-Crypto       BANGLADESH                     1              488     688
6-9 months     NIH-Crypto       BANGLADESH                     2+             200     688
6-9 months     PROVIDE          BANGLADESH                     1              410     565
6-9 months     PROVIDE          BANGLADESH                     2+             155     565
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1036    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             444    1480
9-12 months    iLiNS-Zinc       BURKINA FASO                   1              364    1101
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+             737    1101
9-12 months    IRC              INDIA                          1               88     400
9-12 months    IRC              INDIA                          2+             312     400
9-12 months    LCNI-5           MALAWI                         1              179     383
9-12 months    LCNI-5           MALAWI                         2+             204     383
9-12 months    NIH-Crypto       BANGLADESH                     1              475     674
9-12 months    NIH-Crypto       BANGLADESH                     2+             199     674
9-12 months    PROVIDE          BANGLADESH                     1              413     566
9-12 months    PROVIDE          BANGLADESH                     2+             153     566
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              764    1075
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             311    1075
12-15 months   iLiNS-Zinc       BURKINA FASO                   1              324     958
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+             634     958
12-15 months   IRC              INDIA                          1               82     390
12-15 months   IRC              INDIA                          2+             308     390
12-15 months   LCNI-5           MALAWI                         1               52     125
12-15 months   LCNI-5           MALAWI                         2+              73     125
12-15 months   NIH-Crypto       BANGLADESH                     1              463     660
12-15 months   NIH-Crypto       BANGLADESH                     2+             197     660
12-15 months   PROVIDE          BANGLADESH                     1              391     532
12-15 months   PROVIDE          BANGLADESH                     2+             141     532
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              570     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             216     786
15-18 months   iLiNS-Zinc       BURKINA FASO                   1              329    1006
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+             677    1006
15-18 months   IRC              INDIA                          1               78     382
15-18 months   IRC              INDIA                          2+             304     382
15-18 months   LCNI-5           MALAWI                         1               51     118
15-18 months   LCNI-5           MALAWI                         2+              67     118
15-18 months   NIH-Crypto       BANGLADESH                     1              425     604
15-18 months   NIH-Crypto       BANGLADESH                     2+             179     604
15-18 months   PROVIDE          BANGLADESH                     1              388     528
15-18 months   PROVIDE          BANGLADESH                     2+             140     528
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              481     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             181     662
18-21 months   IRC              INDIA                          1               82     379
18-21 months   IRC              INDIA                          2+             297     379
18-21 months   LCNI-5           MALAWI                         1              241     472
18-21 months   LCNI-5           MALAWI                         2+             231     472
18-21 months   NIH-Crypto       BANGLADESH                     1              387     546
18-21 months   NIH-Crypto       BANGLADESH                     2+             159     546
18-21 months   PROVIDE          BANGLADESH                     1              394     541
18-21 months   PROVIDE          BANGLADESH                     2+             147     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                8       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       9
21-24 months   IRC              INDIA                          1               84     389
21-24 months   IRC              INDIA                          2+             305     389
21-24 months   LCNI-5           MALAWI                         1              213     403
21-24 months   LCNI-5           MALAWI                         2+             190     403
21-24 months   NIH-Crypto       BANGLADESH                     1              340     490
21-24 months   NIH-Crypto       BANGLADESH                     2+             150     490
21-24 months   PROVIDE          BANGLADESH                     1              342     471
21-24 months   PROVIDE          BANGLADESH                     2+             129     471


The following strata were considered:

* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4efb6d02-e277-4924-a594-e942eb78be72/71f37db4-ab4d-4aa5-ab22-7ce5323fb6e0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4efb6d02-e277-4924-a594-e942eb78be72/71f37db4-ab4d-4aa5-ab22-7ce5323fb6e0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4efb6d02-e277-4924-a594-e942eb78be72/71f37db4-ab4d-4aa5-ab22-7ce5323fb6e0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     IRC              INDIA                          1                    NA                3.1157409   2.8370672   3.3944147
0-3 months     IRC              INDIA                          2+                   NA                3.1451595   3.0249105   3.2654086
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                3.7421266   3.7281863   3.7560670
0-3 months     JiVitA-3         BANGLADESH                     2+                   NA                3.6766416   3.6520936   3.7011895
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                3.1458853   3.1018777   3.1898930
0-3 months     NIH-Crypto       BANGLADESH                     2+                   NA                3.0851662   3.0197868   3.1505456
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.2627848   3.2131217   3.3124480
0-3 months     PROVIDE          BANGLADESH                     2+                   NA                3.2010708   3.1243097   3.2778319
3-6 months     IRC              INDIA                          1                    NA                1.8900568   1.7541480   2.0259656
3-6 months     IRC              INDIA                          2+                   NA                1.8785668   1.8064165   1.9507172
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                1.9278698   1.9128617   1.9428780
3-6 months     JiVitA-3         BANGLADESH                     2+                   NA                1.9140988   1.8866020   1.9415957
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                2.0284410   1.9841970   2.0726851
3-6 months     NIH-Crypto       BANGLADESH                     2+                   NA                1.9498465   1.8782976   2.0213954
3-6 months     PROVIDE          BANGLADESH                     1                    NA                1.9921274   1.9467497   2.0375051
3-6 months     PROVIDE          BANGLADESH                     2+                   NA                1.8732045   1.8058133   1.9405958
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7972874   1.7520228   1.8425519
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                1.8230105   1.7516387   1.8943822
6-9 months     IRC              INDIA                          1                    NA                1.3147512   1.2022141   1.4272883
6-9 months     IRC              INDIA                          2+                   NA                1.3842273   1.3299546   1.4384999
6-9 months     LCNI-5           MALAWI                         1                    NA                1.4920050   1.4354072   1.5486027
6-9 months     LCNI-5           MALAWI                         2+                   NA                1.4260767   1.3771830   1.4749705
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                1.3289772   1.2951704   1.3627841
6-9 months     NIH-Crypto       BANGLADESH                     2+                   NA                1.3384239   1.2772378   1.3996101
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.2881161   1.2517033   1.3245288
6-9 months     PROVIDE          BANGLADESH                     2+                   NA                1.1707468   1.1098924   1.2316012
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3303505   1.2849673   1.3757338
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                1.2866611   1.2100093   1.3633129
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                1.1149633   1.0755241   1.1544026
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+                   NA                1.0783402   1.0274417   1.1292388
9-12 months    IRC              INDIA                          1                    NA                1.1732429   1.0733343   1.2731515
9-12 months    IRC              INDIA                          2+                   NA                1.1110630   1.0685099   1.1536162
9-12 months    LCNI-5           MALAWI                         1                    NA                1.1067117   1.0335411   1.1798822
9-12 months    LCNI-5           MALAWI                         2+                   NA                1.0996931   1.0381911   1.1611951
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                1.1278754   1.0959090   1.1598417
9-12 months    NIH-Crypto       BANGLADESH                     2+                   NA                1.1258935   1.0722501   1.1795368
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.0616020   1.0240396   1.0991645
9-12 months    PROVIDE          BANGLADESH                     2+                   NA                1.0389597   0.9858994   1.0920200
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0714719   1.0324485   1.1104953
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                1.1246682   1.0518054   1.1975310
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.9630482   0.9080097   1.0180867
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.9675245   0.9060943   1.0289547
12-15 months   IRC              INDIA                          1                    NA                1.0602054   0.9413781   1.1790327
12-15 months   IRC              INDIA                          2+                   NA                0.9271886   0.8849857   0.9693915
12-15 months   LCNI-5           MALAWI                         1                    NA                1.0831886   0.9438373   1.2225399
12-15 months   LCNI-5           MALAWI                         2+                   NA                0.8675824   0.7355065   0.9996583
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9754847   0.9466496   1.0043198
12-15 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.9576983   0.9099098   1.0054869
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.9663052   0.9317115   1.0008988
12-15 months   PROVIDE          BANGLADESH                     2+                   NA                0.9180082   0.8532316   0.9827847
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9285164   0.8844253   0.9726074
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.9350057   0.8562036   1.0138077
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.9482400   0.8708011   1.0256789
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.9068628   0.8689106   0.9448150
15-18 months   IRC              INDIA                          1                    NA                0.8606833   0.7829153   0.9384514
15-18 months   IRC              INDIA                          2+                   NA                0.8571814   0.8136858   0.9006770
15-18 months   LCNI-5           MALAWI                         1                    NA                0.8633996   0.7376547   0.9891445
15-18 months   LCNI-5           MALAWI                         2+                   NA                0.8113072   0.7125267   0.9100878
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9170835   0.8893000   0.9448669
15-18 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.9072701   0.8616864   0.9528537
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.8536206   0.8212401   0.8860011
15-18 months   PROVIDE          BANGLADESH                     2+                   NA                0.9084538   0.8517052   0.9652023
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9618313   0.9112735   1.0123890
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.8811192   0.7893065   0.9729318
18-21 months   IRC              INDIA                          1                    NA                0.8088346   0.7133701   0.9042991
18-21 months   IRC              INDIA                          2+                   NA                0.7459208   0.7035785   0.7882632
18-21 months   LCNI-5           MALAWI                         1                    NA                0.8405249   0.7790460   0.9020038
18-21 months   LCNI-5           MALAWI                         2+                   NA                0.7966055   0.7242607   0.8689504
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.7933224   0.7659086   0.8207362
18-21 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.7976077   0.7516730   0.8435423
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.8532227   0.8205542   0.8858912
18-21 months   PROVIDE          BANGLADESH                     2+                   NA                0.7756914   0.7278740   0.8235089
21-24 months   IRC              INDIA                          1                    NA                0.7389303   0.6063703   0.8714904
21-24 months   IRC              INDIA                          2+                   NA                0.7069911   0.6634079   0.7505743
21-24 months   LCNI-5           MALAWI                         1                    NA                0.7562791   0.6900907   0.8224675
21-24 months   LCNI-5           MALAWI                         2+                   NA                0.7391556   0.6780936   0.8002176
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.8175997   0.7879101   0.8472893
21-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.7608592   0.7130228   0.8086955
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.7635831   0.7302776   0.7968887
21-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.7346983   0.6809331   0.7884635


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                3.7234105   3.7131018   3.7337192
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
3-6 months     IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                1.9202415   1.9097813   1.9307016
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7933135   1.7575160   1.8291109
6-9 months     IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     LCNI-5           MALAWI                         NA                   NA                1.4616153   1.4251800   1.4980507
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3249931   1.2883838   1.3616025
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                1.0917213   1.0579961   1.1254464
9-12 months    IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    LCNI-5           MALAWI                         NA                   NA                1.1007887   1.0539615   1.1476158
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0855731   1.0514671   1.1196792
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9671413   0.9257414   1.0085412
12-15 months   IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.9583944   0.8610293   1.0557595
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9319267   0.8950348   0.9688186
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9206852   0.8832466   0.9581239
15-18 months   IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.8198824   0.7480865   0.8916783
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9372014   0.8951355   0.9792674
18-21 months   IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.8206832   0.7740479   0.8673186
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.7500561   0.7042548   0.7958575
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          2+                   1                  0.0294186   -0.2741399    0.3329772
0-3 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     2+                   1                 -0.0654851   -0.0927479   -0.0382222
0-3 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     2+                   1                 -0.0607191   -0.1393342    0.0178959
0-3 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     2+                   1                 -0.0617140   -0.1534678    0.0300397
3-6 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          2+                   1                 -0.0114900   -0.1655559    0.1425759
3-6 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     2+                   1                 -0.0137710   -0.0449132    0.0173712
3-6 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     2+                   1                 -0.0785945   -0.1626820    0.0054929
3-6 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     2+                   1                 -0.1189229   -0.2004060   -0.0374397
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0257231   -0.0589493    0.1103955
6-9 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          2+                   1                  0.0694761   -0.0559859    0.1949380
6-9 months     LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         2+                   1                 -0.0659282   -0.1413613    0.0095048
6-9 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     2+                   1                  0.0094467   -0.0602204    0.0791137
6-9 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     2+                   1                 -0.1173693   -0.1885005   -0.0462380
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0436895   -0.1331630    0.0457841
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0366231   -0.1034564    0.0302103
9-12 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          2+                   1                 -0.0621799   -0.1708051    0.0464453
9-12 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         2+                   1                 -0.0070186   -0.1040820    0.0900448
9-12 months    NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     2+                   1                 -0.0019819   -0.0644801    0.0605163
9-12 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     2+                   1                 -0.0226423   -0.0876446    0.0423600
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0531963   -0.0294950    0.1358876
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                  0.0044764   -0.0774654    0.0864181
12-15 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          2+                   1                 -0.1330167   -0.2594156   -0.0066179
12-15 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         2+                   1                 -0.2156062   -0.4080201   -0.0231922
12-15 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0177863   -0.0736589    0.0380862
12-15 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0482970   -0.1217728    0.0251788
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0064893   -0.0842916    0.0972701
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0413772   -0.1187087    0.0359543
15-18 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          2+                   1                 -0.0035019   -0.0927155    0.0857117
15-18 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         2+                   1                 -0.0520924   -0.2158950    0.1117103
15-18 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0098134   -0.0631885    0.0435617
15-18 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     2+                   1                  0.0548332   -0.0105236    0.1201900
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0807121   -0.1857373    0.0243131
18-21 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          2+                   1                 -0.0629138   -0.1674986    0.0416711
18-21 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         2+                   1                 -0.0439194   -0.1395444    0.0517057
18-21 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     2+                   1                  0.0042853   -0.0490598    0.0576303
18-21 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0775313   -0.1353811   -0.0196815
21-24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          2+                   1                 -0.0319393   -0.1716683    0.1077898
21-24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         2+                   1                 -0.0171235   -0.1072630    0.0730159
21-24 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0567405   -0.1130870   -0.0003941
21-24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0288848   -0.0924368    0.0346671


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          1                    NA                 0.0225083   -0.2190219    0.2640386
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0187161   -0.0279222   -0.0095100
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0166405   -0.0396550    0.0063741
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.0051038   -0.0356513    0.0254437
3-6 months     IRC              INDIA                          1                    NA                -0.0093830   -0.1289515    0.1101855
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0076283   -0.0179078    0.0026511
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0226438   -0.0490251    0.0037376
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0263817   -0.0551653    0.0024020
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0039739   -0.0300878    0.0221400
6-9 months     IRC              INDIA                          1                    NA                 0.0576497   -0.0410279    0.1563273
6-9 months     LCNI-5           MALAWI                         1                    NA                -0.0303896   -0.0716175    0.0108382
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0007078   -0.0207109    0.0192954
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0056976   -0.0298612    0.0184660
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0053574   -0.0331552    0.0224404
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0232420   -0.0655219    0.0190379
9-12 months    IRC              INDIA                          1                    NA                -0.0497695   -0.1353863    0.0358473
9-12 months    LCNI-5           MALAWI                         1                    NA                -0.0059230   -0.0577915    0.0459455
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0044009   -0.0227641    0.0139624
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0116270   -0.0351981    0.0119440
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0141012   -0.0103454    0.0385478
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0040931   -0.0488036    0.0569898
12-15 months   IRC              INDIA                          1                    NA                -0.1048514   -0.2051256   -0.0045773
12-15 months   LCNI-5           MALAWI                         1                    NA                -0.1247942   -0.2383615   -0.0112269
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0043452   -0.0209320    0.0122416
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0065551   -0.0270113    0.0139010
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0034104   -0.0219796    0.0288004
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0275547   -0.0831349    0.0280255
15-18 months   IRC              INDIA                          1                    NA                -0.0015617   -0.0706824    0.0675589
15-18 months   LCNI-5           MALAWI                         1                    NA                -0.0435172   -0.1409732    0.0539389
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0006333   -0.0156450    0.0169117
15-18 months   PROVIDE          BANGLADESH                     1                    NA                 0.0024792   -0.0175334    0.0224918
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0246298   -0.0523206    0.0030610
18-21 months   IRC              INDIA                          1                    NA                -0.0490324   -0.1323611    0.0342962
18-21 months   LCNI-5           MALAWI                         1                    NA                -0.0198417   -0.0678761    0.0281926
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0044531   -0.0112275    0.0201337
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0138850   -0.0345062    0.0067362
21-24 months   IRC              INDIA                          1                    NA                -0.0305175   -0.1470774    0.0860424
21-24 months   LCNI-5           MALAWI                         1                    NA                -0.0062230   -0.0480335    0.0355876
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0182643   -0.0353609   -0.0011678
21-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0004441   -0.0215451    0.0206570
