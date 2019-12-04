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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        gagebrth             n_cell      n
-------------  -------------------------  -----------------------------  ------------------  -------  -----
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       190    312
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  48    312
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term               74    312
0-3 months     ki1000108-IRC              INDIA                          Full or late term       244    378
0-3 months     ki1000108-IRC              INDIA                          Preterm                  40    378
0-3 months     ki1000108-IRC              INDIA                          Early term               94    378
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term        16    320
0-3 months     ki1000109-EE               PAKISTAN                       Preterm                 253    320
0-3 months     ki1000109-EE               PAKISTAN                       Early term               51    320
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       162    725
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 254    725
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term              309    725
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1177   1910
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 298   1910
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              435   1910
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term       609   1241
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm                 183   1241
0-3 months     ki1101329-Keneba           GAMBIA                         Early term              449   1241
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term      3562   7546
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm                 216   7546
0-3 months     ki1119695-PROBIT           BELARUS                        Early term             3768   7546
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term       155    309
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm                  58    309
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term               96    309
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term       562   1284
0-3 months     ki1135781-COHORTS          INDIA                          Preterm                 285   1284
0-3 months     ki1135781-COHORTS          INDIA                          Early term              437   1284
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      4786   9574
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm                2073   9574
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term             2715   9574
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       183    303
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  46    303
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term               74    303
3-6 months     ki1000108-IRC              INDIA                          Full or late term       244    381
3-6 months     ki1000108-IRC              INDIA                          Preterm                  41    381
3-6 months     ki1000108-IRC              INDIA                          Early term               96    381
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term        15    275
3-6 months     ki1000109-EE               PAKISTAN                       Preterm                 219    275
3-6 months     ki1000109-EE               PAKISTAN                       Early term               41    275
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       152    702
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 249    702
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term              301    702
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       967   1565
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 239   1565
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              359   1565
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term       448    950
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm                 140    950
3-6 months     ki1101329-Keneba           GAMBIA                         Early term              362    950
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term      3134   6702
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm                 187   6702
3-6 months     ki1119695-PROBIT           BELARUS                        Early term             3381   6702
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term       153    309
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm                  62    309
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term               94    309
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term       555   1291
3-6 months     ki1135781-COHORTS          INDIA                          Preterm                 296   1291
3-6 months     ki1135781-COHORTS          INDIA                          Early term              440   1291
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      3153   6006
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1164   6006
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term             1689   6006
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       186    305
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  44    305
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term               75    305
6-9 months     ki1000108-IRC              INDIA                          Full or late term       250    390
6-9 months     ki1000108-IRC              INDIA                          Preterm                  42    390
6-9 months     ki1000108-IRC              INDIA                          Early term               98    390
6-9 months     ki1000109-EE               PAKISTAN                       Full or late term        13    301
6-9 months     ki1000109-EE               PAKISTAN                       Preterm                 239    301
6-9 months     ki1000109-EE               PAKISTAN                       Early term               49    301
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       148    693
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 242    693
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term              303    693
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       869   1400
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 208   1400
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              323   1400
6-9 months     ki1101329-Keneba           GAMBIA                         Full or late term       261    578
6-9 months     ki1101329-Keneba           GAMBIA                         Preterm                 103    578
6-9 months     ki1101329-Keneba           GAMBIA                         Early term              214    578
6-9 months     ki1119695-PROBIT           BELARUS                        Full or late term      2901   6268
6-9 months     ki1119695-PROBIT           BELARUS                        Preterm                 172   6268
6-9 months     ki1119695-PROBIT           BELARUS                        Early term             3195   6268
6-9 months     ki1135781-COHORTS          GUATEMALA                      Full or late term       150    300
6-9 months     ki1135781-COHORTS          GUATEMALA                      Preterm                  60    300
6-9 months     ki1135781-COHORTS          GUATEMALA                      Early term               90    300
6-9 months     ki1135781-COHORTS          INDIA                          Full or late term       501   1190
6-9 months     ki1135781-COHORTS          INDIA                          Preterm                 276   1190
6-9 months     ki1135781-COHORTS          INDIA                          Early term              413   1190
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       186    306
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  44    306
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               76    306
9-12 months    ki1000108-IRC              INDIA                          Full or late term       245    383
9-12 months    ki1000108-IRC              INDIA                          Preterm                  42    383
9-12 months    ki1000108-IRC              INDIA                          Early term               96    383
9-12 months    ki1000109-EE               PAKISTAN                       Full or late term        14    325
9-12 months    ki1000109-EE               PAKISTAN                       Preterm                 256    325
9-12 months    ki1000109-EE               PAKISTAN                       Early term               55    325
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       139    683
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 241    683
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              303    683
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       655   1024
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 140   1024
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              229   1024
9-12 months    ki1101329-Keneba           GAMBIA                         Full or late term       268    573
9-12 months    ki1101329-Keneba           GAMBIA                         Preterm                 107    573
9-12 months    ki1101329-Keneba           GAMBIA                         Early term              198    573
9-12 months    ki1119695-PROBIT           BELARUS                        Full or late term      2928   6267
9-12 months    ki1119695-PROBIT           BELARUS                        Preterm                 171   6267
9-12 months    ki1119695-PROBIT           BELARUS                        Early term             3168   6267
9-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       164    323
9-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm                  64    323
9-12 months    ki1135781-COHORTS          GUATEMALA                      Early term               95    323
9-12 months    ki1135781-COHORTS          INDIA                          Full or late term       450   1071
9-12 months    ki1135781-COHORTS          INDIA                          Preterm                 242   1071
9-12 months    ki1135781-COHORTS          INDIA                          Early term              379   1071
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       194    313
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  45    313
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               74    313
12-15 months   ki1000108-IRC              INDIA                          Full or late term       236    372
12-15 months   ki1000108-IRC              INDIA                          Preterm                  41    372
12-15 months   ki1000108-IRC              INDIA                          Early term               95    372
12-15 months   ki1000109-EE               PAKISTAN                       Full or late term        15    298
12-15 months   ki1000109-EE               PAKISTAN                       Preterm                 239    298
12-15 months   ki1000109-EE               PAKISTAN                       Early term               44    298
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       134    666
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 236    666
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              296    666
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       467    749
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 102    749
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              180    749
12-15 months   ki1101329-Keneba           GAMBIA                         Full or late term       444    925
12-15 months   ki1101329-Keneba           GAMBIA                         Preterm                 149    925
12-15 months   ki1101329-Keneba           GAMBIA                         Early term              332    925
12-15 months   ki1119695-PROBIT           BELARUS                        Full or late term       130    282
12-15 months   ki1119695-PROBIT           BELARUS                        Preterm                   6    282
12-15 months   ki1119695-PROBIT           BELARUS                        Early term              146    282
12-15 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       157    298
12-15 months   ki1135781-COHORTS          GUATEMALA                      Preterm                  59    298
12-15 months   ki1135781-COHORTS          GUATEMALA                      Early term               82    298
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       186    303
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  46    303
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               71    303
15-18 months   ki1000108-IRC              INDIA                          Full or late term       234    364
15-18 months   ki1000108-IRC              INDIA                          Preterm                  37    364
15-18 months   ki1000108-IRC              INDIA                          Early term               93    364
15-18 months   ki1000109-EE               PAKISTAN                       Full or late term        12    277
15-18 months   ki1000109-EE               PAKISTAN                       Preterm                 223    277
15-18 months   ki1000109-EE               PAKISTAN                       Early term               42    277
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       111    605
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 227    605
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              267    605
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       397    630
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                  78    630
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              155    630
15-18 months   ki1101329-Keneba           GAMBIA                         Full or late term       471    931
15-18 months   ki1101329-Keneba           GAMBIA                         Preterm                 139    931
15-18 months   ki1101329-Keneba           GAMBIA                         Early term              321    931
15-18 months   ki1119695-PROBIT           BELARUS                        Full or late term        19     38
15-18 months   ki1119695-PROBIT           BELARUS                        Preterm                   1     38
15-18 months   ki1119695-PROBIT           BELARUS                        Early term               18     38
15-18 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       142    276
15-18 months   ki1135781-COHORTS          GUATEMALA                      Preterm                  56    276
15-18 months   ki1135781-COHORTS          GUATEMALA                      Early term               78    276
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       172    288
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  44    288
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               72    288
18-21 months   ki1000108-IRC              INDIA                          Full or late term       235    361
18-21 months   ki1000108-IRC              INDIA                          Preterm                  35    361
18-21 months   ki1000108-IRC              INDIA                          Early term               91    361
18-21 months   ki1000109-EE               PAKISTAN                       Full or late term        11    255
18-21 months   ki1000109-EE               PAKISTAN                       Preterm                 203    255
18-21 months   ki1000109-EE               PAKISTAN                       Early term               41    255
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        87    547
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 216    547
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              244    547
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         7     10
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0     10
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                3     10
18-21 months   ki1101329-Keneba           GAMBIA                         Full or late term       462    928
18-21 months   ki1101329-Keneba           GAMBIA                         Preterm                 137    928
18-21 months   ki1101329-Keneba           GAMBIA                         Early term              329    928
18-21 months   ki1119695-PROBIT           BELARUS                        Full or late term         7     21
18-21 months   ki1119695-PROBIT           BELARUS                        Preterm                   0     21
18-21 months   ki1119695-PROBIT           BELARUS                        Early term               14     21
18-21 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       139    277
18-21 months   ki1135781-COHORTS          GUATEMALA                      Preterm                  61    277
18-21 months   ki1135781-COHORTS          GUATEMALA                      Early term               77    277
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       177    290
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  44    290
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               69    290
21-24 months   ki1000108-IRC              INDIA                          Full or late term       237    370
21-24 months   ki1000108-IRC              INDIA                          Preterm                  39    370
21-24 months   ki1000108-IRC              INDIA                          Early term               94    370
21-24 months   ki1000109-EE               PAKISTAN                       Full or late term         6    106
21-24 months   ki1000109-EE               PAKISTAN                       Preterm                  83    106
21-24 months   ki1000109-EE               PAKISTAN                       Early term               17    106
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        74    493
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 195    493
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              224    493
21-24 months   ki1101329-Keneba           GAMBIA                         Full or late term       399    819
21-24 months   ki1101329-Keneba           GAMBIA                         Preterm                 119    819
21-24 months   ki1101329-Keneba           GAMBIA                         Early term              301    819
21-24 months   ki1119695-PROBIT           BELARUS                        Full or late term        15     33
21-24 months   ki1119695-PROBIT           BELARUS                        Preterm                   1     33
21-24 months   ki1119695-PROBIT           BELARUS                        Early term               17     33
21-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       150    294
21-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                  62    294
21-24 months   ki1135781-COHORTS          GUATEMALA                      Early term               82    294


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/d1066d4d-9154-4d20-9465-4d1bd0c0899c/cbc849d9-dd64-42b0-874a-09c8faf4b3fa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d1066d4d-9154-4d20-9465-4d1bd0c0899c/cbc849d9-dd64-42b0-874a-09c8faf4b3fa/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d1066d4d-9154-4d20-9465-4d1bd0c0899c/cbc849d9-dd64-42b0-874a-09c8faf4b3fa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.7439289    0.7118850   0.7759729
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7557992    0.6912260   0.8203724
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.7688346    0.7257309   0.8119383
0-3 months     ki1000108-IRC              INDIA                          Full or late term    NA                0.7611325    0.7355687   0.7866963
0-3 months     ki1000108-IRC              INDIA                          Preterm              NA                0.7501591    0.7007938   0.7995244
0-3 months     ki1000108-IRC              INDIA                          Early term           NA                0.7912864    0.7532460   0.8293268
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                0.8660028    0.7232842   1.0087215
0-3 months     ki1000109-EE               PAKISTAN                       Preterm              NA                0.6801162    0.6557639   0.7044685
0-3 months     ki1000109-EE               PAKISTAN                       Early term           NA                0.6993163    0.6413261   0.7573066
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.9009784    0.8703535   0.9316032
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.8764749    0.8528549   0.9000948
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.8825091    0.8595358   0.9054824
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.9248893    0.9119524   0.9378261
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.9057901    0.8774915   0.9340887
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.9286059    0.9063090   0.9509028
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.9317402    0.9128434   0.9506370
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm              NA                0.9047726    0.8735621   0.9359830
0-3 months     ki1101329-Keneba           GAMBIA                         Early term           NA                0.9470028    0.9277903   0.9662153
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.8151318    0.7979556   0.8323080
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm              NA                0.8226956    0.7856131   0.8597780
0-3 months     ki1119695-PROBIT           BELARUS                        Early term           NA                0.8314626    0.8142667   0.8486585
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.7945674    0.7534827   0.8356521
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.7497166    0.6826301   0.8168031
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.7532476    0.7013521   0.8051432
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                0.8178174    0.8014395   0.8341953
0-3 months     ki1135781-COHORTS          INDIA                          Preterm              NA                0.8249077    0.8029357   0.8468797
0-3 months     ki1135781-COHORTS          INDIA                          Early term           NA                0.8262776    0.8093866   0.8431687
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.8565655    0.8513158   0.8618152
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.8366274    0.8281101   0.8451448
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.8525157    0.8451208   0.8599107
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.4720182    0.4453481   0.4986883
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4618842    0.4213123   0.5024560
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.4809782    0.4444908   0.5174656
3-6 months     ki1000108-IRC              INDIA                          Full or late term    NA                0.4642692    0.4415248   0.4870135
3-6 months     ki1000108-IRC              INDIA                          Preterm              NA                0.4481465    0.3801771   0.5161160
3-6 months     ki1000108-IRC              INDIA                          Early term           NA                0.4679930    0.4369557   0.4990304
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                0.4861063    0.4280436   0.5441689
3-6 months     ki1000109-EE               PAKISTAN                       Preterm              NA                0.4724508    0.4512549   0.4936466
3-6 months     ki1000109-EE               PAKISTAN                       Early term           NA                0.4791060    0.4247605   0.5334516
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.5088634    0.4821732   0.5355535
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.5096916    0.4919428   0.5274404
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.4829693    0.4667321   0.4992064
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.4208509    0.4092440   0.4324578
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.4296766    0.4086093   0.4507440
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.4147003    0.3962086   0.4331921
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.4308034    0.4139199   0.4476868
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4545307    0.4292197   0.4798416
3-6 months     ki1101329-Keneba           GAMBIA                         Early term           NA                0.4573209    0.4399388   0.4747030
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.6583022    0.6433791   0.6732253
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm              NA                0.6603567    0.6279302   0.6927831
3-6 months     ki1119695-PROBIT           BELARUS                        Early term           NA                0.6723129    0.6542521   0.6903737
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.4316516    0.4053787   0.4579246
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.4666476    0.4278593   0.5054360
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.4620805    0.4306100   0.4935510
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                0.4782386    0.4648233   0.4916538
3-6 months     ki1135781-COHORTS          INDIA                          Preterm              NA                0.5064696    0.4852984   0.5276407
3-6 months     ki1135781-COHORTS          INDIA                          Early term           NA                0.4961521    0.4812349   0.5110694
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.4330932    0.4271583   0.4390281
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.4712260    0.4623098   0.4801423
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.4522340    0.4449187   0.4595493
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2675310    0.2447497   0.2903123
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2780781    0.2400267   0.3161294
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2359086    0.2093135   0.2625037
6-9 months     ki1000108-IRC              INDIA                          Full or late term    NA                0.2657625    0.2480052   0.2835198
6-9 months     ki1000108-IRC              INDIA                          Preterm              NA                0.2515539    0.2051413   0.2979664
6-9 months     ki1000108-IRC              INDIA                          Early term           NA                0.2562356    0.2283096   0.2841617
6-9 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                0.2989579    0.2063481   0.3915676
6-9 months     ki1000109-EE               PAKISTAN                       Preterm              NA                0.2517089    0.2356297   0.2677881
6-9 months     ki1000109-EE               PAKISTAN                       Early term           NA                0.2474935    0.2087371   0.2862499
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.2430424    0.2181480   0.2679368
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.2812102    0.2642961   0.2981244
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.2685184    0.2527987   0.2842380
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.2562457    0.2450219   0.2674695
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2471111    0.2217762   0.2724459
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2651763    0.2468445   0.2835081
6-9 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1977813    0.1760859   0.2194768
6-9 months     ki1101329-Keneba           GAMBIA                         Preterm              NA                0.2242044    0.1907310   0.2576778
6-9 months     ki1101329-Keneba           GAMBIA                         Early term           NA                0.2011423    0.1752454   0.2270392
6-9 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.4715403    0.4546418   0.4884389
6-9 months     ki1119695-PROBIT           BELARUS                        Preterm              NA                0.4981888    0.4607503   0.5356273
6-9 months     ki1119695-PROBIT           BELARUS                        Early term           NA                0.4807315    0.4641602   0.4973027
6-9 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.2189768    0.1936807   0.2442729
6-9 months     ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.2283170    0.1977431   0.2588909
6-9 months     ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1985464    0.1691663   0.2279265
6-9 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                0.2796534    0.2662177   0.2930890
6-9 months     ki1135781-COHORTS          INDIA                          Preterm              NA                0.2621194    0.2434496   0.2807892
6-9 months     ki1135781-COHORTS          INDIA                          Early term           NA                0.2728414    0.2574050   0.2882779
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2128729    0.1889826   0.2367632
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1870957    0.1389150   0.2352764
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2233658    0.1947235   0.2520081
9-12 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.2189932    0.2009187   0.2370677
9-12 months    ki1000108-IRC              INDIA                          Preterm              NA                0.1893600    0.1344458   0.2442743
9-12 months    ki1000108-IRC              INDIA                          Early term           NA                0.2114609    0.1846886   0.2382333
9-12 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                0.2659874    0.2047645   0.3272103
9-12 months    ki1000109-EE               PAKISTAN                       Preterm              NA                0.2433595    0.2244566   0.2622623
9-12 months    ki1000109-EE               PAKISTAN                       Early term           NA                0.2602757    0.2200581   0.3004932
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1906623    0.1626847   0.2186400
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.2021633    0.1859374   0.2183893
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1977050    0.1829610   0.2124491
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.2095874    0.1972088   0.2219659
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2317177    0.2037069   0.2597284
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1766936    0.1535971   0.1997901
9-12 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1676116    0.1477399   0.1874833
9-12 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1752110    0.1467949   0.2036270
9-12 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.1617288    0.1396593   0.1837982
9-12 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.3760870    0.3498971   0.4022769
9-12 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.4144745    0.3718763   0.4570727
9-12 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.3654280    0.3346368   0.3962191
9-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1455577    0.1271996   0.1639158
9-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1323930    0.0957254   0.1690606
9-12 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1361052    0.1143702   0.1578402
9-12 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.2075593    0.1936432   0.2214753
9-12 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.2321943    0.2110509   0.2533376
9-12 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.2419507    0.2251093   0.2587922
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1528264    0.1341329   0.1715199
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1432474    0.1081217   0.1783731
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1517459    0.1265215   0.1769704
12-15 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1774584    0.1613081   0.1936087
12-15 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1725319    0.1236728   0.2213911
12-15 months   ki1000108-IRC              INDIA                          Early term           NA                0.1899605    0.1656276   0.2142935
12-15 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.1747614    0.1228589   0.2266639
12-15 months   ki1000109-EE               PAKISTAN                       Preterm              NA                0.1380016    0.1174584   0.1585449
12-15 months   ki1000109-EE               PAKISTAN                       Early term           NA                0.1131196    0.0699789   0.1562604
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1767885    0.1482380   0.2053390
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1527533    0.1357815   0.1697251
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1673132    0.1528259   0.1818005
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1683707    0.1539946   0.1827468
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1767062    0.1454192   0.2079932
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1892603    0.1636373   0.2148833
12-15 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1876947    0.1716776   0.2037119
12-15 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1849761    0.1577347   0.2122174
12-15 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.1757025    0.1563901   0.1950148
12-15 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.3093299    0.1472733   0.4713864
12-15 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.3952297   -0.0000111   0.7904706
12-15 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.1485496    0.0601698   0.2369295
12-15 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1322090    0.1123330   0.1520850
12-15 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1603091    0.1187447   0.2018735
12-15 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1681926    0.1393405   0.1970447
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1641257    0.1437365   0.1845148
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1451002    0.1080538   0.1821466
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1316075    0.1084574   0.1547576
15-18 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1634894    0.1462794   0.1806993
15-18 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1691480    0.1151059   0.2231902
15-18 months   ki1000108-IRC              INDIA                          Early term           NA                0.1548468    0.1294113   0.1802823
15-18 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.0770768   -0.0106249   0.1647784
15-18 months   ki1000109-EE               PAKISTAN                       Preterm              NA                0.0921255    0.0764359   0.1078151
15-18 months   ki1000109-EE               PAKISTAN                       Early term           NA                0.0754137    0.0398219   0.1110055
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1622301    0.1372769   0.1871833
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1634983    0.1475556   0.1794411
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1588116    0.1421257   0.1754975
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1723705    0.1542300   0.1905110
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1667549    0.1282738   0.2052359
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1658109    0.1341013   0.1975205
15-18 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1505124    0.1338811   0.1671438
15-18 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1658333    0.1366264   0.1950403
15-18 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.1759198    0.1550178   0.1968217
15-18 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1168628    0.0921725   0.1415531
15-18 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1182887    0.0771034   0.1594739
15-18 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1195940    0.0866282   0.1525599
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1324870    0.1101361   0.1548379
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1476214    0.1196953   0.1755476
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1407058    0.1099961   0.1714156
18-21 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1573405    0.1399407   0.1747403
18-21 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1238566    0.0877537   0.1599596
18-21 months   ki1000108-IRC              INDIA                          Early term           NA                0.1789630    0.1525278   0.2053982
18-21 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.1292412    0.0520038   0.2064786
18-21 months   ki1000109-EE               PAKISTAN                       Preterm              NA                0.1269400    0.1088744   0.1450057
18-21 months   ki1000109-EE               PAKISTAN                       Early term           NA                0.1429919    0.1075938   0.1783899
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1358309    0.1119008   0.1597609
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1379973    0.1191270   0.1568676
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1492247    0.1342160   0.1642333
18-21 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1468806    0.1294879   0.1642733
18-21 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1688552    0.1377341   0.1999762
18-21 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.1567815    0.1361678   0.1773952
18-21 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1448508    0.1189485   0.1707531
18-21 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1905296    0.1495418   0.2315174
18-21 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1387952    0.1079706   0.1696198
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1480669    0.1282114   0.1679224
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1475022    0.1110456   0.1839587
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1484565    0.1224791   0.1744339
21-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1787104    0.1606817   0.1967390
21-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1723876    0.1327726   0.2120026
21-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1757060    0.1475296   0.2038823
21-24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.2327092    0.1994615   0.2659569
21-24 months   ki1000109-EE               PAKISTAN                       Preterm              NA                0.1880900    0.1652731   0.2109069
21-24 months   ki1000109-EE               PAKISTAN                       Early term           NA                0.2052866    0.1248026   0.2857706
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1759717    0.1438050   0.2081384
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1708266    0.1513432   0.1903100
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1784222    0.1593717   0.1974728
21-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1786726    0.1613733   0.1959719
21-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1397813    0.1034751   0.1760875
21-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.1707239    0.1502399   0.1912079
21-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1466614    0.1214857   0.1718371
21-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1575506    0.1210599   0.1940412
21-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.2031279    0.1722932   0.2339627


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7516622   0.7274683   0.7758562
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                0.7674699   0.7476936   0.7872461
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.6924705   0.6695203   0.7154208
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9227558   0.9123181   0.9331936
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.9332856   0.9207924   0.9457788
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.8235029   0.8073992   0.8396066
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7733116   0.7441752   0.8024480
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.8222706   0.8118654   0.8326757
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8511000   0.8469665   0.8552335
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4726680   0.4532451   0.4920908
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                0.4634725   0.4453856   0.4815594
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.4741878   0.4551933   0.4931824
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4207878   0.4118531   0.4297226
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.4444046   0.4333662   0.4554430
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.6654276   0.6499538   0.6809014
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4479302   0.4299099   0.4659504
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.4908167   0.4817024   0.4999310
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4458663   0.4414933   0.4502394
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2612765   0.2448836   0.2776695
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                0.2618384   0.2475527   0.2761242
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.2530633   0.2382291   0.2678975
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2569490   0.2479670   0.2659309
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.2037343   0.1887640   0.2187046
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.4769566   0.4617272   0.4921860
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2147157   0.1980829   0.2313485
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.2732225   0.2643008   0.2821442
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2117725   0.1941370   0.2294079
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                0.2138556   0.1991647   0.2285465
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2471969   0.2305945   0.2637993
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2052569   0.1950037   0.2155101
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1669979   0.1538507   0.1801450
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.3717463   0.3460555   0.3974370
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1401691   0.1267187   0.1536194
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2252960   0.2156318   0.2349602
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1511938   0.1372136   0.1651740
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.1801082   0.1669568   0.1932596
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1361781   0.1182651   0.1540911
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1745260   0.1628296   0.1862225
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1829526   0.1717037   0.1942014
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2279167   0.1049452   0.3508882
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1476740   0.1320553   0.1632926
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1536175   0.1387798   0.1684552
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.1618564   0.1478915   0.1758213
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0889396   0.0746678   0.1032114
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1700614   0.1554225   0.1847002
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1615601   0.1496308   0.1734893
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1179240   0.1000911   0.1357569
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1368539   0.1208612   0.1528466
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.1595447   0.1458583   0.1732311
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1296202   0.1137821   0.1454583
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1536348   0.1413979   0.1658718
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1532267   0.1350774   0.1713760
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1480739   0.1333884   0.1627594
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1772806   0.1630651   0.1914962
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1933736   0.1711433   0.2156039
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1701004   0.1575973   0.1826036
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1647069   0.1472173   0.1821965


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0118703   -0.0602165    0.0839571
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0249057   -0.0288042    0.0786155
0-3 months     ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.0109734   -0.0665651    0.0446183
0-3 months     ki1000108-IRC              INDIA                          Early term           Full or late term     0.0301539   -0.0156781    0.0759860
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.1858866   -0.3306680   -0.0411053
0-3 months     ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.1666865   -0.3207367   -0.0126362
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.0245035   -0.0631788    0.0141718
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.0184693   -0.0567531    0.0198146
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.0190992   -0.0502146    0.0120163
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0037166   -0.0220615    0.0294948
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.0269677   -0.0634530    0.0095177
0-3 months     ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0152626   -0.0116857    0.0422109
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0075638   -0.0326618    0.0477893
0-3 months     ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0163308    0.0046449    0.0280166
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0448508   -0.1235181    0.0338165
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0413197   -0.1075097    0.0248702
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0070903   -0.0203142    0.0344948
0-3 months     ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0084602   -0.0150673    0.0319877
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.0199381   -0.0296247   -0.0102515
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0040498   -0.0127677    0.0046680
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0101341   -0.0586868    0.0384187
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0089600   -0.0362354    0.0541553
3-6 months     ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.0161226   -0.0877966    0.0555513
3-6 months     ki1000108-IRC              INDIA                          Early term           Full or late term     0.0037239   -0.0347550    0.0422028
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.0136555   -0.0754660    0.0481549
3-6 months     ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.0070003   -0.0865283    0.0725278
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0008282   -0.0312246    0.0328811
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.0258941   -0.0571353    0.0053471
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0088257   -0.0152274    0.0328789
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0061506   -0.0279832    0.0156821
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0237273   -0.0066979    0.0541526
3-6 months     ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0265175    0.0022856    0.0507495
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0020544   -0.0263828    0.0304917
3-6 months     ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0140107    0.0020750    0.0259464
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0349960   -0.0118527    0.0818447
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0304289   -0.0105670    0.0714247
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0282310    0.0031674    0.0532946
3-6 months     ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0179136   -0.0021487    0.0379758
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0381328    0.0279038    0.0483618
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0191407    0.0100623    0.0282191
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0105471   -0.0338026    0.0548968
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0316224   -0.0666407    0.0033960
6-9 months     ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.0142087   -0.0639022    0.0354848
6-9 months     ki1000108-IRC              INDIA                          Early term           Full or late term    -0.0095269   -0.0426205    0.0235667
6-9 months     ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.0472490   -0.1412442    0.0467463
6-9 months     ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.0514644   -0.1518567    0.0489280
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0381678    0.0080710    0.0682646
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0254759   -0.0039662    0.0549181
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.0091346   -0.0368444    0.0185751
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0089306   -0.0125642    0.0304254
6-9 months     ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0264231   -0.0134662    0.0663124
6-9 months     ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0033610   -0.0304228    0.0371447
6-9 months     ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0266485   -0.0123519    0.0656488
6-9 months     ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0091911   -0.0039992    0.0223815
6-9 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0093402   -0.0303417    0.0490222
6-9 months     ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0204304   -0.0592001    0.0183392
6-9 months     ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.0175340   -0.0405357    0.0054677
6-9 months     ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0068119   -0.0272766    0.0136527
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0257772   -0.0795557    0.0280013
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0104929   -0.0268050    0.0477907
9-12 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.0296332   -0.0874455    0.0281792
9-12 months    ki1000108-IRC              INDIA                          Early term           Full or late term    -0.0075322   -0.0398347    0.0247702
9-12 months    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.0226280   -0.0867026    0.0414467
9-12 months    ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.0057117   -0.0789626    0.0675392
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0115010   -0.0208414    0.0438433
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0070427   -0.0245822    0.0386676
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0221303   -0.0084937    0.0527543
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0328937   -0.0590983   -0.0066892
9-12 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0075994   -0.0270756    0.0422743
9-12 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.0058828   -0.0355804    0.0238147
9-12 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0383874    0.0033755    0.0733994
9-12 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.0106591   -0.0371374    0.0158193
9-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0131647   -0.0541712    0.0278418
9-12 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0094525   -0.0379030    0.0189979
9-12 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0246350   -0.0006770    0.0499470
9-12 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0343915    0.0125445    0.0562385
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0095790   -0.0493692    0.0302113
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0010805   -0.0324767    0.0303158
12-15 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.0049265   -0.0563857    0.0465327
12-15 months   ki1000108-IRC              INDIA                          Early term           Full or late term     0.0125021   -0.0167028    0.0417070
12-15 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.0367598   -0.0925800    0.0190604
12-15 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.0616418   -0.1291325    0.0058489
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.0240352   -0.0572493    0.0091789
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.0094753   -0.0414912    0.0225405
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0083354   -0.0260963    0.0427672
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0208896   -0.0084909    0.0502700
12-15 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.0027186   -0.0343199    0.0288826
12-15 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.0119923   -0.0370824    0.0130979
12-15 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0858999   -0.2709261    0.4427258
12-15 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.1607802   -0.2913441   -0.0302163
12-15 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0281001   -0.0179722    0.0741724
12-15 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0359836    0.0009479    0.0710193
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0190254   -0.0613120    0.0232611
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0325182   -0.0633669   -0.0016695
15-18 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0056587   -0.0510576    0.0623749
15-18 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.0086425   -0.0393532    0.0220681
15-18 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.0150487   -0.0740453    0.1041427
15-18 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.0016631   -0.0963116    0.0929855
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0012682   -0.0283432    0.0308796
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.0034185   -0.0334365    0.0265995
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.0056156   -0.0481581    0.0369270
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0065596   -0.0430914    0.0299723
15-18 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0153209   -0.0182894    0.0489311
15-18 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0254073   -0.0013040    0.0521186
15-18 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0014259   -0.0465933    0.0494450
15-18 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0027312   -0.0384556    0.0439181
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0151344   -0.0206347    0.0509036
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0082189   -0.0297634    0.0462011
18-21 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.0334838   -0.0735610    0.0065933
18-21 months   ki1000108-IRC              INDIA                          Early term           Full or late term     0.0216225   -0.0100251    0.0532702
18-21 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.0023011   -0.0816232    0.0770209
18-21 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.0137507   -0.0712119    0.0987132
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0021665   -0.0283087    0.0326416
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0133938   -0.0148535    0.0416411
18-21 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0219745   -0.0136769    0.0576260
18-21 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0099009   -0.0170700    0.0368718
18-21 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0456788   -0.0028075    0.0941652
18-21 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0060556   -0.0463182    0.0342071
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0005648   -0.0420777    0.0409482
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0003895   -0.0323070    0.0330861
21-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.0063228   -0.0498473    0.0372017
21-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.0030044   -0.0364549    0.0304462
21-24 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.0446192   -0.0849431   -0.0042952
21-24 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.0274226   -0.1145035    0.0596583
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.0051451   -0.0427523    0.0324621
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0024506   -0.0349342    0.0398353
21-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.0388913   -0.0791082    0.0013257
21-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.0079487   -0.0347602    0.0188629
21-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0108892   -0.0334434    0.0552218
21-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0564666    0.0166596    0.0962736


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0077333   -0.0112813    0.0267479
0-3 months     ki1000108-IRC              INDIA                          Full or late term    NA                 0.0063374   -0.0078374    0.0205122
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.1735323   -0.3108584   -0.0362062
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0164564   -0.0434818    0.0105690
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0021334   -0.0105025    0.0062357
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0015454   -0.0112100    0.0143007
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0083711    0.0014991    0.0152431
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0212558   -0.0502983    0.0077867
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0044532   -0.0074503    0.0163566
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0054655   -0.0092285   -0.0017025
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0006497   -0.0144947    0.0157942
3-6 months     ki1000108-IRC              INDIA                          Full or late term    NA                -0.0007967   -0.0142821    0.0126887
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0119185   -0.0699209    0.0460840
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0108090   -0.0337505    0.0121326
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0000631   -0.0069960    0.0068699
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0136012    0.0018518    0.0253507
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0071254    0.0006327    0.0136181
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0162785   -0.0019267    0.0344838
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0125781    0.0021713    0.0229849
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0127731    0.0090399    0.0165064
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0062544   -0.0186932    0.0061843
6-9 months     ki1000108-IRC              INDIA                          Full or late term    NA                -0.0039241   -0.0146547    0.0068065
6-9 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0458945   -0.1356486    0.0438595
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0244673    0.0028688    0.0460658
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0007033   -0.0063863    0.0077928
6-9 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0059530   -0.0104699    0.0223759
6-9 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0054163   -0.0020807    0.0129132
6-9 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0042611   -0.0208939    0.0123717
6-9 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0064308   -0.0168287    0.0039670
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0011005   -0.0148084    0.0126075
9-12 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.0051376   -0.0162979    0.0060228
9-12 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0187905   -0.0796260    0.0420450
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0071825   -0.0167387    0.0311038
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0043305   -0.0122255    0.0035645
9-12 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0006137   -0.0146973    0.0134698
9-12 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0043408   -0.0183758    0.0096943
9-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0053886   -0.0186436    0.0078664
9-12 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0177367    0.0065870    0.0288865
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0016326   -0.0122020    0.0089368
12-15 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0026498   -0.0074914    0.0127909
12-15 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0385833   -0.0909623    0.0137956
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0127282   -0.0371868    0.0117304
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0061553   -0.0031054    0.0154160
12-15 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0047422   -0.0164383    0.0069539
12-15 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0814132   -0.1456151   -0.0172113
12-15 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0154650    0.0005408    0.0303891
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0105081   -0.0217103    0.0006941
15-18 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0016329   -0.0121398    0.0088740
15-18 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0118629   -0.0731597    0.0968855
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0010328   -0.0235090    0.0214434
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0023091   -0.0136507    0.0090324
15-18 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0110476   -0.0007439    0.0228391
15-18 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0010612   -0.0162692    0.0183915
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0043669   -0.0082279    0.0169617
18-21 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0022042   -0.0075889    0.0119973
18-21 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0003790   -0.0751312    0.0758892
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0068301   -0.0156548    0.0293149
18-21 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0067542   -0.0055359    0.0190443
18-21 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0083759   -0.0097066    0.0264584
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0000070   -0.0113357    0.0113497
21-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0014297   -0.0119522    0.0090927
21-24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0393356   -0.0777343   -0.0009370
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0009216   -0.0306167    0.0287735
21-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0085722   -0.0213785    0.0042342
21-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0180455    0.0009297    0.0351613
