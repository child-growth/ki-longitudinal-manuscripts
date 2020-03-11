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

**Intervention Variable:** safeh20

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
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        safeh20    n_cell       n
----------  --------------  -----------------------------  --------  -------  ------
Birth       JiVitA-3        BANGLADESH                     1           22392   22432
Birth       JiVitA-3        BANGLADESH                     0              40   22432
Birth       JiVitA-4        BANGLADESH                     1            2820    2820
Birth       JiVitA-4        BANGLADESH                     0               0    2820
Birth       MAL-ED          BANGLADESH                     1               0     213
Birth       MAL-ED          BANGLADESH                     0             213     213
Birth       MAL-ED          BRAZIL                         1               0      41
Birth       MAL-ED          BRAZIL                         0              41      41
Birth       MAL-ED          INDIA                          1               0      41
Birth       MAL-ED          INDIA                          0              41      41
Birth       MAL-ED          NEPAL                          1               1      26
Birth       MAL-ED          NEPAL                          0              25      26
Birth       MAL-ED          PERU                           1               9     207
Birth       MAL-ED          PERU                           0             198     207
Birth       MAL-ED          SOUTH AFRICA                   1              13      96
Birth       MAL-ED          SOUTH AFRICA                   0              83      96
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              79     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              40     119
Birth       NIH-Birth       BANGLADESH                     1             606     608
Birth       NIH-Birth       BANGLADESH                     0               2     608
Birth       NIH-Crypto      BANGLADESH                     1             732     732
Birth       NIH-Crypto      BANGLADESH                     0               0     732
Birth       PROVIDE         BANGLADESH                     1              45      45
Birth       PROVIDE         BANGLADESH                     0               0      45
6 months    CONTENT         PERU                           1              54      57
6 months    CONTENT         PERU                           0               3      57
6 months    JiVitA-3        BANGLADESH                     1           16783   16803
6 months    JiVitA-3        BANGLADESH                     0              20   16803
6 months    JiVitA-4        BANGLADESH                     1            4824    4825
6 months    JiVitA-4        BANGLADESH                     0               1    4825
6 months    LCNI-5          MALAWI                         1             672     816
6 months    LCNI-5          MALAWI                         0             144     816
6 months    MAL-ED          BANGLADESH                     1               0     240
6 months    MAL-ED          BANGLADESH                     0             240     240
6 months    MAL-ED          BRAZIL                         1               0     142
6 months    MAL-ED          BRAZIL                         0             142     142
6 months    MAL-ED          INDIA                          1               0     235
6 months    MAL-ED          INDIA                          0             235     235
6 months    MAL-ED          NEPAL                          1               1     233
6 months    MAL-ED          NEPAL                          0             232     233
6 months    MAL-ED          PERU                           1              11     259
6 months    MAL-ED          PERU                           0             248     259
6 months    MAL-ED          SOUTH AFRICA                   1              37     248
6 months    MAL-ED          SOUTH AFRICA                   0             211     248
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             168     246
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              78     246
6 months    NIH-Birth       BANGLADESH                     1             535     537
6 months    NIH-Birth       BANGLADESH                     0               2     537
6 months    NIH-Crypto      BANGLADESH                     1             715     715
6 months    NIH-Crypto      BANGLADESH                     0               0     715
6 months    PROVIDE         BANGLADESH                     1              11      11
6 months    PROVIDE         BANGLADESH                     0               0      11
6 months    SAS-FoodSuppl   INDIA                          1             380     380
6 months    SAS-FoodSuppl   INDIA                          0               0     380
24 months   CONTENT         PERU                           1              45      48
24 months   CONTENT         PERU                           0               3      48
24 months   JiVitA-3        BANGLADESH                     1            8612    8623
24 months   JiVitA-3        BANGLADESH                     0              11    8623
24 months   JiVitA-4        BANGLADESH                     1            4746    4747
24 months   JiVitA-4        BANGLADESH                     0               1    4747
24 months   LCNI-5          MALAWI                         1             475     574
24 months   LCNI-5          MALAWI                         0              99     574
24 months   MAL-ED          BANGLADESH                     1               0     212
24 months   MAL-ED          BANGLADESH                     0             212     212
24 months   MAL-ED          BRAZIL                         1               0     113
24 months   MAL-ED          BRAZIL                         0             113     113
24 months   MAL-ED          INDIA                          1               0     227
24 months   MAL-ED          INDIA                          0             227     227
24 months   MAL-ED          NEPAL                          1               1     226
24 months   MAL-ED          NEPAL                          0             225     226
24 months   MAL-ED          PERU                           1               7     193
24 months   MAL-ED          PERU                           0             186     193
24 months   MAL-ED          SOUTH AFRICA                   1              34     237
24 months   MAL-ED          SOUTH AFRICA                   0             203     237
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             145     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     213
24 months   NIH-Birth       BANGLADESH                     1             427     429
24 months   NIH-Birth       BANGLADESH                     0               2     429
24 months   NIH-Crypto      BANGLADESH                     1             514     514
24 months   NIH-Crypto      BANGLADESH                     0               0     514
24 months   PROVIDE         BANGLADESH                     1               9       9
24 months   PROVIDE         BANGLADESH                     0               0       9


