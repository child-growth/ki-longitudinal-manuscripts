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

**Outcome Variable:** dead624

## Predictor Variables

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* impfloor
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_impfloor
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_stunted06    dead624   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------  --------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                       0      155     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     0                       1        0     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                       0       85     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                       1        0     240  dead624          
ki0047075b-MAL-ED           INDIA                          0                       0      149     235  dead624          
ki0047075b-MAL-ED           INDIA                          0                       1        0     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                       0       86     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                       1        0     235  dead624          
ki0047075b-MAL-ED           PERU                           0                       0      149     273  dead624          
ki0047075b-MAL-ED           PERU                           0                       1        0     273  dead624          
ki0047075b-MAL-ED           PERU                           1                       0      123     273  dead624          
ki0047075b-MAL-ED           PERU                           1                       1        1     273  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                       0      155     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                       1        0     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                       0      106     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                       1        0     261  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      140     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0      105     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     245  dead624          
ki1000109-EE                PAKISTAN                       0                       0       91     374  dead624          
ki1000109-EE                PAKISTAN                       0                       1        0     374  dead624          
ki1000109-EE                PAKISTAN                       1                       0      279     374  dead624          
ki1000109-EE                PAKISTAN                       1                       1        4     374  dead624          
ki1000304-VITAMIN-A         INDIA                          0                       0     2094    3605  dead624          
ki1000304-VITAMIN-A         INDIA                          0                       1       11    3605  dead624          
ki1000304-VITAMIN-A         INDIA                          1                       0     1480    3605  dead624          
ki1000304-VITAMIN-A         INDIA                          1                       1       20    3605  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                       0      796    1388  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                       1        2    1388  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                       0      580    1388  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                       1       10    1388  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                       0      214     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                       1        1     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                       0      184     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                       1        3     402  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                       0      455     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                       1        2     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                       0      160     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                       1        0     617  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0     1651    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1        0    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0      445    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        0    2096  dead624          
ki1101329-Keneba            GAMBIA                         0                       0     1557    2312  dead624          
ki1101329-Keneba            GAMBIA                         0                       1       13    2312  dead624          
ki1101329-Keneba            GAMBIA                         1                       0      716    2312  dead624          
ki1101329-Keneba            GAMBIA                         1                       1       26    2312  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                       0      295     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                       1        2     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                       0       39     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                       1        0     336  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                       0      398     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                       1        1     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                       0      192     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                       1        1     592  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                       0     8028   11694  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                       1      190   11694  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                       0     3261   11694  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                       1      215   11694  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                       0     1156    1756  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                       1       73    1756  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                       0      487    1756  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                       1       40    1756  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                       0      817    1148  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                       1       14    1148  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                       0      307    1148  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                       1       10    1148  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                       0    11910   21009  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                       1      106   21009  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                       0     8830   21009  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                       1      163   21009  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                       0     3210    5260  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                       1       20    5260  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                       0     2003    5260  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                       1       27    5260  dead624          


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6c3d46e4-2252-4ac5-a406-23e6f94d7fb8/0660c7fb-caf7-4622-823d-60264e8a67df/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6c3d46e4-2252-4ac5-a406-23e6f94d7fb8/0660c7fb-caf7-4622-823d-60264e8a67df/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6c3d46e4-2252-4ac5-a406-23e6f94d7fb8/0660c7fb-caf7-4622-823d-60264e8a67df/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6c3d46e4-2252-4ac5-a406-23e6f94d7fb8/0660c7fb-caf7-4622-823d-60264e8a67df/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A      INDIA        0                    NA                0.0052622   0.0021580   0.0083663
ki1000304-VITAMIN-A      INDIA        1                    NA                0.0132644   0.0074658   0.0190630
ki1101329-Keneba         GAMBIA       0                    NA                0.0083198   0.0038239   0.0128157
ki1101329-Keneba         GAMBIA       1                    NA                0.0348058   0.0215708   0.0480409
ki1126311-ZVITAMBO       ZIMBABWE     0                    NA                0.0232610   0.0199997   0.0265224
ki1126311-ZVITAMBO       ZIMBABWE     1                    NA                0.0589245   0.0509550   0.0668940
ki1148112-iLiNS-DOSE     MALAWI       0                    NA                0.0593044   0.0460261   0.0725828
ki1148112-iLiNS-DOSE     MALAWI       1                    NA                0.0730090   0.0506483   0.0953697
ki1148112-iLiNS-DYAD-M   MALAWI       0                    NA                0.0167491   0.0079842   0.0255139
ki1148112-iLiNS-DYAD-M   MALAWI       1                    NA                0.0303204   0.0109651   0.0496758
kiGH5241-JiVitA-3        BANGLADESH   0                    NA                0.0091607   0.0072972   0.0110241
kiGH5241-JiVitA-3        BANGLADESH   1                    NA                0.0181480   0.0148026   0.0214934
kiGH5241-JiVitA-4        BANGLADESH   0                    NA                0.0062136   0.0030357   0.0093916
kiGH5241-JiVitA-4        BANGLADESH   1                    NA                0.0132219   0.0084425   0.0180013


