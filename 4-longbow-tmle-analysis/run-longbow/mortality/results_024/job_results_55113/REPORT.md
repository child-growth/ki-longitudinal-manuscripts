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

**Intervention Variable:** ever_underweight024

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
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

studyid                     country                        ever_underweight024    dead624   n_cell       n  outcome_variable 
--------------------------  -----------------------------  --------------------  --------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                            0      109     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     0                            1        0     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                            0      131     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                            1        0     240  dead624          
ki0047075b-MAL-ED           INDIA                          0                            0       87     235  dead624          
ki0047075b-MAL-ED           INDIA                          0                            1        0     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                            0      148     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                            1        0     235  dead624          
ki0047075b-MAL-ED           PERU                           0                            0      204     273  dead624          
ki0047075b-MAL-ED           PERU                           0                            1        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                            0       68     273  dead624          
ki0047075b-MAL-ED           PERU                           1                            1        0     273  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            0      176     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            1        0     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            0       85     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            1        0     261  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            0      135     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            1        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            0      110     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            1        0     245  dead624          
ki1000109-EE                PAKISTAN                       0                            0       52     375  dead624          
ki1000109-EE                PAKISTAN                       0                            1        0     375  dead624          
ki1000109-EE                PAKISTAN                       1                            0      319     375  dead624          
ki1000109-EE                PAKISTAN                       1                            1        4     375  dead624          
ki1000304-VITAMIN-A         INDIA                          0                            0     1242    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          0                            1        4    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          1                            0     2341    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          1                            1       28    3615  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                            0      539    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                            1        0    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                            0      838    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                            1       12    1389  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                            0       67     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                            1        1     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                            0      331     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                            1        3     402  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                            0      294     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                            1        1     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                            0      321     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                            1        1     617  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            0     1589    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            1        0    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            0      507    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            1        0    2096  dead624          
ki1101329-Keneba            GAMBIA                         0                            0     1486    2761  dead624          
ki1101329-Keneba            GAMBIA                         0                            1       20    2761  dead624          
ki1101329-Keneba            GAMBIA                         1                            0     1231    2761  dead624          
ki1101329-Keneba            GAMBIA                         1                            1       24    2761  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            0     4727    7163  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            1       18    7163  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            0     2397    7163  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            1       21    7163  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                            0      151     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                            1        1     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                            0      439     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                            1        1     592  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                            0     8569   11708  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                            1      132   11708  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                            0     2733   11708  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                            1      274   11708  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                            0     1115    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                            1       63    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                            0      632    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                            1       64    1874  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            0      753    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            1       12    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            0      384    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            1       12    1161  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                            0     9924   21046  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                            1       99   21046  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                            0    10851   21046  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                            1      172   21046  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                            0     2562    5433  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                            1       13    5433  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                            0     2822    5433  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                            1       36    5433  dead624          


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
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a8a2f20a-2f36-4c66-8351-c536e0c2801f/b4f36ed3-b339-41a5-abab-5db8bc93170c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a8a2f20a-2f36-4c66-8351-c536e0c2801f/b4f36ed3-b339-41a5-abab-5db8bc93170c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a8a2f20a-2f36-4c66-8351-c536e0c2801f/b4f36ed3-b339-41a5-abab-5db8bc93170c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a8a2f20a-2f36-4c66-8351-c536e0c2801f/b4f36ed3-b339-41a5-abab-5db8bc93170c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         0                    NA                0.0133470   0.0075595   0.0191345
ki1101329-Keneba            GAMBIA         1                    NA                0.0185765   0.0111898   0.0259632
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0038281   0.0020631   0.0055932
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0085333   0.0048876   0.0121790
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0152338   0.0126663   0.0178012
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0878202   0.0774527   0.0981877
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0533857   0.0404970   0.0662745
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0900260   0.0685867   0.1114653
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0157844   0.0069854   0.0245834
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0311273   0.0142098   0.0480447
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0100117   0.0080441   0.0119793
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0151850   0.0128213   0.0175486
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0050610   0.0021600   0.0079620
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0124220   0.0084439   0.0164001


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         NA                   NA                0.0159363   0.0112643   0.0206082
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054446   0.0037404   0.0071489
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0346771   0.0313629   0.0379914
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0206718   0.0124839   0.0288597
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0128766   0.0113280   0.0144251
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0090190   0.0064698   0.0115681


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.391808   0.7726167   2.507232
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.229103   1.1889353   4.179287
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 5.764842   4.6934056   7.080871
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.686330   1.2010573   2.367672
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.972033   0.9046525   4.298793
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 1.516722   1.1805048   1.948696
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 2.454454   1.2787827   4.711000


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba            GAMBIA         0                    NA                0.0025892   -0.0017587   0.0069372
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0016165    0.0002275   0.0030055
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0194434    0.0166540   0.0222328
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0143837    0.0049535   0.0238139
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0048875   -0.0016211   0.0113961
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0028649    0.0011698   0.0045599
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0039580    0.0013617   0.0065542


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba            GAMBIA         0                    NA                0.1624750   -0.1540191   0.3921694
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.2968971    0.0140532   0.4986001
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.5606975    0.4957778   0.6172585
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.2122451    0.0650389   0.3362742
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.2364315   -0.1315554   0.4847474
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.2224869    0.0843508   0.3397837
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.4388484    0.0940998   0.6523998