The following strata were considered:

* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f32553a2-790f-43c1-9e94-2bfbec1ae4c1/7a5d0afd-b91d-4000-9f45-8bd34d9ea58c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid    country                        intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  ----------  -----------
Birth       JiVitA-3   BANGLADESH                     optimal              observed          -1.5828606   -1.602464   -1.5632573
Birth       MAL-ED     PERU                           optimal              observed          -0.6974913   -1.433280    0.0382975
Birth       MAL-ED     SOUTH AFRICA                   optimal              observed          -0.8592990   -1.288097   -0.4305006
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0358483   -1.285455   -0.7862415
6 months    JiVitA-3   BANGLADESH                     optimal              observed          -1.1845163   -1.211154   -1.1578781
6 months    LCNI-5     MALAWI                         optimal              observed          -1.6195977   -1.696685   -1.5425105
6 months    MAL-ED     PERU                           optimal              observed          -1.2778180   -1.885209   -0.6704269
6 months    MAL-ED     SOUTH AFRICA                   optimal              observed          -1.2005886   -1.490949   -0.9102283
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3523334   -1.502017   -1.2026502
24 months   JiVitA-3   BANGLADESH                     optimal              observed          -2.0110137   -2.039752   -1.9822754
24 months   LCNI-5     MALAWI                         optimal              observed          -1.9579987   -2.088440   -1.8275574
24 months   MAL-ED     PERU                           optimal              observed          -1.8960627   -2.033048   -1.7590778
24 months   MAL-ED     SOUTH AFRICA                   optimal              observed          -1.7147994   -1.956837   -1.4727621
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5949879   -2.821588   -2.3683882


### Parameter: E(Y)


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     observed             observed          -1.5896835   -1.6089596   -1.5704074
Birth       MAL-ED     PERU                           observed             observed          -0.8950725   -1.0180716   -0.7720734
Birth       MAL-ED     SOUTH AFRICA                   observed             observed          -0.5523958   -0.7550074   -0.3497843
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1158824   -1.3283278   -0.9034369
6 months    JiVitA-3   BANGLADESH                     observed             observed          -1.3132090   -1.3363486   -1.2900693
6 months    LCNI-5     MALAWI                         observed             observed          -1.6426961   -1.7120603   -1.5733318
6 months    MAL-ED     PERU                           observed             observed          -1.3065026   -1.4164323   -1.1965728
6 months    MAL-ED     SOUTH AFRICA                   observed             observed          -1.0533804   -1.1834360   -0.9233247
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3658943   -1.4882808   -1.2435078
24 months   JiVitA-3   BANGLADESH                     observed             observed          -2.0135591   -2.0412422   -1.9858759
24 months   LCNI-5     MALAWI                         observed             observed          -1.8822648   -1.9637218   -1.8008078
24 months   MAL-ED     PERU                           observed             observed          -1.7529793   -1.8786399   -1.6273186
24 months   MAL-ED     SOUTH AFRICA                   observed             observed          -1.6471273   -1.7822999   -1.5119547
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6488498   -2.7844961   -2.5132034


### Parameter: PAR


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     optimal              observed          -0.0068229   -0.0094419   -0.0042038
Birth       MAL-ED     PERU                           optimal              observed          -0.1975811   -0.9174650    0.5223028
Birth       MAL-ED     SOUTH AFRICA                   optimal              observed           0.3069031   -0.1090462    0.7228524
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0800340   -0.2408047    0.0807366
6 months    JiVitA-3   BANGLADESH                     optimal              observed          -0.1286927   -0.1453968   -0.1119886
6 months    LCNI-5     MALAWI                         optimal              observed          -0.0230984   -0.0543331    0.0081363
6 months    MAL-ED     PERU                           optimal              observed          -0.0286845   -0.6230888    0.5657197
6 months    MAL-ED     SOUTH AFRICA                   optimal              observed           0.1472082   -0.0926050    0.3870215
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0135609   -0.1082453    0.0811236
24 months   JiVitA-3   BANGLADESH                     optimal              observed          -0.0025454   -0.0080698    0.0029790
24 months   LCNI-5     MALAWI                         optimal              observed           0.0757339   -0.0176661    0.1691338
24 months   MAL-ED     PERU                           optimal              observed           0.1430834    0.0644736    0.2216933
24 months   MAL-ED     SOUTH AFRICA                   optimal              observed           0.0676721   -0.1161850    0.2515293
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0538619   -0.2483310    0.1406072
