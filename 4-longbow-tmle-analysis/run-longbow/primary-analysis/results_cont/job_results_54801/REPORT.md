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

**Intervention Variable:** impsan

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
* safeh20
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
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        impsan    n_cell       n  outcome_variable 
----------  ----------------------  -----------------------------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            179     213  haz              
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             34     213  haz              
Birth       ki0047075b-MAL-ED       BRAZIL                         1             59      60  haz              
Birth       ki0047075b-MAL-ED       BRAZIL                         0              1      60  haz              
Birth       ki0047075b-MAL-ED       INDIA                          1             15      40  haz              
Birth       ki0047075b-MAL-ED       INDIA                          0             25      40  haz              
Birth       ki0047075b-MAL-ED       NEPAL                          1             25      26  haz              
Birth       ki0047075b-MAL-ED       NEPAL                          0              1      26  haz              
Birth       ki0047075b-MAL-ED       PERU                           1             52     208  haz              
Birth       ki0047075b-MAL-ED       PERU                           0            156     208  haz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              0      95  haz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0             95      95  haz              
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     118  haz              
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            118     118  haz              
Birth       ki1017093-NIH-Birth     BANGLADESH                     1            231     608  haz              
Birth       ki1017093-NIH-Birth     BANGLADESH                     0            377     608  haz              
Birth       ki1017093b-PROVIDE      BANGLADESH                     1             43      45  haz              
Birth       ki1017093b-PROVIDE      BANGLADESH                     0              2      45  haz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1            632     721  haz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0             89     721  haz              
Birth       ki1114097-CONTENT       PERU                           1              1       2  haz              
Birth       ki1114097-CONTENT       PERU                           0              1       2  haz              
Birth       ki1135781-COHORTS       GUATEMALA                      1             45     491  haz              
Birth       ki1135781-COHORTS       GUATEMALA                      0            446     491  haz              
Birth       ki1135781-COHORTS       INDIA                          1           1767    4776  haz              
Birth       ki1135781-COHORTS       INDIA                          0           3009    4776  haz              
Birth       ki1135781-COHORTS       PHILIPPINES                    1            178    1191  haz              
Birth       ki1135781-COHORTS       PHILIPPINES                    0           1013    1191  haz              
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          15220   22431  haz              
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           7211   22431  haz              
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1           2181    2820  haz              
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            639    2820  haz              
6 months    ki0047075b-MAL-ED       BANGLADESH                     1            202     240  haz              
6 months    ki0047075b-MAL-ED       BANGLADESH                     0             38     240  haz              
6 months    ki0047075b-MAL-ED       BRAZIL                         1            205     209  haz              
6 months    ki0047075b-MAL-ED       BRAZIL                         0              4     209  haz              
6 months    ki0047075b-MAL-ED       INDIA                          1            108     233  haz              
6 months    ki0047075b-MAL-ED       INDIA                          0            125     233  haz              
6 months    ki0047075b-MAL-ED       NEPAL                          1            235     236  haz              
6 months    ki0047075b-MAL-ED       NEPAL                          0              1     236  haz              
6 months    ki0047075b-MAL-ED       PERU                           1             65     263  haz              
6 months    ki0047075b-MAL-ED       PERU                           0            198     263  haz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     244  haz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            240     244  haz              
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     238  haz              
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238     238  haz              
6 months    ki1017093-NIH-Birth     BANGLADESH                     1            205     537  haz              
6 months    ki1017093-NIH-Birth     BANGLADESH                     0            332     537  haz              
6 months    ki1017093b-PROVIDE      BANGLADESH                     1             11      11  haz              
6 months    ki1017093b-PROVIDE      BANGLADESH                     0              0      11  haz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            615     704  haz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             89     704  haz              
6 months    ki1114097-CONTENT       PERU                           1            201     215  haz              
6 months    ki1114097-CONTENT       PERU                           0             14     215  haz              
6 months    ki1135781-COHORTS       GUATEMALA                      1             67     658  haz              
6 months    ki1135781-COHORTS       GUATEMALA                      0            591     658  haz              
6 months    ki1135781-COHORTS       INDIA                          1           1881    4971  haz              
6 months    ki1135781-COHORTS       INDIA                          0           3090    4971  haz              
6 months    ki1135781-COHORTS       PHILIPPINES                    1            143    1083  haz              
6 months    ki1135781-COHORTS       PHILIPPINES                    0            940    1083  haz              
6 months    ki1148112-LCNI-5        MALAWI                         1              3     812  haz              
6 months    ki1148112-LCNI-5        MALAWI                         0            809     812  haz              
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1          12038   16800  haz              
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           4762   16800  haz              
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1           3734    4825  haz              
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0           1091    4825  haz              
24 months   ki0047075b-MAL-ED       BANGLADESH                     1            181     212  haz              
24 months   ki0047075b-MAL-ED       BANGLADESH                     0             31     212  haz              
24 months   ki0047075b-MAL-ED       BRAZIL                         1            166     169  haz              
24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     169  haz              
24 months   ki0047075b-MAL-ED       INDIA                          1            104     225  haz              
24 months   ki0047075b-MAL-ED       INDIA                          0            121     225  haz              
24 months   ki0047075b-MAL-ED       NEPAL                          1            227     228  haz              
24 months   ki0047075b-MAL-ED       NEPAL                          0              1     228  haz              
24 months   ki0047075b-MAL-ED       PERU                           1             47     196  haz              
24 months   ki0047075b-MAL-ED       PERU                           0            149     196  haz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     235  haz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            231     235  haz              
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     207  haz              
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207     207  haz              
24 months   ki1017093-NIH-Birth     BANGLADESH                     1            170     429  haz              
24 months   ki1017093-NIH-Birth     BANGLADESH                     0            259     429  haz              
24 months   ki1017093b-PROVIDE      BANGLADESH                     1              9       9  haz              
24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       9  haz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            433     503  haz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     503  haz              
24 months   ki1114097-CONTENT       PERU                           1            151     164  haz              
24 months   ki1114097-CONTENT       PERU                           0             13     164  haz              
24 months   ki1135781-COHORTS       GUATEMALA                      1             77     893  haz              
24 months   ki1135781-COHORTS       GUATEMALA                      0            816     893  haz              
24 months   ki1135781-COHORTS       INDIA                          1           1471    3751  haz              
24 months   ki1135781-COHORTS       INDIA                          0           2280    3751  haz              
24 months   ki1135781-COHORTS       PHILIPPINES                    1            126     990  haz              
24 months   ki1135781-COHORTS       PHILIPPINES                    0            864     990  haz              
24 months   ki1148112-LCNI-5        MALAWI                         1              2     572  haz              
24 months   ki1148112-LCNI-5        MALAWI                         0            570     572  haz              
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6111    8622  haz              
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2511    8622  haz              
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1           3683    4747  haz              
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0           1064    4747  haz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/97d6e1bf-00db-4241-88b3-e53c8be90d18/0adacd31-f4b3-437e-a04e-355f8d9fbebd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/97d6e1bf-00db-4241-88b3-e53c8be90d18/0adacd31-f4b3-437e-a04e-355f8d9fbebd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/97d6e1bf-00db-4241-88b3-e53c8be90d18/0adacd31-f4b3-437e-a04e-355f8d9fbebd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.0556498   -1.2054804   -0.9058192
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.0510064   -1.3822614   -0.7197515
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -1.1102983   -1.7255477   -0.4950490
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                -1.1756429   -1.5000065   -0.8512792
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.7766497   -1.0081213   -0.5451781
Birth       ki0047075b-MAL-ED       PERU          0                    NA                -0.9281054   -1.0710633   -0.7851475
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.8441904   -0.9967016   -0.6916792
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.9850559   -1.0932380   -0.8768739
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.9096449   -0.9845841   -0.8347057
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.9021663   -1.1426770   -0.6616555
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0314971   -0.3919709    0.3289767
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0367371   -0.1504747    0.0770005
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.5439234   -0.5997292   -0.4881175
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.7685131   -0.8111811   -0.7258450
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.0477759   -0.1000297    0.1955815
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.3742294   -0.4429292   -0.3055297
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.5591658   -1.5815613   -1.5367703
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -1.6779932   -1.7134084   -1.6425780
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.5013364   -1.5575992   -1.4450736
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.6175558   -1.7158819   -1.5192296
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.2083214   -1.3417940   -1.0748488
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.2074513   -1.4929059   -0.9219968
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -1.1981349   -1.3660435   -1.0302264
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -1.2142136   -1.3854003   -1.0430269
6 months    ki0047075b-MAL-ED       PERU          1                    NA                -1.3606380   -1.6090863   -1.1121898
6 months    ki0047075b-MAL-ED       PERU          0                    NA                -1.3102223   -1.4367121   -1.1837326
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -1.3028042   -1.4439214   -1.1616870
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -1.4730258   -1.5845647   -1.3614870
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -1.2112385   -1.2874043   -1.1350728
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -1.0981760   -1.3128637   -0.8834882
6 months    ki1114097-CONTENT       PERU          1                    NA                -0.2985634   -0.4784491   -0.1186777
6 months    ki1114097-CONTENT       PERU          0                    NA                -0.6584902   -1.3205969    0.0036166
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -1.6828109   -1.9464265   -1.4191954
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -1.8916034   -1.9790349   -1.8041720
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.8533495   -0.9065777   -0.8001213
6 months    ki1135781-COHORTS       INDIA         0                    NA                -1.1687450   -1.2100451   -1.1274449
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.6536097   -0.8393873   -0.4678321
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -1.2711815   -1.3417083   -1.2006546
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.2823001   -1.3078232   -1.2567769
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -1.4156114   -1.4545019   -1.3767209
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.3155806   -1.3573570   -1.2738042
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.4574769   -1.5341546   -1.3807992
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.9754701   -2.1152837   -1.8356565
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.9927902   -2.2970475   -1.6885328
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -1.7700681   -1.9334595   -1.6066768
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -1.9893711   -2.1687091   -1.8100330
24 months   ki0047075b-MAL-ED       PERU          1                    NA                -1.6870195   -1.9243721   -1.4496669
24 months   ki0047075b-MAL-ED       PERU          0                    NA                -1.7695368   -1.9120033   -1.6270703
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -2.0865773   -2.2564557   -1.9166988
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -2.3167904   -2.4415188   -2.1920619
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -1.4509848   -1.5425282   -1.3594413
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -1.3895592   -1.6151877   -1.1639308
24 months   ki1114097-CONTENT       PERU          1                    NA                -0.6552624   -0.8348617   -0.4756632
24 months   ki1114097-CONTENT       PERU          0                    NA                -1.2948669   -1.8039137   -0.7858200
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -2.7238849   -2.9895244   -2.4582453
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -3.0221427   -3.0961678   -2.9481176
24 months   ki1135781-COHORTS       INDIA         1                    NA                -1.9146893   -1.9755068   -1.8538719
24 months   ki1135781-COHORTS       INDIA         0                    NA                -2.4236893   -2.4747596   -2.3726191
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -1.7517888   -1.9365065   -1.5670711
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -2.7136730   -2.7856368   -2.6417092
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.9607554   -1.9921040   -1.9294068
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -2.1736894   -2.2214131   -2.1259656
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.7378817   -1.7786012   -1.6971622
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.9463158   -2.0069917   -1.8856398


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       ki0047075b-MAL-ED       INDIA         NA                   NA                -1.1375000   -1.4325178   -0.8424822
Birth       ki0047075b-MAL-ED       PERU          NA                   NA                -0.9131731   -1.0331160   -0.7932301
Birth       ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -0.9131068   -0.9851939   -0.8410197
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.0275356   -0.1359303    0.0808590
Birth       ki1135781-COHORTS       INDIA         NA                   NA                -0.6777115   -0.7106054   -0.6448175
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.3137364   -0.3764483   -0.2510244
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -1.5898288   -1.6090823   -1.5705753
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.2026806   -1.3203025   -1.0850586
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                -1.2087268   -1.3282418   -1.0892117
6 months    ki0047075b-MAL-ED       PERU          NA                   NA                -1.3196229   -1.4293681   -1.2098778
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -1.2031037   -1.2749632   -1.1312442
6 months    ki1114097-CONTENT       PERU          NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                -1.8789210   -1.9609921   -1.7968498
6 months    ki1135781-COHORTS       INDIA         NA                   NA                -1.0414424   -1.0741113   -1.0087734
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                -1.1942936   -1.2608624   -1.1277248
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -1.3134804   -1.3366079   -1.2903528
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                -1.8779556   -2.0033207   -1.7525904
24 months   ki0047075b-MAL-ED       PERU          NA                   NA                -1.7535204   -1.8760973   -1.6309435
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -1.4417097   -1.5263855   -1.3570340
24 months   ki1114097-CONTENT       PERU          NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                -3.0050840   -3.0758338   -2.9343342
24 months   ki1135781-COHORTS       INDIA         NA                   NA                -2.2126633   -2.2518337   -2.1734929
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                -2.5937576   -2.6629996   -2.5245156
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -2.0136975   -2.0413718   -1.9860232
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.7803708   -1.8158650   -1.7448765


