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

agecat      studyid               country                        predfeed3    n_cell       n
----------  --------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1               205     240
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                35     240
Birth       ki0047075b-MAL-ED     BRAZIL                         1               101     185
Birth       ki0047075b-MAL-ED     BRAZIL                         0                84     185
Birth       ki0047075b-MAL-ED     INDIA                          1               152     196
Birth       ki0047075b-MAL-ED     INDIA                          0                44     196
Birth       ki0047075b-MAL-ED     NEPAL                          1                99     171
Birth       ki0047075b-MAL-ED     NEPAL                          0                72     171
Birth       ki0047075b-MAL-ED     PERU                           1               183     272
Birth       ki0047075b-MAL-ED     PERU                           0                89     272
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                87     233
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0               146     233
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                50     119
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                69     119
Birth       ki1000109-EE          PAKISTAN                       1                 2       2
Birth       ki1000109-EE          PAKISTAN                       0                 0       2
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1             16832   18710
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0              1878   18710
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                37      40
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 3      40
6 months    ki0047075b-MAL-ED     BANGLADESH                     1               203     237
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                34     237
6 months    ki0047075b-MAL-ED     BRAZIL                         1               116     209
6 months    ki0047075b-MAL-ED     BRAZIL                         0                93     209
6 months    ki0047075b-MAL-ED     INDIA                          1               178     233
6 months    ki0047075b-MAL-ED     INDIA                          0                55     233
6 months    ki0047075b-MAL-ED     NEPAL                          1               132     233
6 months    ki0047075b-MAL-ED     NEPAL                          0               101     233
6 months    ki0047075b-MAL-ED     PERU                           1               183     270
6 months    ki0047075b-MAL-ED     PERU                           0                87     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                86     248
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               162     248
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                91     240
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               149     240
6 months    ki1000109-EE          PAKISTAN                       1               346     371
6 months    ki1000109-EE          PAKISTAN                       0                25     371
6 months    ki1113344-GMS-Nepal   NEPAL                          1               379     458
6 months    ki1113344-GMS-Nepal   NEPAL                          0                79     458
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1             14797   16281
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0              1484   16281
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                77      89
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                12      89
24 months   ki0047075b-MAL-ED     BANGLADESH                     1               178     208
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                30     208
24 months   ki0047075b-MAL-ED     BRAZIL                         1                98     169
24 months   ki0047075b-MAL-ED     BRAZIL                         0                71     169
24 months   ki0047075b-MAL-ED     INDIA                          1               170     225
24 months   ki0047075b-MAL-ED     INDIA                          0                55     225
24 months   ki0047075b-MAL-ED     NEPAL                          1               128     225
24 months   ki0047075b-MAL-ED     NEPAL                          0                97     225
24 months   ki0047075b-MAL-ED     PERU                           1               137     199
24 months   ki0047075b-MAL-ED     PERU                           0                62     199
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                81     232
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               151     232
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                79     210
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               131     210
24 months   ki1113344-GMS-Nepal   NEPAL                          1               336     404
24 months   ki1113344-GMS-Nepal   NEPAL                          0                68     404
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              7520    8341
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               821    8341
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1               137     152
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                15     152


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/edccacce-dcc7-45a4-84ec-be9b17075fba/2130eaa8-a782-4f9f-b4ad-99b21999ca5d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/edccacce-dcc7-45a4-84ec-be9b17075fba/2130eaa8-a782-4f9f-b4ad-99b21999ca5d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/edccacce-dcc7-45a4-84ec-be9b17075fba/2130eaa8-a782-4f9f-b4ad-99b21999ca5d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.0584253   -1.2000390   -0.9168116
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.9988393   -1.3000688   -0.6976098
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.6671290   -0.8780365   -0.4562215
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.8043708   -1.0494324   -0.5593092
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                -1.0134394   -1.1684518   -0.8584271
Birth       ki0047075b-MAL-ED     INDIA                          0                    NA                -0.9810169   -1.2528304   -0.7092033
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.6368276   -0.8409073   -0.4327478
Birth       ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.8949220   -1.1454846   -0.6443593
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.9676922   -1.1053140   -0.8300705
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.8658272   -1.0385874   -0.6930671
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.6528141   -0.8516018   -0.4540264
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.7565077   -0.9099177   -0.6030977
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.8056329   -1.0902480   -0.5210177
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.9740657   -1.3044485   -0.6436830
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.5402391   -1.5601666   -1.5203115
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.5767938   -1.6283874   -1.5252001
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.1767023   -1.3010683   -1.0523363
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.4095292   -1.7822106   -1.0368478
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0650190   -0.2554021    0.1253641
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1841012   -0.0335854    0.4017878
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -1.2282728   -1.3599515   -1.0965941
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -1.1433725   -1.4146898   -0.8720552
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.5795784   -0.7238580   -0.4352989
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.5181708   -0.6899653   -0.3463763
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -1.3215245   -1.4507025   -1.1923465
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                -1.3363306   -1.5376989   -1.1349624
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -1.0977509   -1.3108641   -0.8846378
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -1.0636513   -1.2277505   -0.8995521
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2751461   -1.4644403   -1.0858518
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3996473   -1.5617547   -1.2375398
6 months    ki1000109-EE          PAKISTAN                       1                    NA                -2.2091002   -2.3363937   -2.0818068
6 months    ki1000109-EE          PAKISTAN                       0                    NA                -2.2071075   -2.6400110   -1.7742039
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.2937275   -1.3869220   -1.2005330
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.4268474   -1.6607160   -1.1929788
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.2927825   -1.3161735   -1.2693914
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.4202369   -1.4968776   -1.3435962
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.1689701   -1.3565654   -0.9813747
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -2.5221908   -3.1200209   -1.9243608
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.9486571   -2.0912047   -1.8061095
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.8966477   -2.1660975   -1.6271979
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1600193   -0.3722596    0.0522210
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.3305743    0.0544950    0.6066537
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -1.9705145   -2.1085522   -1.8324769
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -1.4559890   -1.7289615   -1.1830165
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -1.3335681   -1.4863367   -1.1807996
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -1.1837519   -1.3734555   -0.9940483
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -1.7562724   -1.8987343   -1.6138104
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                -1.7170339   -1.9189955   -1.5150723
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -1.6916602   -1.8924444   -1.4908759
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -1.5633830   -1.7452221   -1.3815440
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5448607   -2.7689893   -2.3207320
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6697247   -2.8421402   -2.4973092
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.8784913   -1.9769336   -1.7800490
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.8852821   -2.1269893   -1.6435749
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -2.0108080   -2.0396249   -1.9819910
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -2.0116659   -2.0976080   -1.9257237
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.7163713   -1.8606470   -1.5720955
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -2.0163125   -2.3366067   -1.6960183


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.0497083   -1.1780996   -0.9213171
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.0098469   -1.1519586   -0.8677353
Birth       ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.7128070   -0.8704934   -0.5551207
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                -0.9261397   -1.0389037   -0.8133757
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.7108584   -0.8390511   -0.5826657
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9205882   -1.1394357   -0.7017408
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.5457493   -1.5650991   -1.5263996
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.2009705   -1.3199485   -1.0819924
6 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.2109514   -1.3300505   -1.0918522
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.5557940   -0.6681063   -0.4434817
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                -1.3229136   -1.4307207   -1.2151065
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -1.0640356   -1.1937663   -0.9343049
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3516458   -1.4765824   -1.2267092
6 months    ki1000109-EE          PAKISTAN                       NA                   NA                -2.2056604   -2.3285064   -2.0828144
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.3235298   -1.4103807   -1.2366790
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3060279   -1.3292905   -1.2827653
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.2339326   -1.4137041   -1.0541611
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.9391587   -2.0665449   -1.8117724
24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.8433556   -1.9704665   -1.7162446
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -1.2693778   -1.3896188   -1.1491367
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -1.7440201   -1.8648503   -1.6231899
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -1.6114440   -1.7486349   -1.4742530
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6159762   -2.7525555   -2.4793968
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.8788036   -1.9703700   -1.7872372
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -2.0111797   -2.0396837   -1.9826758
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.7671053   -1.9017670   -1.6324435


