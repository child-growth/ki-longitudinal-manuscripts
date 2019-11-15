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
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
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
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
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
Birth       ki0047075b-MAL-ED         BANGLADESH                     1             140     214
Birth       ki0047075b-MAL-ED         BANGLADESH                     0              74     214
Birth       ki0047075b-MAL-ED         BRAZIL                         1              26      62
Birth       ki0047075b-MAL-ED         BRAZIL                         0              36      62
Birth       ki0047075b-MAL-ED         INDIA                          1              31      44
Birth       ki0047075b-MAL-ED         INDIA                          0              13      44
Birth       ki0047075b-MAL-ED         NEPAL                          1              14      26
Birth       ki0047075b-MAL-ED         NEPAL                          0              12      26
Birth       ki0047075b-MAL-ED         PERU                           1             172     228
Birth       ki0047075b-MAL-ED         PERU                           0              56     228
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1              69     110
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0              41     110
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             103     115
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              12     115
Birth       ki1000109-EE              PAKISTAN                       1              36     170
Birth       ki1000109-EE              PAKISTAN                       0             134     170
Birth       ki1000304b-SAS-CompFeed   INDIA                          1              79    1072
Birth       ki1000304b-SAS-CompFeed   INDIA                          0             993    1072
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1             613     707
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0              94     707
Birth       ki1113344-GMS-Nepal       NEPAL                          1             171     586
Birth       ki1113344-GMS-Nepal       NEPAL                          0             415     586
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1            6142   11514
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0            5372   11514
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1             105   17943
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           17838   17943
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1            1624    2396
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0             772    2396
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
6 months    ki1000109-EE              PAKISTAN                       1              69     364
6 months    ki1000109-EE              PAKISTAN                       0             295     364
6 months    ki1000304b-SAS-CompFeed   INDIA                          1              97    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0            1237    1334
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             619     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              96     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1             151     511
6 months    ki1113344-GMS-Nepal       NEPAL                          0             360     511
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            4065    7553
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            3488    7553
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1              36   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0           16748   16784
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1            3095    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1738    4833
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
24 months   ki1000109-EE              PAKISTAN                       1              32     164
24 months   ki1000109-EE              PAKISTAN                       0             132     164
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             443     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1             131     444
24 months   ki1113344-GMS-Nepal       NEPAL                          0             313     444
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             201     379
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             178     379
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            8602    8603
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            3031    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1704    4735


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
![](/tmp/7f836cda-3670-4a98-a06d-b2b528e0566f/e8e60fd9-b55d-4c91-938b-a3f4a0bf258b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7f836cda-3670-4a98-a06d-b2b528e0566f/e8e60fd9-b55d-4c91-938b-a3f4a0bf258b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7f836cda-3670-4a98-a06d-b2b528e0566f/e8e60fd9-b55d-4c91-938b-a3f4a0bf258b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.8653378   -1.0407560   -0.6899195
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.0138909   -1.2646640   -0.7631179
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1519932   -0.3451617    0.6491482
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.4608595    0.0532434    0.8684755
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -0.8349009   -1.1919349   -0.4778669
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -1.0504016   -1.5212702   -0.5795329
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6791605   -1.1517549   -0.2065660
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.6751318   -1.2634120   -0.0868516
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.0926231   -0.2318411    0.0465949
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                 0.0656982   -0.1768532    0.3082496
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.1077111   -0.3670741    0.1516519
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.2318053   -0.6214992    0.1578886
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7850598    0.5816138    0.9885059
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5806812   -0.0551499    1.2165123
Birth       ki1000109-EE              PAKISTAN                       1                    NA                -0.1379883   -0.4757136    0.1997369
Birth       ki1000109-EE              PAKISTAN                       0                    NA                -0.4103506   -0.6360803   -0.1846209
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.7803988   -1.1572587   -0.4035389
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.6662675   -0.8343427   -0.4981923
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -1.2450594   -1.3346529   -1.1554658
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -1.2523342   -1.4626739   -1.0419944
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1909744   -1.3603803   -1.0215684
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.1047253   -1.2079663   -1.0014843
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.4589661   -0.4942145   -0.4237178
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.5931514   -0.6311151   -0.5551877
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.8611737   -0.9094644   -0.8128831
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.7773276   -0.7968071   -0.7578482
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.6671311   -0.7264068   -0.6078553
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.7320261   -0.8297526   -0.6342996
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1076329   -0.2687429    0.0534772
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.1763624   -0.3962904    0.0435656
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 1.0902823    0.8583689    1.3221956
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.8481357    0.6188675    1.0774038
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.7518910   -0.9211525   -0.5826295
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.6187351   -0.8101969   -0.4272733
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0151157   -0.1985333    0.2287647
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.1849159    0.0174122    0.3524196
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 1.0123839    0.8689242    1.1558435
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                 1.1847744    0.9552322    1.4143166
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.5355197    0.3339798    0.7370596
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.5432584    0.3005868    0.7859300
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5135139    0.3723010    0.6547268
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6796890    0.3285990    1.0307791
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.6929292   -0.9576528   -0.4282055
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -0.7868295   -0.9143088   -0.6593502
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.6097313   -1.1597375   -0.0597251
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.6712896   -0.8039023   -0.5386770
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0400119   -0.0452784    0.1253022
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0521271   -0.2550655    0.1508113
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.4155277   -0.5893439   -0.2417114
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.6343475   -0.7420761   -0.5266189
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.3060705    0.2693326    0.3428084
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.3029013    0.2622512    0.3435515
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.6948948   -0.7260304   -0.6637593
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.5933407   -0.6133747   -0.5733067
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.3907200   -0.4352858   -0.3461543
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.3919986   -0.4531790   -0.3308182
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.7855220   -0.9430379   -0.6280061
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.8615428   -1.0570432   -0.6660424
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.3965525    0.0891243    0.7039808
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.5689347    0.2955173    0.8423520
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.9846264   -1.1409285   -0.8283244
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.9122641   -1.0839627   -0.7405654
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.4731960   -0.6494696   -0.2969225
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.2775637   -0.4239600   -0.1311674
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0785973   -0.0704566    0.2276512
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.2522507    0.0644624    0.4400390
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.4178125    0.2546754    0.5809495
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.4343739    0.2493260    0.6194218
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0839516   -0.0507194    0.2186226
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1664000   -0.4986891    0.1658892
24 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.8828481   -1.1836549   -0.5820412
24 months   ki1000109-EE              PAKISTAN                       0                    NA                -1.0248342   -1.1973770   -0.8522914
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.6498292   -0.7502764   -0.5493821
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.3549899   -0.6208707   -0.0891091
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.0556937   -1.2200760   -0.8913114
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.1648769   -1.2772967   -1.0524572
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -1.1476494   -1.2924944   -1.0028044
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -1.2571118   -1.4215323   -1.0926913
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.2319380   -1.2722094   -1.1916666
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.2088927   -1.2626330   -1.1551523


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.9390654   -1.0847642   -0.7933666
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.9122727   -1.1899971   -0.6345483
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1690000   -0.3880340    0.0500340
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       ki1000109-EE              PAKISTAN                       NA                   NA                -0.3522059   -0.5428560   -0.1615557
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.6676026   -0.8422097   -0.4929956
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.1260580   -1.2184297   -1.0336863
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.5262098   -0.5537283   -0.4986913
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.7778811   -0.7969145   -0.7588476
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.1316250   -0.2604010   -0.0028490
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.7079979   -0.8344175   -0.5815783
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.5500267    0.3964966    0.7035568
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                -0.7725778   -0.8877440   -0.6574117
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.5843738   -0.6761994   -0.4925481
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                 0.3072633    0.2799882    0.3345385
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.8141706   -0.9363085   -0.6920327
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.4152943    0.2928804    0.5377083
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1000109-EE              PAKISTAN                       NA                   NA                -1.0044512   -1.1543739   -0.8545285
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.1339602   -1.2266932   -1.0412272
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -1.1970712   -1.3045749   -1.0895676
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.1485531   -0.4495701    0.1524638
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.3088662   -0.3453957    0.9631282
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                 -0.2155007   -0.8097827    0.3787814
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0040287   -0.7745596    0.7826169
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                  0.1583213   -0.1220582    0.4387009
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.1240943   -0.5917360    0.3435474
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2043787   -0.8740744    0.4653171
Birth       ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE              PAKISTAN                       0                    1                 -0.2723623   -0.6790631    0.1343386
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.1141313   -0.2121205    0.4403832
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0072748   -0.2311782    0.2166286
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0862490   -0.1025296    0.2750277
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.1341853   -0.1820467   -0.0863238
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0838461    0.0319355    0.1357567
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0648950   -0.1764115    0.0466215
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0687295   -0.3419232    0.2044641
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.2421466   -0.5670898    0.0827966
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                  0.1331560   -0.1230638    0.3893757
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1698002   -0.1021064    0.4417068
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.1723905   -0.0987492    0.4435303
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0077387   -0.3088142    0.3242916
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1661751   -0.2123447    0.5446949
6 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 -0.0939003   -0.3879897    0.2001891
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0615583   -0.5884850    0.4653684
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0921390   -0.3115847    0.1273068
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.2188198   -0.4238397   -0.0137999
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0031692   -0.0574933    0.0511549
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.1015541    0.0642339    0.1388744
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0012786   -0.0739827    0.0714256
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0760208   -0.3252083    0.1731667
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.1723821   -0.2341460    0.5789103
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0723624   -0.1600658    0.3047905
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1956323   -0.0318053    0.4230699
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.1736535   -0.0609857    0.4082926
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0165615   -0.2303565    0.2634794
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2503515   -0.6096502    0.1089471
24 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE              PAKISTAN                       0                    1                 -0.1419862   -0.4910982    0.2071258
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2948393    0.0126707    0.5770080
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.1091832   -0.3076616    0.0892951
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.1094624   -0.3292125    0.1102876
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0230453   -0.0446183    0.0907089


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0737276   -0.1776186    0.0301633
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.2509100   -0.1477573    0.6495773
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0773718   -0.2477994    0.0930558
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0893011   -0.4297089    0.2511068
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.0406056   -0.0285271    0.1097383
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0612889   -0.2384574    0.1158796
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0226251   -0.0857819    0.0405318
Birth       ki1000109-EE              PAKISTAN                       1                    NA                -0.2142175   -0.5393927    0.1109577
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.1127962   -0.1920694    0.4176618
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0009080   -0.0285656    0.0303817
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0649163   -0.0686812    0.1985138
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0672437   -0.0909170   -0.0435704
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0832927    0.0326797    0.1339057
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0214958   -0.0574423    0.0144507
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0239921   -0.1255180    0.0775338
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.1182049   -0.2954079    0.0589981
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0438932   -0.0592756    0.1470619
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0953151   -0.0674603    0.2580905
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0404977   -0.0301300    0.1111254
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0145070   -0.1036956    0.1327095
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0227074   -0.0414849    0.0868996
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0796487   -0.3187932    0.1594959
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0559771   -0.5513990    0.4394448
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0102496   -0.0398324    0.0193331
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1688461   -0.3140533   -0.0236389
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0011928   -0.0241557    0.0265413
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.1013787    0.0649796    0.1377778
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0009145   -0.0251758    0.0270048
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0286486   -0.1260823    0.0687850
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0660707   -0.1510807    0.2832222
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0329744   -0.0627496    0.1286985
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0982837   -0.0337680    0.2303355
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0326009   -0.0272509    0.0924527
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0025181   -0.0992970    0.0942608
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0291541   -0.0868942    0.0285860
24 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.1216032   -0.4081332    0.1649269
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0394790    0.0009680    0.0779901
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0782665   -0.2188783    0.0623453
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0494219   -0.1525042    0.0536604
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0088292   -0.0154326    0.0330910
