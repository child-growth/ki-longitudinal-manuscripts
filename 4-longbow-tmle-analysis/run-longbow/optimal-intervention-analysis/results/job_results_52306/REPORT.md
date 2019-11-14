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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        gagebrth             n_cell       n
----------  -------------------------  -----------------------------  ------------------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term        53      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  11      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term               22      86
Birth       ki1000108-IRC              INDIA                          Full or late term       213     328
Birth       ki1000108-IRC              INDIA                          Preterm                  32     328
Birth       ki1000108-IRC              INDIA                          Early term               83     328
Birth       ki1000109-EE               PAKISTAN                       Full or late term         9     177
Birth       ki1000109-EE               PAKISTAN                       Preterm                 132     177
Birth       ki1000109-EE               PAKISTAN                       Early term               36     177
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       160     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 240     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term              307     707
Birth       ki1101329-Keneba           GAMBIA                         Full or late term       709    1439
Birth       ki1101329-Keneba           GAMBIA                         Preterm                 206    1439
Birth       ki1101329-Keneba           GAMBIA                         Early term              524    1439
Birth       ki1119695-PROBIT           BELARUS                        Full or late term      7074   13830
Birth       ki1119695-PROBIT           BELARUS                        Preterm                 468   13830
Birth       ki1119695-PROBIT           BELARUS                        Early term             6288   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term       323     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                  78     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term              171     572
Birth       ki1135781-COHORTS          INDIA                          Full or late term       553    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                 259    1229
Birth       ki1135781-COHORTS          INDIA                          Early term              417    1229
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term      1135    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                 579    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term             1160    2874
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term     11811   20971
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3396   20971
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             5764   20971
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       212     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  51     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               83     346
6 months    ki1000108-IRC              INDIA                          Full or late term       249     388
6 months    ki1000108-IRC              INDIA                          Preterm                  42     388
6 months    ki1000108-IRC              INDIA                          Early term               97     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term        17     375
6 months    ki1000109-EE               PAKISTAN                       Preterm                 299     375
6 months    ki1000109-EE               PAKISTAN                       Early term               59     375
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       155     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 251     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              309     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 290    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1902
6 months    ki1101329-Keneba           GAMBIA                         Full or late term       658    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                 207    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term              509    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term      8006   15758
6 months    ki1119695-PROBIT           BELARUS                        Preterm                 551   15758
6 months    ki1119695-PROBIT           BELARUS                        Early term             7201   15758
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       389     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                 114     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term              211     714
6 months    ki1135781-COHORTS          INDIA                          Full or late term       568    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                 299    1312
6 months    ki1135781-COHORTS          INDIA                          Early term              445    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term      1028    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                 572    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term             1085    2685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      8483   15932
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3033   15932
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             4416   15932
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       214     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               84     350
24 months   ki1000108-IRC              INDIA                          Full or late term       250     390
24 months   ki1000108-IRC              INDIA                          Preterm                  42     390
24 months   ki1000108-IRC              INDIA                          Early term               98     390
24 months   ki1000109-EE               PAKISTAN                       Full or late term         7     168
24 months   ki1000109-EE               PAKISTAN                       Preterm                 132     168
24 months   ki1000109-EE               PAKISTAN                       Early term               29     168
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        79     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 208     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              227     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term       558    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                 168    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term              431    1157
24 months   ki1119695-PROBIT           BELARUS                        Full or late term      1991    3972
24 months   ki1119695-PROBIT           BELARUS                        Preterm                 136    3972
24 months   ki1119695-PROBIT           BELARUS                        Early term             1845    3972
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       377     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                 109     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term              181     667
24 months   ki1135781-COHORTS          INDIA                          Full or late term       559    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                 303    1298
24 months   ki1135781-COHORTS          INDIA                          Early term              436    1298
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term       939    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                 517    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term              972    2428
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      4280    8111
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1585    8111
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             2246    8111


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/26ccca70-3123-4ef5-a271-117bdffd3119/447f425d-305e-4a89-8989-0e3228ed1ade/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3381733   -0.7457317    0.0693852
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.8072954   -1.0364317   -0.5781591
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.6972606   -0.9602713   -0.4342498
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9558463   -1.1111110   -0.8005816
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -1.1846176   -1.3149668   -1.0542685
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1025329   -1.3167688   -0.8882969
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.1773128   -1.4632130   -0.8914127
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9354018   -1.0359846   -0.8348190
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6037764   -0.6762406   -0.5313122
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7297431   -0.7543626   -0.7051237
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4454367   -0.7374883   -0.1533851
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5439457   -0.7132926   -0.3745988
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.8750195   -1.3404093   -0.4096296
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2127551    0.0413657    0.3841445
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1346660    0.0538978    0.2154343
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1154268   -0.2192823   -0.0115714
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5942433    0.5335817    0.6549050
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1337391   -0.0236613    0.2911395
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5996334   -0.7168370   -0.4824298
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2907985   -0.3693260   -0.2122711
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5821816   -0.6147585   -0.5496046
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5355079   -0.7070609   -0.3639549
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.8779111   -1.0237726   -0.7320497
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -1.0679164   -1.8294403   -0.3063925
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4476080   -0.6795925   -0.2156235
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7955988   -0.8906927   -0.7005048
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.5949615    0.4473332    0.7425897
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2252765   -0.3248165   -0.1257365
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.6732961   -0.7731411   -0.5734511
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5723513   -0.6299632   -0.5147394
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2936830   -1.3321111   -1.2552549


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0135366   -1.2024730   -0.8246002
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -0.3333051   -0.5209779   -0.1456323
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1101329-Keneba           GAMBIA                         observed             observed          -1.2295969   -1.2924879   -1.1667060
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1448633   -1.3544229   -0.9353037
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0358042   -1.1559527   -0.9156557
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -1.0098535   -1.0741510   -0.9455561
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7417745   -0.7882773   -0.6952718
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7523800   -0.7706132   -0.7341467
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4909778   -0.6451612   -0.3367945
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5999270   -0.7403711   -0.4594828
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7747022   -0.8887874   -0.6606170
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0815655    0.0271217    0.1360092
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1978013   -0.2594875   -0.1361150
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5792439    0.5193388    0.6391490
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1864566    0.1024304    0.2704827
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6460976   -0.7081436   -0.5840516
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2920968   -0.3336448   -0.2505489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5901136   -0.6101529   -0.5700743
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5369143   -0.6415957   -0.4322329
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7414957   -0.8350522   -0.6479392
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -1.0120238   -1.1588493   -0.8651984
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7953404   -0.8531640   -0.7375168
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6874295    0.5756922    0.7991668
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2397001   -0.3082360   -0.1711643
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5717874   -0.6260792   -0.5174955
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6079283   -0.6449298   -0.5709269
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2952842   -1.3192583   -1.2713100


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1266523   -0.3612764    0.1079717
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2062411   -0.3476994   -0.0647828
Birth       ki1000109-EE               PAKISTAN                       optimal              observed           0.3639555    0.1436480    0.5842629
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2883051   -0.4309566   -0.1456535
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0449793   -0.1574313    0.0674727
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0423305   -0.1142689    0.0296080
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1415086   -0.1169541    0.3999714
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0744517   -0.1465392   -0.0023642
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1379982   -0.1948222   -0.0811741
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0226368   -0.0391785   -0.0060952
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0455412   -0.3018370    0.2107547
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0559813   -0.1640208    0.0520582
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.1003172   -0.3560574    0.5566919
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1829928   -0.3351437   -0.0308420
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0531006   -0.1172245    0.0110233
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0823745   -0.1643769   -0.0003720
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0149995   -0.0342233    0.0042244
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0527175   -0.0826995    0.1881345
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0464642   -0.1495967    0.0566683
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0012983   -0.0676691    0.0650725
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0079320   -0.0318698    0.0160057
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0014064   -0.1619501    0.1591373
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.1364154    0.0315160    0.2413148
24 months   ki1000109-EE               PAKISTAN                       optimal              observed           0.0558926   -0.6671193    0.7789045
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1627422   -0.3788635    0.0533791
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed           0.0002584   -0.0744450    0.0749618
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0924680    0.0005204    0.1844157
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0144237   -0.0848672    0.0560199
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.1015088    0.0187489    0.1842686
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0355771   -0.0815971    0.0104429
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0016012   -0.0324962    0.0292938