### Parameter: ATE


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0595860   -0.2741499    0.3933219
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1372418   -0.4615294    0.1870458
Birth       ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA                          0                    1                  0.0324226   -0.2634989    0.3283441
Birth       ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.2580944   -0.5836064    0.0674176
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                  0.1018650   -0.1066447    0.3103747
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.1036936   -0.3409585    0.1335712
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1684329   -0.6135401    0.2766744
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0365547   -0.0874019    0.0142925
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.2328269   -0.6263757    0.1607220
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.2491202   -0.0400611    0.5383014
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                  0.0849003   -0.2171840    0.3869846
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0614076   -0.1585848    0.2814000
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.0148061   -0.2542799    0.2246677
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0340996   -0.2365672    0.3047665
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1245012   -0.3715197    0.1225173
6 months    ki1000109-EE          PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN                       0                    1                  0.0019927   -0.4494832    0.4534687
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.1331199   -0.3850689    0.1188291
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.1274544   -0.2034175   -0.0514914
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -1.3532208   -1.9848088   -0.7216327
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0520094   -0.2533520    0.3573709
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.4905936    0.1368474    0.8443398
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.5145255    0.2087285    0.8203226
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.1498163   -0.0930043    0.3926368
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0392385   -0.1969591    0.2754360
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.1282771   -0.1424872    0.3990415
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1248640   -0.4061490    0.1564210
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0067907   -0.2676445    0.2540631
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0008579   -0.0865365    0.0848207
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.2999412   -0.6501837    0.0503013


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0087170   -0.0403058    0.0577397
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0679521   -0.2144000    0.0784958
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0035925   -0.0645493    0.0717343
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0759794   -0.2127758    0.0608169
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.0415525   -0.0271510    0.1102561
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0580443   -0.2068251    0.0907365
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1149554   -0.3722569    0.1423462
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0055103   -0.0109595   -0.0000610
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0242681   -0.0809996    0.0324633
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1160397   -0.0141334    0.2462129
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0173214   -0.0542023    0.0888451
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0237844   -0.0710941    0.1186629
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0013891   -0.0782252    0.0754471
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0337153   -0.1429843    0.2104149
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0764998   -0.2301660    0.0771664
6 months    ki1000109-EE          PAKISTAN                       1                    NA                 0.0034398   -0.0297050    0.0365846
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0298024   -0.0730948    0.0134901
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0132454   -0.0202375   -0.0062533
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0649625   -0.1558207    0.0258957
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0094985   -0.0337937    0.0527906
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.2018536    0.0492263    0.3544809
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.1271590    0.0482789    0.2060391
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0641904   -0.0426092    0.1709899
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0122523   -0.0609015    0.0854060
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0802162   -0.0963331    0.2567656
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0711155   -0.2475350    0.1053040
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0003123   -0.0436023    0.0429777
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0003717   -0.0086037    0.0078602
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0507340   -0.0891903   -0.0122777
