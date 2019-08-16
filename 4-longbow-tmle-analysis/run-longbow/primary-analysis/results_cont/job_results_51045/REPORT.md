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
Birth       ki0047075b-MAL-ED     BANGLADESH                     1               193     227
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                34     227
Birth       ki0047075b-MAL-ED     BRAZIL                         1                97     177
Birth       ki0047075b-MAL-ED     BRAZIL                         0                80     177
Birth       ki0047075b-MAL-ED     INDIA                          1               150     193
Birth       ki0047075b-MAL-ED     INDIA                          0                43     193
Birth       ki0047075b-MAL-ED     NEPAL                          1                97     166
Birth       ki0047075b-MAL-ED     NEPAL                          0                69     166
Birth       ki0047075b-MAL-ED     PERU                           1               177     265
Birth       ki0047075b-MAL-ED     PERU                           0                88     265
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                87     231
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0               144     231
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                49     114
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                65     114
Birth       ki1000109-EE          PAKISTAN                       1                 1       1
Birth       ki1000109-EE          PAKISTAN                       0                 0       1
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1             13739   15136
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0              1397   15136
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                28      31
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 3      31
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
6 months    ki1000109-EE          PAKISTAN                       1               349     375
6 months    ki1000109-EE          PAKISTAN                       0                26     375
6 months    ki1113344-GMS-Nepal   NEPAL                          1               379     458
6 months    ki1113344-GMS-Nepal   NEPAL                          0                79     458
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1             14763   16253
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0              1490   16253
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
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              7495    8313
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               818    8313
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1               136     151
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                15     151


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
![](/tmp/6564a537-babe-41f2-be60-5a616ce38cf4/2cf9a30e-512f-45fe-b35e-2a3db3f7b105/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6564a537-babe-41f2-be60-5a616ce38cf4/2cf9a30e-512f-45fe-b35e-2a3db3f7b105/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6564a537-babe-41f2-be60-5a616ce38cf4/2cf9a30e-512f-45fe-b35e-2a3db3f7b105/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.9447759   -1.0962184   -0.7933334
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.1225467   -1.4853125   -0.7597808
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.4661127    0.2362171    0.6960083
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.2911202    0.0426669    0.5395735
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                -1.0093699   -1.1759567   -0.8427831
Birth       ki0047075b-MAL-ED     INDIA                          0                    NA                -1.3398263   -1.6221120   -1.0575406
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.7746387   -0.9490542   -0.6002231
Birth       ki0047075b-MAL-ED     NEPAL                          0                    NA                -1.1216017   -1.3246127   -0.9185908
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.0350387   -0.1725797    0.1025023
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.0988634   -0.2988959    0.1011691
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0267005   -0.2237774    0.2771784
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0509920   -0.2401523    0.1381684
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8827155    0.6118519    1.1535790
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7169577    0.4056920    1.0282235
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.7194451   -0.7401699   -0.6987204
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.7421396   -0.8014016   -0.6828777
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.1342608   -0.2787162    0.0101945
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0789338   -0.3431209    0.1852533
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 1.0644761    0.8505379    1.2784142
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.9058413    0.6543634    1.1573193
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.6446402   -0.7801299   -0.5091506
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -0.9228689   -1.2393508   -0.6063870
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.1436895   -0.0404355    0.3278145
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0371261   -0.1507722    0.2250244
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 1.0094822    0.8633916    1.1555728
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                 1.1316443    0.9125832    1.3507054
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.6087169    0.3915253    0.8259084
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.5012204    0.2947700    0.7076709
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.6805109    0.4688295    0.8921923
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3948941    0.2286945    0.5610937
6 months    ki1000109-EE          PAKISTAN                       1                    NA                -0.6566760   -0.7708880   -0.5424639
6 months    ki1000109-EE          PAKISTAN                       0                    NA                -1.5855443   -2.0833691   -1.0877195
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.6168830   -0.7248351   -0.5089310
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.5447024   -0.7779354   -0.3114694
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.5858097   -0.6065929   -0.5650265
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.6760725   -0.7384264   -0.6137186
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.3712826   -0.5971566   -0.1454086
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.2488208   -0.5880539    0.0904124
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.8323933   -0.9680136   -0.6967731
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.6764028   -0.9486773   -0.4041283
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.3158357    0.0729951    0.5586763
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.5645793    0.2184647    0.9106940
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.9657633   -1.0976215   -0.8339051
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.9472263   -1.2011252   -0.6933274
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.3413367   -0.5003908   -0.1822827
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.4382066   -0.6009898   -0.2754235
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0499929   -0.0841627    0.1841485
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.3381620    0.1072696    0.5690545
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.4805447    0.2676894    0.6934000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.4013740    0.2474082    0.5553398
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0040617   -0.1852750    0.1771517
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0723529   -0.1030203    0.2477262
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.1460674   -1.2561907   -1.0359441
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.0243792   -1.2551556   -0.7936028
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3133641   -1.3385769   -1.2881513
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.2125303   -1.2856392   -1.1394213
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.0135684   -1.1745726   -0.8525643
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.0538682   -1.5855379   -0.5221985


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.9701762   -1.1093516   -0.8310008
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.3837288    0.2059602    0.5614974
Birth       ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.0824352   -1.2259825   -0.9388879
Birth       ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.9184337   -1.0582074   -0.7786600
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0558491   -0.1687562    0.0570581
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0290476   -0.1772448    0.1191495
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7865789    0.5832028    0.9899551
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.7222456   -0.7423351   -0.7021562
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.1245816   -0.2544517    0.0052886
6 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.7105222   -0.8368775   -0.5841669
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.1010587   -0.0308005    0.2329178
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                 1.0571296    0.9346064    1.1796528
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                 0.5435551    0.3895443    0.6975659
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5063403    0.3745918    0.6380888
6 months    ki1000109-EE          PAKISTAN                       NA                   NA                -0.7218667   -0.8355727   -0.6081607
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.6194068   -0.7173394   -0.5214742
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.5929896   -0.6128338   -0.5731455
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.3657303   -0.5647992   -0.1666615
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.8080769   -0.9302432   -0.6859106
24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.9551111   -1.0714034   -0.8388188
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.3795556   -0.4938120   -0.2652991
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                 0.1242714    0.0054301    0.2431126
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                 0.4157543    0.2953789    0.5361297
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0434286   -0.0830724    0.1699295
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.1267450   -1.2257791   -1.0277110
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3031012   -1.3269655   -1.2792368
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.0137086   -1.1659964   -0.8614208


### Parameter: ATE


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.1777708   -0.5722690    0.2167274
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1749925   -0.4925443    0.1425594
Birth       ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA                          0                    1                 -0.3304564   -0.6591221   -0.0017908
Birth       ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.3469631   -0.6025510   -0.0913751
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                 -0.0638247   -0.3069542    0.1793047
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.0776925   -0.3964146    0.2410296
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1657578   -0.5841217    0.2526061
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0226945   -0.0832510    0.0378620
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0553270   -0.2466515    0.3573055
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1586348   -0.4865511    0.1692816
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                 -0.2782287   -0.6228155    0.0663581
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.1065634   -0.3709809    0.1578542
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                  0.1221620   -0.1390438    0.3833679
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.1074964   -0.4074712    0.1924783
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2856168   -0.5554847   -0.0157489
6 months    ki1000109-EE          PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN                       0                    1                 -0.9288684   -1.4399348   -0.4178019
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0721807   -0.1851669    0.3295282
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0902628   -0.1548201   -0.0257056
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.1224618   -0.2835908    0.5285144
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.1559906   -0.1483120    0.4602931
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.2487436   -0.1722665    0.6697537
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0185370   -0.2680901    0.3051640
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0968699   -0.3251742    0.1314344
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.2881691    0.0247030    0.5516353
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.0791706   -0.3482519    0.1899106
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0764146   -0.1783477    0.3311769
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.1216882   -0.1343887    0.3777652
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.1008338    0.0245456    0.1771221
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0402998   -0.5978377    0.5172380


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0254003   -0.0842630    0.0334623
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0823839   -0.2252592    0.0604914
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0730653   -0.1422528   -0.0038779
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.1437951   -0.2529257   -0.0346645
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.0208104   -0.1013829    0.0597622
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0557481   -0.2547752    0.1432789
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0961365   -0.3357745    0.1435014
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0028005   -0.0082738    0.0026728
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0096792   -0.0351548    0.0545133
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0927536   -0.2393968    0.0538896
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0658819   -0.1450870    0.0133231
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0426309   -0.1572639    0.0720022
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 0.0476474   -0.0367235    0.1320183
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0651618   -0.2613437    0.1310202
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1741706   -0.3435634   -0.0047779
6 months    ki1000109-EE          PAKISTAN                       1                    NA                -0.0651907   -0.1073347   -0.0230467
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0025238   -0.0475703    0.0425227
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0071799   -0.0130229   -0.0013370
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0055522   -0.0434526    0.0545571
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0243164   -0.0182862    0.0669190
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1307915   -0.0503178    0.3119008
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0106522   -0.0584760    0.0797803
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0382188   -0.1365393    0.0601016
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0742784   -0.0092649    0.1578217
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0647903   -0.2405570    0.1109763
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0474902   -0.1116458    0.2066263
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0193224   -0.0227174    0.0613622
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0102629    0.0027173    0.0178086
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0001402   -0.0514960    0.0512156
