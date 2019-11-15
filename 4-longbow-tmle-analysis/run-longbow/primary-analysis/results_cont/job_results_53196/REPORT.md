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

**Outcome Variable:** whz

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

agecat      studyid                    country                        nchldlt5    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki1000108-IRC              INDIA                          1               72     343
Birth       ki1000108-IRC              INDIA                          2+             271     343
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              385     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+             147     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              504     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+             203     707
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            10878   17991
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+            7113   17991
6 months    ki1000108-IRC              INDIA                          1               88     408
6 months    ki1000108-IRC              INDIA                          2+             320     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              438     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+             165     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             208     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2019
6 months    ki1148112-LCNI-5           MALAWI                         1              390     811
6 months    ki1148112-LCNI-5           MALAWI                         2+             421     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10872   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+            5901   16773
24 months   ki1000108-IRC              INDIA                          1               89     409
24 months   ki1000108-IRC              INDIA                          2+             320     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              424     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             155     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             157     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6
24 months   ki1148112-LCNI-5           MALAWI                         1              277     555
24 months   ki1148112-LCNI-5           MALAWI                         2+             278     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5434    8593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+            3159    8593


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f5ddfeca-9d7a-42c6-9915-bad824fbcabf/005e744f-ec73-4c7a-985e-511c188cd031/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f5ddfeca-9d7a-42c6-9915-bad824fbcabf/005e744f-ec73-4c7a-985e-511c188cd031/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f5ddfeca-9d7a-42c6-9915-bad824fbcabf/005e744f-ec73-4c7a-985e-511c188cd031/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -1.0363579   -1.5271078   -0.5456081
Birth       ki1000108-IRC              INDIA                          2+                   NA                -0.9873614   -1.1948193   -0.7799035
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.3196969   -1.4249954   -1.2143984
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.3953842   -1.5465766   -1.2441917
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2513215   -1.3510500   -1.1515931
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -1.2281038   -1.3883708   -1.0678368
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7734482   -0.7992954   -0.7476010
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.7677110   -0.8098483   -0.7255736
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5954608   -0.8928105   -0.2981111
6 months    ki1000108-IRC              INDIA                          2+                   NA                -0.6089080   -0.7620137   -0.4558022
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1438744   -0.2493382   -0.0384106
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.4773857   -0.6331978   -0.3215735
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0767632   -0.0180919    0.1716183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.0587510   -0.2084759    0.0909739
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0701341    0.0031028    0.1371653
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                 0.0728632   -0.0458421    0.1915685
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.5489159    0.4449868    0.6528450
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                 0.3456976    0.2458192    0.4455759
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.5624844   -0.5897206   -0.5352481
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.6457573   -0.6891916   -0.6023229
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7722019   -0.9947846   -0.5496192
24 months   ki1000108-IRC              INDIA                          2+                   NA                -0.7384765   -0.8385195   -0.6384334
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8864807   -1.0014123   -0.7715492
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.9237426   -1.0946243   -0.7528608
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.5618312   -0.6784659   -0.4451966
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.7087031   -0.8864414   -0.5309648
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0188827   -0.0979715    0.1357368
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.1035183   -0.2222289    0.0151922
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3048296   -1.3406646   -1.2689946
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.2466726   -1.3017454   -1.1915999


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7776666   -0.7966629   -0.7586703
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0801680    0.0273223    0.1330136
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4379655    0.3664533    0.5094777
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932472   -0.6127728   -0.5737215
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0547297   -0.1370054    0.0275459
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2972908   -1.3206179   -1.2739638


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                  0.0489965   -0.4826669    0.5806599
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0756872   -0.2595150    0.1081405
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0232177   -0.1654451    0.2118806
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.0057372   -0.0428429    0.0543173
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 -0.0134472   -0.3482479    0.3213535
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.3335113   -0.5220447   -0.1449779
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.1355142   -0.3120751    0.0410467
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0027291   -0.1336896    0.1391478
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.2032183   -0.3473963   -0.0590403
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0832729   -0.1337935   -0.0327524
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                  0.0337254   -0.2105553    0.2780060
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0372618   -0.2418289    0.1673053
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.1468719   -0.3591222    0.0653784
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.1224010   -0.2880118    0.0432099
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.0581570   -0.0068901    0.1232041


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.0257748   -0.4076830    0.4592327
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0212383   -0.0462355    0.0887121
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0071702   -0.0448896    0.0592300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0042184   -0.0207031    0.0122662
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0034690   -0.2662173    0.2592793
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0552163   -0.1199422    0.0095097
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0470010   -0.0991264    0.0051245
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0100339   -0.0311875    0.0512553
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1109504   -0.1878421   -0.0340588
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0307628   -0.0491169   -0.0124088
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0263869   -0.1659452    0.2187189
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0063863   -0.0778701    0.0650976
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0485190   -0.1170586    0.0200207
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0736124   -0.1566999    0.0094752
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0075388   -0.0191440    0.0342215
