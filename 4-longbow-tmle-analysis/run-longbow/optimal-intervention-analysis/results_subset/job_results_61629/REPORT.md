---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** whz

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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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

agecat      studyid     country                        predfeed3    n_cell       n
----------  ----------  -----------------------------  ----------  -------  ------
Birth       EE          PAKISTAN                       1                22      22
Birth       EE          PAKISTAN                       0                 0      22
Birth       GMS-Nepal   NEPAL                          1               352     422
Birth       GMS-Nepal   NEPAL                          0                70     422
Birth       JiVitA-3    BANGLADESH                     1              9638   10634
Birth       JiVitA-3    BANGLADESH                     0               996   10634
Birth       JiVitA-4    BANGLADESH                     1                89      97
Birth       JiVitA-4    BANGLADESH                     0                 8      97
Birth       MAL-ED      BANGLADESH                     1               164     202
Birth       MAL-ED      BANGLADESH                     0                38     202
Birth       MAL-ED      BRAZIL                         1                23      55
Birth       MAL-ED      BRAZIL                         0                32      55
Birth       MAL-ED      INDIA                          1                27      39
Birth       MAL-ED      INDIA                          0                12      39
Birth       MAL-ED      NEPAL                          1                14      25
Birth       MAL-ED      NEPAL                          0                11      25
Birth       MAL-ED      PERU                           1               145     218
Birth       MAL-ED      PERU                           0                73     218
Birth       MAL-ED      SOUTH AFRICA                   1                33      99
Birth       MAL-ED      SOUTH AFRICA                   0                66      99
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                24      95
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                71      95
6 months    EE          PAKISTAN                       1                39      39
6 months    EE          PAKISTAN                       0                 0      39
6 months    GMS-Nepal   NEPAL                          1               367     441
6 months    GMS-Nepal   NEPAL                          0                74     441
6 months    JiVitA-3    BANGLADESH                     1              8500    9310
6 months    JiVitA-3    BANGLADESH                     0               810    9310
6 months    JiVitA-4    BANGLADESH                     1                76      88
6 months    JiVitA-4    BANGLADESH                     0                12      88
6 months    MAL-ED      BANGLADESH                     1               191     233
6 months    MAL-ED      BANGLADESH                     0                42     233
6 months    MAL-ED      BRAZIL                         1                93     187
6 months    MAL-ED      BRAZIL                         0                94     187
6 months    MAL-ED      INDIA                          1               147     210
6 months    MAL-ED      INDIA                          0                63     210
6 months    MAL-ED      NEPAL                          1               113     227
6 months    MAL-ED      NEPAL                          0               114     227
6 months    MAL-ED      PERU                           1               176     270
6 months    MAL-ED      PERU                           0                94     270
6 months    MAL-ED      SOUTH AFRICA                   1                63     244
6 months    MAL-ED      SOUTH AFRICA                   0               181     244
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                64     212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               148     212
24 months   EE          PAKISTAN                       1                20      20
24 months   EE          PAKISTAN                       0                 0      20
24 months   GMS-Nepal   NEPAL                          1               322     384
24 months   GMS-Nepal   NEPAL                          0                62     384
24 months   JiVitA-3    BANGLADESH                     1              4417    4833
24 months   JiVitA-3    BANGLADESH                     0               416    4833
24 months   JiVitA-4    BANGLADESH                     1               135     150
24 months   JiVitA-4    BANGLADESH                     0                15     150
24 months   MAL-ED      BANGLADESH                     1               168     205
24 months   MAL-ED      BANGLADESH                     0                37     205
24 months   MAL-ED      BRAZIL                         1                79     152
24 months   MAL-ED      BRAZIL                         0                73     152
24 months   MAL-ED      INDIA                          1               139     202
24 months   MAL-ED      INDIA                          0                63     202
24 months   MAL-ED      NEPAL                          1               110     220
24 months   MAL-ED      NEPAL                          0               110     220
24 months   MAL-ED      PERU                           1               131     198
24 months   MAL-ED      PERU                           0                67     198
24 months   MAL-ED      SOUTH AFRICA                   1                60     228
24 months   MAL-ED      SOUTH AFRICA                   0               168     228
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                54     184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               130     184


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4cf24f7f-d167-4926-a022-8649a9a8c585/5bc66b6b-6dc2-483a-a419-44c212649899/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          optimal              observed          -1.0431577   -1.2567115   -0.8296038
Birth       JiVitA-3    BANGLADESH                     optimal              observed          -0.7653177   -0.8206521   -0.7099833
Birth       JiVitA-4    BANGLADESH                     optimal              observed          -0.4179815   -0.6407238   -0.1952392
Birth       MAL-ED      BANGLADESH                     optimal              observed          -0.9983536   -1.3112120   -0.6854951
Birth       MAL-ED      BRAZIL                         optimal              observed           0.5587974    0.1163797    1.0012150
Birth       MAL-ED      INDIA                          optimal              observed          -0.4772276   -0.8186110   -0.1358441
Birth       MAL-ED      NEPAL                          optimal              observed          -0.9505119   -1.5514697   -0.3495542
Birth       MAL-ED      PERU                           optimal              observed           0.0310215   -0.1197272    0.1817702
Birth       MAL-ED      SOUTH AFRICA                   optimal              observed          -0.2125766   -0.4851926    0.0600394
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.3416163    0.9592902    1.7239423
6 months    GMS-Nepal   NEPAL                          optimal              observed          -0.5862751   -0.8210819   -0.3514684
6 months    JiVitA-3    BANGLADESH                     optimal              observed          -0.5863704   -0.6542519   -0.5184888
6 months    JiVitA-4    BANGLADESH                     optimal              observed          -0.5525710   -0.8881538   -0.2169883
6 months    MAL-ED      BANGLADESH                     optimal              observed          -0.0762104   -0.2911225    0.1387017
6 months    MAL-ED      BRAZIL                         optimal              observed           1.0530693    0.8068151    1.2993235
6 months    MAL-ED      INDIA                          optimal              observed          -0.7107775   -0.8607567   -0.5607983
6 months    MAL-ED      NEPAL                          optimal              observed           0.2219806    0.0283243    0.4156368
6 months    MAL-ED      PERU                           optimal              observed           1.1247874    0.9366049    1.3129699
6 months    MAL-ED      SOUTH AFRICA                   optimal              observed           0.6474971    0.3610385    0.9339557
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8706834    0.6209530    1.1204138
24 months   GMS-Nepal   NEPAL                          optimal              observed          -1.0293301   -1.2355680   -0.8230923
24 months   JiVitA-3    BANGLADESH                     optimal              observed          -1.2842726   -1.4029034   -1.1656417
24 months   JiVitA-4    BANGLADESH                     optimal              observed          -1.0874195   -1.4386150   -0.7362240
24 months   MAL-ED      BANGLADESH                     optimal              observed          -0.8026764   -1.0807108   -0.5246420
24 months   MAL-ED      BRAZIL                         optimal              observed           0.7169394    0.3870736    1.0468052
24 months   MAL-ED      INDIA                          optimal              observed          -1.1970792   -1.3652469   -1.0289115
24 months   MAL-ED      NEPAL                          optimal              observed          -0.3331543   -0.5058065   -0.1605022
24 months   MAL-ED      PERU                           optimal              observed           0.1789085   -0.0394016    0.3972185
24 months   MAL-ED      SOUTH AFRICA                   optimal              observed           0.5325122    0.2781516    0.7868729
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0279817   -0.2180652    0.1621018


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          observed             observed          -1.0991706   -1.2073693   -0.9909719
Birth       JiVitA-3    BANGLADESH                     observed             observed          -0.7798636   -0.8022140   -0.7575133
Birth       JiVitA-4    BANGLADESH                     observed             observed          -0.4347423   -0.6441144   -0.2253701
Birth       MAL-ED      BANGLADESH                     observed             observed          -0.9411386   -1.0895370   -0.7927402
Birth       MAL-ED      BRAZIL                         observed             observed           0.4316364    0.0969688    0.7663039
Birth       MAL-ED      INDIA                          observed             observed          -0.9779487   -1.2664810   -0.6894164
Birth       MAL-ED      NEPAL                          observed             observed          -0.7944000   -1.1625222   -0.4262778
Birth       MAL-ED      PERU                           observed             observed          -0.0335321   -0.1564905    0.0894263
Birth       MAL-ED      SOUTH AFRICA                   observed             observed          -0.1588889   -0.3845288    0.0667510
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7996842    0.5874808    1.0118876
6 months    GMS-Nepal   NEPAL                          observed             observed          -0.6198791   -0.7206518   -0.5191063
6 months    JiVitA-3    BANGLADESH                     observed             observed          -0.6040977   -0.6286619   -0.5795335
6 months    JiVitA-4    BANGLADESH                     observed             observed          -0.4110227   -0.6122701   -0.2097753
6 months    MAL-ED      BANGLADESH                     observed             observed          -0.1304936   -0.2625419    0.0015547
6 months    MAL-ED      BRAZIL                         observed             observed           0.9754144    0.7990651    1.1517638
6 months    MAL-ED      INDIA                          observed             observed          -0.7185992   -0.8491469   -0.5880515
6 months    MAL-ED      NEPAL                          observed             observed           0.1041483   -0.0311352    0.2394318
6 months    MAL-ED      PERU                           observed             observed           1.0514136    0.9289176    1.1739096
6 months    MAL-ED      SOUTH AFRICA                   observed             observed           0.5564071    0.4055220    0.7072922
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5257626    0.3871543    0.6643709
24 months   GMS-Nepal   NEPAL                          observed             observed          -1.1396441   -1.2416403   -1.0376479
24 months   JiVitA-3    BANGLADESH                     observed             observed          -1.3109518   -1.3423299   -1.2795737
24 months   JiVitA-4    BANGLADESH                     observed             observed          -1.0096000   -1.1619164   -0.8572836
24 months   MAL-ED      BANGLADESH                     observed             observed          -0.8076829   -0.9296166   -0.6857493
24 months   MAL-ED      BRAZIL                         observed             observed           0.4981140    0.2760418    0.7201863
24 months   MAL-ED      INDIA                          observed             observed          -0.9516832   -1.0703961   -0.8329703
24 months   MAL-ED      NEPAL                          observed             observed          -0.3790455   -0.4958857   -0.2622052
24 months   MAL-ED      PERU                           observed             observed           0.1176052   -0.0015211    0.2367315
24 months   MAL-ED      SOUTH AFRICA                   observed             observed           0.4120797    0.2900939    0.5340654
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0495743   -0.0857535    0.1849021


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          optimal              observed          -0.0560129   -0.2526125    0.1405866
Birth       JiVitA-3    BANGLADESH                     optimal              observed          -0.0145459   -0.0653954    0.0363035
Birth       JiVitA-4    BANGLADESH                     optimal              observed          -0.0167607   -0.0598504    0.0263289
Birth       MAL-ED      BANGLADESH                     optimal              observed           0.0572150   -0.1795782    0.2940081
Birth       MAL-ED      BRAZIL                         optimal              observed          -0.1271610   -0.4944914    0.2401694
Birth       MAL-ED      INDIA                          optimal              observed          -0.5007212   -0.8148314   -0.1866109
Birth       MAL-ED      NEPAL                          optimal              observed           0.1561119   -0.2987794    0.6110033
Birth       MAL-ED      PERU                           optimal              observed          -0.0645536   -0.1522858    0.0231786
Birth       MAL-ED      SOUTH AFRICA                   optimal              observed           0.0536877   -0.1516454    0.2590208
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5419321   -0.8871577   -0.1967064
6 months    GMS-Nepal   NEPAL                          optimal              observed          -0.0336039   -0.2322567    0.1650489
6 months    JiVitA-3    BANGLADESH                     optimal              observed          -0.0177274   -0.0805312    0.0450764
6 months    JiVitA-4    BANGLADESH                     optimal              observed           0.1415483   -0.1386923    0.4217889
6 months    MAL-ED      BANGLADESH                     optimal              observed          -0.0542832   -0.2145608    0.1059944
6 months    MAL-ED      BRAZIL                         optimal              observed          -0.0776549   -0.2566316    0.1013219
6 months    MAL-ED      INDIA                          optimal              observed          -0.0078217   -0.1033117    0.0876683
6 months    MAL-ED      NEPAL                          optimal              observed          -0.1178323   -0.2541316    0.0184671
6 months    MAL-ED      PERU                           optimal              observed          -0.0733738   -0.2095181    0.0627705
6 months    MAL-ED      SOUTH AFRICA                   optimal              observed          -0.0910900   -0.3547515    0.1725716
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3449208   -0.5553434   -0.1344983
24 months   GMS-Nepal   NEPAL                          optimal              observed          -0.1103140   -0.2892764    0.0686484
24 months   JiVitA-3    BANGLADESH                     optimal              observed          -0.0266792   -0.1374512    0.0840927
24 months   JiVitA-4    BANGLADESH                     optimal              observed           0.0778195   -0.2635223    0.4191613
24 months   MAL-ED      BANGLADESH                     optimal              observed          -0.0050065   -0.2525795    0.2425665
24 months   MAL-ED      BRAZIL                         optimal              observed          -0.2188254   -0.4424166    0.0047659
24 months   MAL-ED      INDIA                          optimal              observed           0.2453960    0.0984284    0.3923637
24 months   MAL-ED      NEPAL                          optimal              observed          -0.0458911   -0.1610833    0.0693011
24 months   MAL-ED      PERU                           optimal              observed          -0.0613032   -0.2210157    0.0984092
24 months   MAL-ED      SOUTH AFRICA                   optimal              observed          -0.1204326   -0.3444223    0.1035571
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0775560   -0.0970515    0.2521635
