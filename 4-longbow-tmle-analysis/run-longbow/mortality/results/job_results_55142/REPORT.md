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

**Outcome Variable:** dead

## Predictor Variables

**Intervention Variable:** ever_underweight06

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
* W_nchldlt5
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
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_underweight06    dead   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -------------------  -----  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                        0      174     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     0                        1        1     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                        0       88     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                        1        2     265  dead             
ki0047075b-MAL-ED           INDIA                          0                        0      144     251  dead             
ki0047075b-MAL-ED           INDIA                          0                        1        1     251  dead             
ki0047075b-MAL-ED           INDIA                          1                        0      105     251  dead             
ki0047075b-MAL-ED           INDIA                          1                        1        1     251  dead             
ki0047075b-MAL-ED           PERU                           0                        0      251     303  dead             
ki0047075b-MAL-ED           PERU                           0                        1        2     303  dead             
ki0047075b-MAL-ED           PERU                           1                        0       50     303  dead             
ki0047075b-MAL-ED           PERU                           1                        1        0     303  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        0      258     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        1        0     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        0       55     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        1        1     314  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      214     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        2     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0       45     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        1     262  dead             
ki1000109-EE                PAKISTAN                       0                        0      103     380  dead             
ki1000109-EE                PAKISTAN                       0                        1        0     380  dead             
ki1000109-EE                PAKISTAN                       1                        0      273     380  dead             
ki1000109-EE                PAKISTAN                       1                        1        4     380  dead             
ki1000304-VITAMIN-A         INDIA                          0                        0     1692    3906  dead             
ki1000304-VITAMIN-A         INDIA                          0                        1       10    3906  dead             
ki1000304-VITAMIN-A         INDIA                          1                        0     2136    3906  dead             
ki1000304-VITAMIN-A         INDIA                          1                        1       68    3906  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                        0      867    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                        1       16    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                        0      616    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                        1       34    1533  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                        0      194     416  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                        1        2     416  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                        0      216     416  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                        1        4     416  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                        0      470     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                        1        3     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                        0      226     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                        1        1     700  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2110    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      285    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396  dead             
ki1101329-Keneba            GAMBIA                         0                        0     2045    2632  dead             
ki1101329-Keneba            GAMBIA                         0                        1       34    2632  dead             
ki1101329-Keneba            GAMBIA                         1                        0      526    2632  dead             
ki1101329-Keneba            GAMBIA                         1                        1       27    2632  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0      262     338  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1        2     338  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0       74     338  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1        0     338  dead             
ki1113344-GMS-Nepal         NEPAL                          0                        0      388     697  dead             
ki1113344-GMS-Nepal         NEPAL                          0                        1        2     697  dead             
ki1113344-GMS-Nepal         NEPAL                          1                        0      302     697  dead             
ki1113344-GMS-Nepal         NEPAL                          1                        1        5     697  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0    10958   14085  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      563   14085  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0     2019   14085  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1      545   14085  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                        0     1464    1816  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                        1       89    1816  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                        0      238    1816  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                        1       25    1816  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0      928    1202  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1       20    1202  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0      234    1202  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1       20    1202  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    14424   27237  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                        1      240   27237  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                        0    11988   27237  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                        1      585   27237  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                        0     3471    5276  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                        1       17    5276  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                        0     1758    5276  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                        1       30    5276  dead             


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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/21f11664-0111-4200-8d3c-95483c068901/5778b37a-d2b9-4cf6-aad4-1ce88698f08b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/21f11664-0111-4200-8d3c-95483c068901/5778b37a-d2b9-4cf6-aad4-1ce88698f08b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/21f11664-0111-4200-8d3c-95483c068901/5778b37a-d2b9-4cf6-aad4-1ce88698f08b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/21f11664-0111-4200-8d3c-95483c068901/5778b37a-d2b9-4cf6-aad4-1ce88698f08b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0060335   0.0023186   0.0097484
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0309727   0.0237157   0.0382298
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0184914   0.0105741   0.0264088
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0513869   0.0302198   0.0725540
ki1101329-Keneba          GAMBIA       0                    NA                0.0165302   0.0110082   0.0220523
ki1101329-Keneba          GAMBIA       1                    NA                0.0500982   0.0314266   0.0687697
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0494286   0.0454805   0.0533767
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.2051122   0.1893416   0.2208829
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0575014   0.0459317   0.0690711
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.0955456   0.0599165   0.1311746
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0209834   0.0118277   0.0301390
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0761304   0.0431322   0.1091286
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0168290   0.0146175   0.0190406
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0441408   0.0402812   0.0480003
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0048691   0.0021452   0.0075930
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0164723   0.0106420   0.0223026


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0199693   0.0155816   0.0243570
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0326158   0.0204960   0.0447355
ki1101329-Keneba          GAMBIA       NA                   NA                0.0231763   0.0174270   0.0289256
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0786652   0.0742191   0.0831114
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0627753   0.0516163   0.0739344
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0332779   0.0231340   0.0434218
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0302897   0.0281334   0.0324460
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089083   0.0062043   0.0116122


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 5.133478   2.655747   9.922859
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.778957   1.861468   4.148661
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 3.030698   1.836544   5.001311
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 4.149666   3.716342   4.633517
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.661622   1.087775   2.538197
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 3.628131   1.958350   6.721647
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.622895   2.247426   3.061093
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 3.383042   1.748408   6.545937


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0139358    0.0093183   0.0185533
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0141244    0.0058293   0.0224194
ki1101329-Keneba          GAMBIA       0                    NA                0.0066461    0.0026378   0.0106543
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0292366    0.0261078   0.0323655
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0052739   -0.0001587   0.0107066
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0122945    0.0048775   0.0197115
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0134607    0.0113390   0.0155823
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0040392    0.0018383   0.0062401


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.6978620    0.4633479   0.8298947
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4330526    0.2372538   0.5785894
ki1101329-Keneba          GAMBIA       0                    NA                0.2867608    0.1096477   0.4286417
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.3716590    0.3362878   0.4051451
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0840128   -0.0054241   0.1654940
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.3694501    0.1422717   0.5364578
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4443975    0.3788085   0.5030612
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4534198    0.1673786   0.6411935
