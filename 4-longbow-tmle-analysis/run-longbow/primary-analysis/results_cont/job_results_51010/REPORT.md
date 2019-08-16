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

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
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
* delta_vagbrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
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

agecat      studyid                   country                        earlybf    n_cell       n
----------  ------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1             159     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     0              97     256
Birth       ki0047075b-MAL-ED         BRAZIL                         1              83     191
Birth       ki0047075b-MAL-ED         BRAZIL                         0             108     191
Birth       ki0047075b-MAL-ED         INDIA                          1             124     205
Birth       ki0047075b-MAL-ED         INDIA                          0              81     205
Birth       ki0047075b-MAL-ED         NEPAL                          1              79     173
Birth       ki0047075b-MAL-ED         NEPAL                          0              94     173
Birth       ki0047075b-MAL-ED         PERU                           1             214     287
Birth       ki0047075b-MAL-ED         PERU                           0              73     287
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1             155     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0              92     247
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             111     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              12     123
Birth       ki1000109-EE              PAKISTAN                       1               1       2
Birth       ki1000109-EE              PAKISTAN                       0               1       2
Birth       ki1000304b-SAS-CompFeed   INDIA                          1              14     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          0             163     177
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1              23      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               4      27
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1            6533   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0            5786   12319
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1             212   19541
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           19329   19541
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1             566     822
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0             256     822
6 months    ki0047075b-MAL-ED         BANGLADESH                     1             147     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0              93     240
6 months    ki0047075b-MAL-ED         BRAZIL                         1              95     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0             114     209
6 months    ki0047075b-MAL-ED         INDIA                          1             140     236
6 months    ki0047075b-MAL-ED         INDIA                          0              96     236
6 months    ki0047075b-MAL-ED         NEPAL                          1              96     236
6 months    ki0047075b-MAL-ED         NEPAL                          0             140     236
6 months    ki0047075b-MAL-ED         PERU                           1             202     273
6 months    ki0047075b-MAL-ED         PERU                           0              71     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             156     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              94     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247
6 months    ki1000109-EE              PAKISTAN                       1              68     372
6 months    ki1000109-EE              PAKISTAN                       0             304     372
6 months    ki1000304b-SAS-CompFeed   INDIA                          1              98    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0            1238    1336
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             619     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              96     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1             151     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0             359     510
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            3968    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            3397    7365
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1              35   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0           16776   16811
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1            3094    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1737    4831
24 months   ki0047075b-MAL-ED         BANGLADESH                     1             128     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0              83     211
24 months   ki0047075b-MAL-ED         BRAZIL                         1              80     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0              89     169
24 months   ki0047075b-MAL-ED         INDIA                          1             134     227
24 months   ki0047075b-MAL-ED         INDIA                          0              93     227
24 months   ki0047075b-MAL-ED         NEPAL                          1              95     228
24 months   ki0047075b-MAL-ED         NEPAL                          0             133     228
24 months   ki0047075b-MAL-ED         PERU                           1             149     201
24 months   ki0047075b-MAL-ED         PERU                           0              52     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             144     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              91     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             443     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1             136     455
24 months   ki1113344-GMS-Nepal       NEPAL                          0             319     455
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             214     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             185     399
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            8631    8632
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            3042    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1710    4752


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/da93ddf5-2327-4df2-8210-d5136e2e15ff/c74e4926-1b59-4251-8a84-92fcffd2eba1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/da93ddf5-2327-4df2-8210-d5136e2e15ff/c74e4926-1b59-4251-8a84-92fcffd2eba1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/da93ddf5-2327-4df2-8210-d5136e2e15ff/c74e4926-1b59-4251-8a84-92fcffd2eba1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.9852084   -1.1392575   -0.8311593
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.2555623   -1.4711419   -1.0399826
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.8474140   -1.0922082   -0.6026197
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.7122774   -0.9212885   -0.5032664
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.0008214   -1.1596069   -0.8420358
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.9821734   -1.2147098   -0.7496369
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6884833   -0.9199045   -0.4570621
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.7666207   -0.9815265   -0.5517148
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.8567305   -0.9773190   -0.7361420
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -1.1815662   -1.4350646   -0.9280677
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.5973458   -0.7497390   -0.4449526
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.8401198   -1.0593161   -0.6209235
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.8777653   -1.0892003   -0.6663303
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.6093658   -2.4299311   -0.7888005
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.0362763   -1.5020057   -0.5705468
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.3736924   -1.6131985   -1.1341863
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.4915467   -0.5217826   -0.4613109
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.4759705   -0.5074515   -0.4444894
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -2.0316720   -2.0913447   -1.9719994
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.5726467   -1.5927592   -1.5525343
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.4729315   -1.5690307   -1.3768323
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.5519678   -1.6892019   -1.4147338
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.1802598   -1.3304137   -1.0301058
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.2498031   -1.4460854   -1.0535208
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0312487   -0.2476545    0.1851571
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0835331   -0.1048348    0.2719011
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -1.2123888   -1.3650277   -1.0597499
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -1.2495371   -1.4388327   -1.0602414
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6816035   -0.8482043   -0.5150026
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.4715500   -0.6236225   -0.3194775
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -1.3305150   -1.4587229   -1.2023072
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -1.3131220   -1.5266103   -1.0996338
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.0560711   -1.2106075   -0.9015346
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.0706196   -1.2974113   -0.8438278
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3198921   -1.4472244   -1.1925599
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.6209896   -1.9727058   -1.2692735
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -2.0513719   -2.3905931   -1.7121506
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -2.2357632   -2.3666301   -2.1048963
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.3228755   -1.5653814   -1.0803695
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4080595   -1.4833248   -1.3327941
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -1.2280087   -1.3045788   -1.1514386
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.9913216   -1.1901881   -0.7924551
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1399927   -1.2910732   -0.9889123
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.3661356   -1.4637586   -1.2685126
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.8606442   -0.8968586   -0.8244298
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.9112890   -0.9501080   -0.8724700
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -2.3293063   -2.3755976   -2.2830150
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.3109490   -1.3345960   -1.2873021
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.3363027   -1.3822645   -1.2903409
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.3586890   -1.4175199   -1.2998582
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.9351213   -2.0906277   -1.7796149
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.9627460   -2.1753683   -1.7501238
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0826262   -0.1746390    0.3398914
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0998169   -0.1192413    0.3188750
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -1.8924186   -2.0586934   -1.7261438
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -1.7915984   -1.9803439   -1.6028529
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -1.3304488   -1.5066019   -1.1542957
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -1.2160488   -1.3799276   -1.0521700
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -1.8132446   -1.9546259   -1.6718633
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                -1.6791114   -1.9153812   -1.4428416
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.6552938   -1.8306631   -1.4799245
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.5536449   -1.7822483   -1.3250416
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5738071   -2.7182732   -2.4293409
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7695260   -3.1556251   -2.3834269
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -1.4657865   -1.5575998   -1.3739733
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -1.2243032   -1.4015356   -1.0470708
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.5750668   -1.7186068   -1.4315268
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.9970995   -2.1069356   -1.8872635
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -2.4130405   -2.5782373   -2.2478436
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -2.3194257   -2.5005802   -2.1382712
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.7737631   -1.8178828   -1.7296434
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.7319210   -1.7847340   -1.6791080


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.0876172   -1.2136298   -0.9616045
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.0138537   -1.1537563   -0.8739510
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.6902024   -0.8168430   -0.5635618
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9338211   -1.1465079   -0.7211344
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -1.3661582   -1.6025814   -1.1297350
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.4898628   -0.5117273   -0.4679983
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.5752894   -1.5950861   -1.5554927
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.2063264   -1.3242819   -1.0883709
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.0599367   -1.1887637   -0.9311096
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.2991993   -1.3810668   -1.2173319
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.8848717   -0.9125215   -0.8572218
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.9381280   -2.0644004   -1.8118555
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.6144681   -1.7508611   -1.4780751
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.8698242   -1.9591140   -1.7805343
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -2.3716792   -2.4955680   -2.2477904
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.7582681   -1.7937283   -1.7228079


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.2703538   -0.5362028   -0.0045049
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.1351365   -0.1873867    0.4576597
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                  0.0186480   -0.2467998    0.2840958
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0781374   -0.3960430    0.2397682
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 -0.3248357   -0.6014710   -0.0482003
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.2427740   -0.5077944    0.0222465
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.7316005   -1.5789483    0.1157472
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.3374161   -0.7525667    0.0777345
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0155763   -0.0266691    0.0578216
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.4590253    0.3980059    0.5200447
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0790363   -0.2331900    0.0751173
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0695433   -0.3174653    0.1783786
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.1147818   -0.1696267    0.3991904
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0371483   -0.2797864    0.2054898
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.2100535   -0.0156819    0.4357889
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.0173930   -0.2322073    0.2669933
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0145485   -0.2891428    0.2600458
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3010975   -0.6748751    0.0726801
6 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 -0.1843913   -0.5456749    0.1768922
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0851840   -0.3052916    0.1349236
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2366871    0.0234877    0.4498865
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.2261429   -0.4062308   -0.0460549
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0506448   -0.1008734   -0.0004163
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  1.0183573    0.9663852    1.0703293
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0223863   -0.0946804    0.0499077
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0276247   -0.2899853    0.2347358
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0171907   -0.3230428    0.3574241
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.1008202   -0.1490776    0.3507180
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1144000   -0.1272593    0.3560593
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.1341332   -0.1424798    0.4107462
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.1016489   -0.1870810    0.3903788
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1957190   -0.6083782    0.2169402
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2414834    0.0420497    0.4409171
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.4220328   -0.6028995   -0.2411661
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0936148   -0.1489551    0.3361846
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0418421   -0.0231420    0.1068262


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1024087   -0.2051522    0.0003347
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0864715   -0.0979857    0.2709288
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0130323   -0.1194508    0.0933863
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0204184   -0.1926704    0.1518335
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.0754995   -0.1483433   -0.0026557
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0928566   -0.1956573    0.0099441
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0560559   -0.1618975    0.0497858
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.3298819   -0.7262593    0.0664955
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0016839   -0.0199570    0.0233248
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.4563827    0.3972208    0.5155445
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0247327   -0.0727556    0.0232901
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0260666   -0.1210376    0.0689043
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0822694   -0.0737850    0.2383238
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0079784   -0.1057787    0.0898219
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1205441   -0.0144016    0.2554899
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0037141   -0.0602204    0.0676485
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0038656   -0.1086159    0.1008847
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0402293   -0.1047644    0.0243057
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.1490986   -0.4534895    0.1552923
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0789808   -0.2850706    0.1271089
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0293304    0.0005663    0.0580944
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1592066   -0.2866894   -0.0317238
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0242275   -0.0476982   -0.0007568
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 1.0162131    0.9655023    1.0669238
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0084913   -0.0346170    0.0176343
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0030067   -0.1073262    0.1013128
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0407919   -0.2246254    0.1430416
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0466036   -0.0560872    0.1492945
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0552295   -0.0859234    0.1963824
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0631451   -0.0066598    0.1329500
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0408258   -0.0678161    0.1494676
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0320808   -0.0951602    0.0309986
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0362535    0.0078278    0.0646791
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.2947574   -0.4227692   -0.1667455
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0413613   -0.0720228    0.1547453
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0154950   -0.0078824    0.0388724