### Parameter: E(Y)


studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A      INDIA        NA                   NA                0.0085992   0.0055847   0.0116136
ki1101329-Keneba         GAMBIA       NA                   NA                0.0168685   0.0116181   0.0221189
ki1126311-ZVITAMBO       ZIMBABWE     NA                   NA                0.0346331   0.0313190   0.0379473
ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.0643508   0.0528708   0.0758308
ki1148112-iLiNS-DYAD-M   MALAWI       NA                   NA                0.0209059   0.0126262   0.0291856
kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.0128040   0.0112517   0.0143564
kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.0089354   0.0062246   0.0116461


### Parameter: RR


studyid                  country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-----------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A      INDIA        1                    0                 2.520704   1.2096682   5.252637
ki1101329-Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba         GAMBIA       1                    0                 4.183504   2.1592536   8.105443
ki1126311-ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO       ZIMBABWE     1                    0                 2.533185   2.0853285   3.077225
ki1148112-iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE     MALAWI       1                    0                 1.231089   0.8422492   1.799443
ki1148112-iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M   MALAWI       1                    0                 1.810276   0.7926992   4.134102
kiGH5241-JiVitA-3        BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3        BANGLADESH   1                    0                 1.981082   1.5073827   2.603642
kiGH5241-JiVitA-4        BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4        BANGLADESH   1                    0                 2.127890   1.1387388   3.976255


### Parameter: PAR


studyid                  country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A      INDIA        0                    NA                0.0033370    0.0005879   0.0060861
ki1101329-Keneba         GAMBIA       0                    NA                0.0085487    0.0040242   0.0130733
ki1126311-ZVITAMBO       ZIMBABWE     0                    NA                0.0113721    0.0087708   0.0139734
ki1148112-iLiNS-DOSE     MALAWI       0                    NA                0.0050464   -0.0029590   0.0130518
ki1148112-iLiNS-DYAD-M   MALAWI       0                    NA                0.0041569   -0.0017070   0.0100207
kiGH5241-JiVitA-3        BANGLADESH   0                    NA                0.0036434    0.0020828   0.0052039
kiGH5241-JiVitA-4        BANGLADESH   0                    NA                0.0027217    0.0004772   0.0049663


### Parameter: PAF


studyid                  country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A      INDIA        0                    NA                0.3880610    0.0175547   0.6188395
ki1101329-Keneba         GAMBIA       0                    NA                0.5067862    0.2335627   0.6826095
ki1126311-ZVITAMBO       ZIMBABWE     0                    NA                0.3283591    0.2563330   0.3934094
ki1148112-iLiNS-DOSE     MALAWI       0                    NA                0.0784196   -0.0539644   0.1941754
ki1148112-iLiNS-DYAD-M   MALAWI       0                    NA                0.1988362   -0.1224776   0.4281726
kiGH5241-JiVitA-3        BANGLADESH   0                    NA                0.2845496    0.1575763   0.3923850
kiGH5241-JiVitA-4        BANGLADESH   0                    NA                0.3046025    0.0025659   0.5151782
