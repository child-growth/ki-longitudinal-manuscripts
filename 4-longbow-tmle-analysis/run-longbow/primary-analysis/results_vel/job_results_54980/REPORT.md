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

agecat         studyid                    country                        nchldlt5    n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  ---------  -------  ------  -----------------
0-3 months     ki1000108-IRC              INDIA                          1               82     377  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          2+             295     377  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              471     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+             169     640  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              512     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+             209     721  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            12371   19861  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+            7490   19861  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          1               87     397  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          2+             310     397  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              434     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+             164     598  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              492     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+             203     695  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1146    1656  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             510    1656  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             8103   12572  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+            4469   12572  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          1               89     407  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          2+             318     407  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1              410     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2+             155     565  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              488     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+             200     688  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1036    1480  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             444    1480  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         1              261     557  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         2+             296     557  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          1               88     400  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          2+             312     400  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              413     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+             153     566  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              475     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             199     674  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              764    1075  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             311    1075  y_rate_len       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1              364    1101  y_rate_len       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   2+             737    1101  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         1              179     383  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         2+             204     383  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          1               82     390  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          2+             308     390  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1              391     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2+             141     532  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              463     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             197     660  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              570     786  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             216     786  y_rate_len       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1              324     958  y_rate_len       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+             634     958  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         1               52     125  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         2+              73     125  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          1               78     382  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          2+             304     382  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              388     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2+             140     528  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              425     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             179     604  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              481     662  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             181     662  y_rate_len       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1              329    1006  y_rate_len       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+             677    1006  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         1               51     118  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         2+              67     118  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          1               82     379  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          2+             297     379  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1              394     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2+             147     541  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              387     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             159     546  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                8       9  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       9  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         1              241     472  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         2+             231     472  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          1               84     389  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          2+             305     389  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              342     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             129     471  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              340     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             150     490  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         1              213     403  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         2+             190     403  y_rate_len       


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2f29ec63-affa-4f60-be0b-0e333d91f90b/574c8760-f23a-4bcb-9cc8-21b58c6dce9f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2f29ec63-affa-4f60-be0b-0e333d91f90b/574c8760-f23a-4bcb-9cc8-21b58c6dce9f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2f29ec63-affa-4f60-be0b-0e333d91f90b/574c8760-f23a-4bcb-9cc8-21b58c6dce9f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.1380251   2.8573273   3.4187228
0-3 months     ki1000108-IRC              INDIA                          2+                   NA                3.1412147   3.0214614   3.2609680
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.2696798   3.2213786   3.3179810
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                3.1465891   3.0677013   3.2254769
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.1520616   3.1080045   3.1961187
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                3.0701267   3.0027653   3.1374881
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.6827765   3.6694094   3.6961436
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                3.6182339   3.5927233   3.6437445
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8886824   1.7511137   2.0262511
3-6 months     ki1000108-IRC              INDIA                          2+                   NA                1.8809603   1.8085603   1.9533603
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                2.0065646   1.9601690   2.0529602
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                1.8824174   1.8144677   1.9503671
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                2.0244814   1.9820049   2.0669579
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                1.9409282   1.8651143   2.0167420
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7905408   1.7447800   1.8363016
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                1.8223342   1.7542631   1.8904052
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9305504   1.9156947   1.9454060
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                1.9125320   1.8822167   1.9428473
6-9 months     ki1000108-IRC              INDIA                          1                    NA                1.3246551   1.2074646   1.4418456
6-9 months     ki1000108-IRC              INDIA                          2+                   NA                1.3829091   1.3277378   1.4380805
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.2924967   1.2590021   1.3259912
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                1.2110417   1.1556340   1.2664493
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.3323655   1.2985244   1.3662066
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                1.3133010   1.2537716   1.3728303
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3237691   1.2789273   1.3686108
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                1.3263126   1.2568106   1.3958146
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    NA                1.4887292   1.4298651   1.5475934
6-9 months     ki1148112-LCNI-5           MALAWI                         2+                   NA                1.4299280   1.3804845   1.4793714
9-12 months    ki1000108-IRC              INDIA                          1                    NA                1.1786201   1.0808940   1.2763462
9-12 months    ki1000108-IRC              INDIA                          2+                   NA                1.1087675   1.0664436   1.1510914
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.0565496   1.0196493   1.0934499
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                1.0561576   0.9946927   1.1176225
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.1324624   1.1008161   1.1641087
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                1.1223317   1.0701208   1.1745427
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0726968   1.0327734   1.1126203
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                1.0947628   1.0234635   1.1660622
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                1.1189099   1.0784738   1.1593460
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                1.0790443   1.0296924   1.1283962
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                1.1076323   1.0342406   1.1810240
9-12 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                1.1008193   1.0386294   1.1630092
12-15 months   ki1000108-IRC              INDIA                          1                    NA                1.0538685   0.9418515   1.1658856
12-15 months   ki1000108-IRC              INDIA                          2+                   NA                0.9301289   0.8875784   0.9726794
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9702811   0.9378366   1.0027256
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.8953448   0.8508740   0.9398156
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.9767586   0.9476001   1.0059171
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.9567091   0.9104981   1.0029201
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9290732   0.8850031   0.9731432
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.9606862   0.8812072   1.0401653
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.9670163   0.9109435   1.0230892
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.9668309   0.9043048   1.0293570
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    NA                1.0790960   0.9387775   1.2194145
12-15 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.8704460   0.7412122   0.9996797
15-18 months   ki1000108-IRC              INDIA                          1                    NA                0.8649712   0.7756113   0.9543311
15-18 months   ki1000108-IRC              INDIA                          2+                   NA                0.8559017   0.8124444   0.8993591
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8549411   0.8237296   0.8861526
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.8722626   0.8237737   0.9207516
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.9165949   0.8886549   0.9445350
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.8989775   0.8548437   0.9431113
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9596792   0.9085185   1.0108399
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.8974048   0.8094399   0.9853697
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.9457035   0.8450874   1.0463195
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.9075310   0.8706437   0.9444184
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.8848665   0.7637164   1.0060165
15-18 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.7965068   0.6995913   0.8934223
18-21 months   ki1000108-IRC              INDIA                          1                    NA                0.8373107   0.7367035   0.9379178
18-21 months   ki1000108-IRC              INDIA                          2+                   NA                0.7442617   0.7019877   0.7865356
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8500641   0.8183793   0.8817490
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.7433433   0.6925469   0.7941396
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.7952447   0.7677047   0.8227847
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.8030008   0.7555385   0.8504632
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.8269403   0.7659034   0.8879772
18-21 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.8171380   0.7492849   0.8849910
21-24 months   ki1000108-IRC              INDIA                          1                    NA                0.6783122   0.5674006   0.7892239
21-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.7133086   0.6697287   0.7568885
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7675609   0.7356526   0.7994692
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.7603843   0.7069736   0.8137950
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8111836   0.7815063   0.8408608
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.7718455   0.7244719   0.8192191
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.7558214   0.6882060   0.8234367
21-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.7408407   0.6785598   0.8031215


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6645460   3.6543084   3.6747835
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7933135   1.7575160   1.8291109
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9202415   1.9097813   1.9307016
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3249931   1.2883838   1.3616025
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                1.4616153   1.4251800   1.4980507
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0855731   1.0514671   1.1196792
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                1.0917213   1.0579961   1.1254464
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.1007887   1.0539615   1.1476158
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9319267   0.8950348   0.9688186
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9671413   0.9257414   1.0085412
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.9583944   0.8610293   1.0557595
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9372014   0.8951355   0.9792674
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9206852   0.8832466   0.9581239
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8198824   0.7480865   0.8916783
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8206832   0.7740479   0.8673186
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.7500561   0.7042548   0.7958575


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2+                   1                  0.0031896   -0.3025422    0.3089213
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.1230907   -0.2157340   -0.0304474
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0819349   -0.1625703   -0.0012995
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0645426   -0.0922125   -0.0368727
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2+                   1                 -0.0077221   -0.1640858    0.1486416
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.1241473   -0.2066057   -0.0416888
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0835532   -0.1704873    0.0033808
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0317933   -0.0503740    0.1139606
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0180184   -0.0512947    0.0152579
6-9 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          2+                   1                  0.0582540   -0.0714725    0.1879806
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0814550   -0.1462854   -0.0166245
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0190645   -0.0874845    0.0493554
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0025435   -0.0804791    0.0855661
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0588013   -0.1359135    0.0183109
9-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          2+                   1                 -0.0698526   -0.1759902    0.0362851
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0003920   -0.0725295    0.0717455
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0101307   -0.0715426    0.0512813
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0220660   -0.0596735    0.1038055
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0398656   -0.1028488    0.0231175
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0068130   -0.1038116    0.0901856
12-15 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          2+                   1                 -0.1237396   -0.2436400   -0.0038392
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0749363   -0.1300591   -0.0198135
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0200495   -0.0747102    0.0346111
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0316130   -0.0596009    0.1228270
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0001855   -0.0840647    0.0836938
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.2086500   -0.3996945   -0.0176056
15-18 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          2+                   1                 -0.0090695   -0.1086511    0.0905122
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.0173215   -0.0405070    0.0751500
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0176175   -0.0702439    0.0350090
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0622744   -0.1639484    0.0393996
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0381724   -0.1423408    0.0659959
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0883596   -0.2444428    0.0677235
18-21 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          2+                   1                 -0.0930490   -0.2027289    0.0166309
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.1067209   -0.1667296   -0.0467122
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0077562   -0.0468148    0.0623271
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0098024   -0.1032992    0.0836945
21-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          2+                   1                  0.0349964   -0.0838914    0.1538842
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0071766   -0.0694457    0.0550924
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0393381   -0.0952697    0.0165936
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0149807   -0.1082835    0.0783220


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    NA                 0.0002242   -0.2421939    0.2426422
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0119988   -0.0405798    0.0165823
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0228167   -0.0459388    0.0003054
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0182305   -0.0266644   -0.0097967
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0080085   -0.1295851    0.1135680
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0408189   -0.0699427   -0.0116951
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0186841   -0.0436877    0.0063194
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0027726   -0.0235041    0.0290493
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0103089   -0.0204717   -0.0001460
6-9 months     ki1000108-IRC              INDIA                          1                    NA                 0.0477458   -0.0548535    0.1503452
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0100782   -0.0309550    0.0107987
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0040960   -0.0239015    0.0157095
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0012241   -0.0260283    0.0284764
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0271139   -0.0698224    0.0155946
9-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0551467   -0.1386614    0.0283680
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0065746   -0.0291846    0.0160353
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0089879   -0.0269344    0.0089586
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0128763   -0.0120325    0.0377851
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0271886   -0.0672212    0.0128439
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0068437   -0.0581119    0.0444245
12-15 months   ki1000108-IRC              INDIA                          1                    NA                -0.0985146   -0.1926865   -0.0043427
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0105310   -0.0286400    0.0075780
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0056191   -0.0222180    0.0109797
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0028535   -0.0225806    0.0282877
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0001249   -0.0542891    0.0545390
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1207016   -0.2348678   -0.0065354
15-18 months   ki1000108-IRC              INDIA                          1                    NA                -0.0058496   -0.0847659    0.0730667
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0011587   -0.0170455    0.0193629
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0011218   -0.0152918    0.0175355
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0224778   -0.0505507    0.0055952
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0250182   -0.1029289    0.0528924
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0649840   -0.1571216    0.0271536
18-21 months   ki1000108-IRC              INDIA                          1                    NA                -0.0775085   -0.1658990    0.0108820
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0107264   -0.0297966    0.0083437
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0025309   -0.0132924    0.0183541
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0062571   -0.0540809    0.0415667
21-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0301006   -0.0654552    0.1256565
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0044219   -0.0241167    0.0152730
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0118482   -0.0285962    0.0048997
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0057652   -0.0491119    0.0375814