### Parameter: ATE


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    1                  0.0046434   -0.3593233    0.3686101
Birth       ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA         0                    1                 -0.0653445   -0.7593070    0.6286180
Birth       ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU          0                    1                 -0.1514557   -0.4206284    0.1177170
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1408655   -0.3270501    0.0453191
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.0074786   -0.2440856    0.2590428
Birth       ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       GUATEMALA     0                    1                 -0.0052400   -0.3828781    0.3723980
Birth       ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 -0.2245897   -0.2945168   -0.1546626
Birth       ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.4220053   -0.5843808   -0.2596298
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.1188274   -0.1574543   -0.0802004
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.1162194   -0.2281798   -0.0042589
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    1                  0.0008701   -0.3146790    0.3164192
6 months    ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA         0                    1                 -0.0160787   -0.2564922    0.2243349
6 months    ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU          0                    1                  0.0504157   -0.2285030    0.3293344
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1702216   -0.3481352    0.0076919
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.1130626   -0.1147017    0.3408269
6 months    ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU          0                    1                 -0.3599268   -1.0456704    0.3258168
6 months    ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       GUATEMALA     0                    1                 -0.2087925   -0.4867210    0.0691360
6 months    ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 -0.3153955   -0.3820284   -0.2487626
6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.6175717   -0.8166637   -0.4184798
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.1333113   -0.1736773   -0.0929453
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.1418963   -0.2280017   -0.0557909
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 -0.0173201   -0.3528267    0.3181866
24 months   ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 -0.2193029   -0.4608425    0.0222366
24 months   ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU          0                    1                 -0.0825173   -0.3554745    0.1904399
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.2302131   -0.4380083   -0.0224179
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.0614256   -0.1818401    0.3046913
24 months   ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU          0                    1                 -0.6396044   -1.1784271   -0.1007817
24 months   ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 -0.2982578   -0.5737317   -0.0227839
24 months   ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 -0.5090000   -0.5884750   -0.4295250
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.9618842   -1.1602263   -0.7635422
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.2129340   -0.2645225   -0.1613454
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.2084340   -0.2798707   -0.1369974


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0025982   -0.0547423    0.0599387
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -0.0272017   -0.4772947    0.4228914
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.1365234   -0.3406661    0.0676193
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0868293   -0.2027434    0.0290848
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0034619   -0.0343677    0.0274439
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0039615   -0.3395655    0.3474884
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.1337881   -0.1793788   -0.0881974
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.3615122   -0.5024193   -0.2206052
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0306630   -0.0425026   -0.0188235
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0222771   -0.0482822    0.0037281
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0056409   -0.0410501    0.0523319
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.0105918   -0.1395496    0.1183660
6 months    ki0047075b-MAL-ED       PERU          1                    NA                 0.0410151   -0.1779373    0.2599675
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1045779   -0.2149367    0.0057810
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0081349   -0.0207834    0.0370531
6 months    ki1114097-CONTENT       PERU          1                    NA                -0.0153583   -0.0578276    0.0271110
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1961100   -0.4522307    0.0600107
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.1880929   -0.2319191   -0.1442666
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.5406839   -0.7167844   -0.3645834
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0311803   -0.0419169   -0.0204437
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0284671   -0.0475815   -0.0093526
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0029261   -0.0511490    0.0452968
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.1078874   -0.2372814    0.0215065
24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.0665009   -0.2761235    0.1431216
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1324806   -0.2585902   -0.0063711
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0092750   -0.0229158    0.0414658
24 months   ki1114097-CONTENT       PERU          1                    NA                -0.0409571   -0.0872204    0.0053062
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.2811991   -0.5389831   -0.0234151
24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.2979739   -0.3475045   -0.2484434
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.8419688   -1.0203934   -0.6635441
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0529421   -0.0680215   -0.0378628
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0424890   -0.0588297   -0.0261484
