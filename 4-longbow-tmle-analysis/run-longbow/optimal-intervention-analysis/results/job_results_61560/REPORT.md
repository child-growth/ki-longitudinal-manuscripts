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
Birth       EE          PAKISTAN                       1                35      35
Birth       EE          PAKISTAN                       0                 0      35
Birth       GMS-Nepal   NEPAL                          1               380     458
Birth       GMS-Nepal   NEPAL                          0                78     458
Birth       JiVitA-3    BANGLADESH                     1             12017   13276
Birth       JiVitA-3    BANGLADESH                     0              1259   13276
Birth       JiVitA-4    BANGLADESH                     1               105     116
Birth       JiVitA-4    BANGLADESH                     0                11     116
Birth       MAL-ED      BANGLADESH                     1               176     215
Birth       MAL-ED      BANGLADESH                     0                39     215
Birth       MAL-ED      BRAZIL                         1                24      57
Birth       MAL-ED      BRAZIL                         0                33      57
Birth       MAL-ED      INDIA                          1                29      41
Birth       MAL-ED      INDIA                          0                12      41
Birth       MAL-ED      NEPAL                          1                14      26
Birth       MAL-ED      NEPAL                          0                12      26
Birth       MAL-ED      PERU                           1               150     223
Birth       MAL-ED      PERU                           0                73     223
Birth       MAL-ED      SOUTH AFRICA                   1                33     100
Birth       MAL-ED      SOUTH AFRICA                   0                67     100
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                26     102
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                76     102
6 months    EE          PAKISTAN                       1                39      39
6 months    EE          PAKISTAN                       0                 0      39
6 months    GMS-Nepal   NEPAL                          1               367     441
6 months    GMS-Nepal   NEPAL                          0                74     441
6 months    JiVitA-3    BANGLADESH                     1              8516    9328
6 months    JiVitA-3    BANGLADESH                     0               812    9328
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
24 months   JiVitA-3    BANGLADESH                     1              4434    4852
24 months   JiVitA-3    BANGLADESH                     0               418    4852
24 months   JiVitA-4    BANGLADESH                     1               136     151
24 months   JiVitA-4    BANGLADESH                     0                15     151
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
![](/tmp/1e603d84-ff39-4bb3-8588-5fe1b413265c/9c81bbb1-40c0-4250-885d-d5754aa42653/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          optimal              observed          -1.1019077   -1.2432932   -0.9605221
Birth       JiVitA-3    BANGLADESH                     optimal              observed          -1.5964438   -1.6366211   -1.5562665
Birth       JiVitA-4    BANGLADESH                     optimal              observed          -1.7459458   -2.8903304   -0.6015612
Birth       MAL-ED      BANGLADESH                     optimal              observed          -0.9587035   -1.2322812   -0.6851258
Birth       MAL-ED      BRAZIL                         optimal              observed          -0.7186271   -1.1339847   -0.3032694
Birth       MAL-ED      INDIA                          optimal              observed          -0.7804046   -1.2185818   -0.3422275
Birth       MAL-ED      NEPAL                          optimal              observed          -0.8002971   -1.3668256   -0.2337687
Birth       MAL-ED      PERU                           optimal              observed          -1.0399138   -1.2067495   -0.8730781
Birth       MAL-ED      SOUTH AFRICA                   optimal              observed          -0.4918323   -0.8397511   -0.1439135
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0798910   -1.3468192   -0.8129629
6 months    GMS-Nepal   NEPAL                          optimal              observed          -1.3935072   -1.5210848   -1.2659297
6 months    JiVitA-3    BANGLADESH                     optimal              observed          -1.3200398   -1.3492465   -1.2908331
6 months    JiVitA-4    BANGLADESH                     optimal              observed          -1.1251564   -1.3139499   -0.9363630
6 months    MAL-ED      BANGLADESH                     optimal              observed          -1.1816417   -1.3074018   -1.0558815
6 months    MAL-ED      BRAZIL                         optimal              observed           0.1769410   -0.0334889    0.3873710
6 months    MAL-ED      INDIA                          optimal              observed          -1.0311703   -1.2235443   -0.8387962
6 months    MAL-ED      NEPAL                          optimal              observed          -0.5229557   -0.6806687   -0.3652426
6 months    MAL-ED      PERU                           optimal              observed          -1.3216671   -1.4559752   -1.1873590
6 months    MAL-ED      SOUTH AFRICA                   optimal              observed          -1.0006715   -1.2491652   -0.7521778
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3090823   -1.5105881   -1.1075764
24 months   GMS-Nepal   NEPAL                          optimal              observed          -1.8696272   -2.0849449   -1.6543094
24 months   JiVitA-3    BANGLADESH                     optimal              observed          -2.0013304   -2.0413669   -1.9612940
24 months   JiVitA-4    BANGLADESH                     optimal              observed          -1.7165507   -1.8644060   -1.5686954
24 months   MAL-ED      BANGLADESH                     optimal              observed          -1.9933191   -2.2088416   -1.7777966
24 months   MAL-ED      BRAZIL                         optimal              observed           0.1017501   -0.1648914    0.3683915
24 months   MAL-ED      INDIA                          optimal              observed          -1.6379296   -1.8561241   -1.4197351
24 months   MAL-ED      NEPAL                          optimal              observed          -1.2411236   -1.4156824   -1.0665648
24 months   MAL-ED      PERU                           optimal              observed          -1.7273833   -1.9061935   -1.5485731
24 months   MAL-ED      SOUTH AFRICA                   optimal              observed          -1.8251985   -2.0055668   -1.6448301
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4594850   -2.7102297   -2.2087403


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          observed             observed          -1.0555240   -1.1550843   -0.9559638
Birth       JiVitA-3    BANGLADESH                     observed             observed          -1.5928457   -1.6158667   -1.5698248
Birth       JiVitA-4    BANGLADESH                     observed             observed          -1.6073276   -1.8105798   -1.4040753
Birth       MAL-ED      BANGLADESH                     observed             observed          -1.0949767   -1.2319917   -0.9579618
Birth       MAL-ED      BRAZIL                         observed             observed          -0.6996491   -0.9856018   -0.4136965
Birth       MAL-ED      INDIA                          observed             observed          -1.2075610   -1.5261540   -0.8889679
Birth       MAL-ED      NEPAL                          observed             observed          -0.8234615   -1.1896049   -0.4573182
Birth       MAL-ED      PERU                           observed             observed          -0.8753812   -0.9932108   -0.7575515
Birth       MAL-ED      SOUTH AFRICA                   observed             observed          -0.5797000   -0.7788298   -0.3805702
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1086275   -1.3310338   -0.8862211
6 months    GMS-Nepal   NEPAL                          observed             observed          -1.3499849   -1.4387386   -1.2612312
6 months    JiVitA-3    BANGLADESH                     observed             observed          -1.3240051   -1.3526414   -1.2953689
6 months    JiVitA-4    BANGLADESH                     observed             observed          -1.1994318   -1.3808291   -1.0180345
6 months    MAL-ED      BANGLADESH                     observed             observed          -1.2242918   -1.3439424   -1.1046413
6 months    MAL-ED      BRAZIL                         observed             observed           0.0609091   -0.0944768    0.2162950
6 months    MAL-ED      INDIA                          observed             observed          -1.2002381   -1.3274929   -1.0729833
6 months    MAL-ED      NEPAL                          observed             observed          -0.5634068   -0.6769687   -0.4498449
6 months    MAL-ED      PERU                           observed             observed          -1.3108735   -1.4182407   -1.2035062
6 months    MAL-ED      SOUTH AFRICA                   observed             observed          -1.0662227   -1.1965862   -0.9358591
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.4030503   -1.5292443   -1.2768563
24 months   GMS-Nepal   NEPAL                          observed             observed          -1.8752995   -1.9688053   -1.7817937
24 months   JiVitA-3    BANGLADESH                     observed             observed          -2.0187325   -2.0554682   -1.9819968
24 months   JiVitA-4    BANGLADESH                     observed             observed          -1.7726490   -1.9111913   -1.6341067
24 months   MAL-ED      BANGLADESH                     observed             observed          -2.0016585   -2.1303297   -1.8729874
24 months   MAL-ED      BRAZIL                         observed             observed          -0.0162939   -0.1929098    0.1603221
24 months   MAL-ED      INDIA                          observed             observed          -1.8994059   -2.0346781   -1.7641337
24 months   MAL-ED      NEPAL                          observed             observed          -1.3109318   -1.4313748   -1.1904888
24 months   MAL-ED      PERU                           observed             observed          -1.7412963   -1.8630698   -1.6195228
24 months   MAL-ED      SOUTH AFRICA                   observed             observed          -1.6424525   -1.7808926   -1.5040124
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6768207   -2.8213178   -2.5323235


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          optimal              observed           0.0463836   -0.0712174    0.1639847
Birth       JiVitA-3    BANGLADESH                     optimal              observed           0.0035981   -0.0284109    0.0356071
Birth       JiVitA-4    BANGLADESH                     optimal              observed           0.1386182   -0.9318042    1.2090406
Birth       MAL-ED      BANGLADESH                     optimal              observed          -0.1362732   -0.3885245    0.1159780
Birth       MAL-ED      BRAZIL                         optimal              observed           0.0189779   -0.2889822    0.3269381
Birth       MAL-ED      INDIA                          optimal              observed          -0.4271564   -0.8683863    0.0140736
Birth       MAL-ED      NEPAL                          optimal              observed          -0.0231644   -0.4570867    0.4107579
Birth       MAL-ED      PERU                           optimal              observed           0.1645326    0.0434542    0.2856110
Birth       MAL-ED      SOUTH AFRICA                   optimal              observed          -0.0878677   -0.3747651    0.1990297
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0287364   -0.1533915    0.0959186
6 months    GMS-Nepal   NEPAL                          optimal              observed           0.0435223   -0.0656385    0.1526832
6 months    JiVitA-3    BANGLADESH                     optimal              observed          -0.0039654   -0.0114309    0.0035002
6 months    JiVitA-4    BANGLADESH                     optimal              observed          -0.0742754   -0.1607866    0.0122358
6 months    MAL-ED      BANGLADESH                     optimal              observed          -0.0426502   -0.1074383    0.0221379
6 months    MAL-ED      BRAZIL                         optimal              observed          -0.1160320   -0.2711362    0.0390723
6 months    MAL-ED      INDIA                          optimal              observed          -0.1690678   -0.3258672   -0.0122685
6 months    MAL-ED      NEPAL                          optimal              observed          -0.0404511   -0.1542307    0.0733286
6 months    MAL-ED      PERU                           optimal              observed           0.0107937   -0.0822878    0.1038751
6 months    MAL-ED      SOUTH AFRICA                   optimal              observed          -0.0655511   -0.2854152    0.1543129
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0939680   -0.2559846    0.0680485
24 months   GMS-Nepal   NEPAL                          optimal              observed          -0.0056723   -0.1893333    0.1779886
24 months   JiVitA-3    BANGLADESH                     optimal              observed          -0.0174020   -0.0351104    0.0003063
24 months   JiVitA-4    BANGLADESH                     optimal              observed          -0.0560983   -0.0953522   -0.0168444
24 months   MAL-ED      BANGLADESH                     optimal              observed          -0.0083394   -0.1771786    0.1604997
24 months   MAL-ED      BRAZIL                         optimal              observed          -0.1180439   -0.3108390    0.0747512
24 months   MAL-ED      INDIA                          optimal              observed          -0.2614763   -0.4416887   -0.0812640
24 months   MAL-ED      NEPAL                          optimal              observed          -0.0698082   -0.1895823    0.0499659
24 months   MAL-ED      PERU                           optimal              observed          -0.0139130   -0.1328405    0.1050146
24 months   MAL-ED      SOUTH AFRICA                   optimal              observed           0.1827460    0.0323211    0.3331709
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2173357   -0.4204696   -0.0142017
