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

**Outcome Variable:** dead0plus

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

studyid                     country                        ever_underweight06    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -------------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                             0      174     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                             1        1     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                             0       88     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                             1        2     265  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                             0      144     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                             1        1     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                             0      105     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                             1        1     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                             0      251     303  dead0plus        
ki0047075b-MAL-ED           PERU                           0                             1        2     303  dead0plus        
ki0047075b-MAL-ED           PERU                           1                             0       50     303  dead0plus        
ki0047075b-MAL-ED           PERU                           1                             1        0     303  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             0      258     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             1        0     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             0       55     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             1        1     314  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      214     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        2     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       45     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        1     262  dead0plus        
ki1000109-EE                PAKISTAN                       0                             0      103     380  dead0plus        
ki1000109-EE                PAKISTAN                       0                             1        0     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                             0      273     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                             1        4     380  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                             0     1692    3906  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                             1       10    3906  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                             0     2136    3906  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                             1       68    3906  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                             0      867    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                             1       16    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                             0      616    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                             1       34    1533  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                             0      194     416  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                             1        2     416  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                             0      216     416  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                             1        4     416  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                             0      470     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                             1        3     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                             0      225     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                             1        2     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     2110    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      285    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                             0     2024    2632  dead0plus        
ki1101329-Keneba            GAMBIA                         0                             1       55    2632  dead0plus        
ki1101329-Keneba            GAMBIA                         1                             0      513    2632  dead0plus        
ki1101329-Keneba            GAMBIA                         1                             1       40    2632  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             0      262     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             1        2     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             0       74     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             1        0     338  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                             0      388     697  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                             1        2     697  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                             0      302     697  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                             1        5     697  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                             0    10950   14085  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                             1      571   14085  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                             0     2017   14085  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                             1      547   14085  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                             0     1464    1816  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                             1       89    1816  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                             0      238    1816  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                             1       25    1816  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                             0      926    1202  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                             1       22    1202  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                             0      232    1202  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                             1       22    1202  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                             0    14413   27237  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                             1      251   27237  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                             0    11958   27237  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                             1      615   27237  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                             0     3471    5276  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                             1       17    5276  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                             0     1757    5276  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                             1       31    5276  dead0plus        


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
![](/tmp/3db4aa95-eccd-469d-8eab-8b80135a42c4/9436b272-3438-4163-89d2-e61e388d2376/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3db4aa95-eccd-469d-8eab-8b80135a42c4/9436b272-3438-4163-89d2-e61e388d2376/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3db4aa95-eccd-469d-8eab-8b80135a42c4/9436b272-3438-4163-89d2-e61e388d2376/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3db4aa95-eccd-469d-8eab-8b80135a42c4/9436b272-3438-4163-89d2-e61e388d2376/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0060038   0.0023076   0.0097000
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0309777   0.0237251   0.0382302
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0184914   0.0105741   0.0264088
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0513869   0.0302198   0.0725540
ki1101329-Keneba          GAMBIA       0                    NA                0.0267257   0.0197468   0.0337047
ki1101329-Keneba          GAMBIA       1                    NA                0.0718902   0.0498204   0.0939600
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0500451   0.0460742   0.0540160
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.2070539   0.1912640   0.2228438
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0575208   0.0459515   0.0690902
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.0959242   0.0605494   0.1312990
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0230482   0.0134750   0.0326213
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0851095   0.0509538   0.1192651
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0176302   0.0153427   0.0199177
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0464270   0.0424317   0.0504224
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0048628   0.0021406   0.0075849
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0170552   0.0110784   0.0230320


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0199693   0.0155816   0.0243570
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0326158   0.0204960   0.0447355
ki1101329-Keneba          GAMBIA       NA                   NA                0.0360942   0.0289669   0.0432215
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0793752   0.0749108   0.0838397
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0627753   0.0516163   0.0739344
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0366057   0.0259850   0.0472263
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0317950   0.0295928   0.0339972
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0090978   0.0063582   0.0118374


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 5.159662   2.669693   9.971975
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.778957   1.861468   4.148661
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.689926   1.797220   4.026052
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 4.137346   3.707882   4.616552
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.667644   1.095782   2.537947
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 3.692679   2.070964   6.584315
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.633376   2.259676   3.068877
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 3.507313   1.814357   6.779949


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0139655    0.0093572   0.0185737
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0141244    0.0058293   0.0224194
ki1101329-Keneba          GAMBIA       0                    NA                0.0093685    0.0045124   0.0142246
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0293301    0.0261945   0.0324657
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0052545   -0.0001809   0.0106899
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0135575    0.0058216   0.0212934
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0141648    0.0119551   0.0163744
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0042350    0.0019871   0.0064830


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.6993472    0.4660447   0.8307122
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4330526    0.2372538   0.5785894
ki1101329-Keneba          GAMBIA       0                    NA                0.2595568    0.1234438   0.3745339
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.3695122    0.3343363   0.4028293
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0837035   -0.0057757   0.1652222
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.3703661    0.1567906   0.5298453
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4455027    0.3803092   0.5038376
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4655019    0.1819596   0.6507652
