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

**Outcome Variable:** y_rate_haz

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
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term        54     87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  11     87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term               22     87
0-3 months     ki1000108-IRC              INDIA                          Full or late term       230    359
0-3 months     ki1000108-IRC              INDIA                          Preterm                  36    359
0-3 months     ki1000108-IRC              INDIA                          Early term               93    359
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term        15    303
0-3 months     ki1000109-EE               PAKISTAN                       Preterm                 238    303
0-3 months     ki1000109-EE               PAKISTAN                       Early term               50    303
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       162    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 252    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term              307    721
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term       598   1232
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm                 183   1232
0-3 months     ki1101329-Keneba           GAMBIA                         Early term              451   1232
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term      3559   7539
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm                 216   7539
0-3 months     ki1119695-PROBIT           BELARUS                        Early term             3764   7539
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term       128    267
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm                  50    267
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term               89    267
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term       561   1274
0-3 months     ki1135781-COHORTS          INDIA                          Preterm                 279   1274
0-3 months     ki1135781-COHORTS          INDIA                          Early term              434   1274
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      4690   9381
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm                2027   9381
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term             2664   9381
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       174    288
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  44    288
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term               70    288
3-6 months     ki1000108-IRC              INDIA                          Full or late term       242    379
3-6 months     ki1000108-IRC              INDIA                          Preterm                  42    379
3-6 months     ki1000108-IRC              INDIA                          Early term               95    379
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term        15    280
3-6 months     ki1000109-EE               PAKISTAN                       Preterm                 223    280
3-6 months     ki1000109-EE               PAKISTAN                       Early term               42    280
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       152    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 246    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term              297    695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       964   1563
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 239   1563
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              360   1563
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term       447    949
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm                 140    949
3-6 months     ki1101329-Keneba           GAMBIA                         Early term              362    949
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term      3130   6696
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm                 187   6696
3-6 months     ki1119695-PROBIT           BELARUS                        Early term             3379   6696
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term       153    309
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm                  62    309
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term               94    309
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term       554   1280
3-6 months     ki1135781-COHORTS          INDIA                          Preterm                 289   1280
3-6 months     ki1135781-COHORTS          INDIA                          Early term              437   1280
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      3123   5951
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1152   5951
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term             1676   5951
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       180    293
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  43    293
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term               70    293
6-9 months     ki1000108-IRC              INDIA                          Full or late term       249    388
6-9 months     ki1000108-IRC              INDIA                          Preterm                  42    388
6-9 months     ki1000108-IRC              INDIA                          Early term               97    388
6-9 months     ki1000109-EE               PAKISTAN                       Full or late term        13    304
6-9 months     ki1000109-EE               PAKISTAN                       Preterm                 242    304
6-9 months     ki1000109-EE               PAKISTAN                       Early term               49    304
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       147    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 241    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term              300    688
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       863   1393
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 207   1393
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              323   1393
6-9 months     ki1101329-Keneba           GAMBIA                         Full or late term       261    578
6-9 months     ki1101329-Keneba           GAMBIA                         Preterm                 103    578
6-9 months     ki1101329-Keneba           GAMBIA                         Early term              214    578
6-9 months     ki1119695-PROBIT           BELARUS                        Full or late term      2898   6262
6-9 months     ki1119695-PROBIT           BELARUS                        Preterm                 172   6262
6-9 months     ki1119695-PROBIT           BELARUS                        Early term             3192   6262
6-9 months     ki1135781-COHORTS          GUATEMALA                      Full or late term       150    300
6-9 months     ki1135781-COHORTS          GUATEMALA                      Preterm                  61    300
6-9 months     ki1135781-COHORTS          GUATEMALA                      Early term               89    300
6-9 months     ki1135781-COHORTS          INDIA                          Full or late term       507   1194
6-9 months     ki1135781-COHORTS          INDIA                          Preterm                 276   1194
6-9 months     ki1135781-COHORTS          INDIA                          Early term              411   1194
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       179    296
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  44    296
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               73    296
9-12 months    ki1000108-IRC              INDIA                          Full or late term       244    381
9-12 months    ki1000108-IRC              INDIA                          Preterm                  42    381
9-12 months    ki1000108-IRC              INDIA                          Early term               95    381
9-12 months    ki1000109-EE               PAKISTAN                       Full or late term        14    326
9-12 months    ki1000109-EE               PAKISTAN                       Preterm                 257    326
9-12 months    ki1000109-EE               PAKISTAN                       Early term               55    326
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       137    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 239    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              298    674
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       653   1021
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 139   1021
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              229   1021
9-12 months    ki1101329-Keneba           GAMBIA                         Full or late term       268    573
9-12 months    ki1101329-Keneba           GAMBIA                         Preterm                 107    573
9-12 months    ki1101329-Keneba           GAMBIA                         Early term              198    573
9-12 months    ki1119695-PROBIT           BELARUS                        Full or late term      2928   6264
9-12 months    ki1119695-PROBIT           BELARUS                        Preterm                 171   6264
9-12 months    ki1119695-PROBIT           BELARUS                        Early term             3165   6264
9-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       163    321
9-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm                  64    321
9-12 months    ki1135781-COHORTS          GUATEMALA                      Early term               94    321
9-12 months    ki1135781-COHORTS          INDIA                          Full or late term       453   1072
9-12 months    ki1135781-COHORTS          INDIA                          Preterm                 242   1072
9-12 months    ki1135781-COHORTS          INDIA                          Early term              377   1072
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       190    308
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  45    308
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               73    308
12-15 months   ki1000108-IRC              INDIA                          Full or late term       235    370
12-15 months   ki1000108-IRC              INDIA                          Preterm                  41    370
12-15 months   ki1000108-IRC              INDIA                          Early term               94    370
12-15 months   ki1000109-EE               PAKISTAN                       Full or late term        15    297
12-15 months   ki1000109-EE               PAKISTAN                       Preterm                 238    297
12-15 months   ki1000109-EE               PAKISTAN                       Early term               44    297
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       133    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 234    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              293    660
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       466    748
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 101    748
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              181    748
12-15 months   ki1101329-Keneba           GAMBIA                         Full or late term       444    925
12-15 months   ki1101329-Keneba           GAMBIA                         Preterm                 149    925
12-15 months   ki1101329-Keneba           GAMBIA                         Early term              332    925
12-15 months   ki1119695-PROBIT           BELARUS                        Full or late term       130    283
12-15 months   ki1119695-PROBIT           BELARUS                        Preterm                   6    283
12-15 months   ki1119695-PROBIT           BELARUS                        Early term              147    283
12-15 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       155    296
12-15 months   ki1135781-COHORTS          GUATEMALA                      Preterm                  59    296
12-15 months   ki1135781-COHORTS          GUATEMALA                      Early term               82    296
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       183    299
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  46    299
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               70    299
15-18 months   ki1000108-IRC              INDIA                          Full or late term       234    363
15-18 months   ki1000108-IRC              INDIA                          Preterm                  37    363
15-18 months   ki1000108-IRC              INDIA                          Early term               92    363
15-18 months   ki1000109-EE               PAKISTAN                       Full or late term        12    278
15-18 months   ki1000109-EE               PAKISTAN                       Preterm                 224    278
15-18 months   ki1000109-EE               PAKISTAN                       Early term               42    278
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       111    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 226    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              267    604
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term       397    630
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                  78    630
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              155    630
15-18 months   ki1101329-Keneba           GAMBIA                         Full or late term       469    929
15-18 months   ki1101329-Keneba           GAMBIA                         Preterm                 139    929
15-18 months   ki1101329-Keneba           GAMBIA                         Early term              321    929
15-18 months   ki1119695-PROBIT           BELARUS                        Full or late term        18     37
15-18 months   ki1119695-PROBIT           BELARUS                        Preterm                   1     37
15-18 months   ki1119695-PROBIT           BELARUS                        Early term               18     37
15-18 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       139    272
15-18 months   ki1135781-COHORTS          GUATEMALA                      Preterm                  55    272
15-18 months   ki1135781-COHORTS          GUATEMALA                      Early term               78    272
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       167    283
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  44    283
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               72    283
18-21 months   ki1000108-IRC              INDIA                          Full or late term       235    360
18-21 months   ki1000108-IRC              INDIA                          Preterm                  35    360
18-21 months   ki1000108-IRC              INDIA                          Early term               90    360
18-21 months   ki1000109-EE               PAKISTAN                       Full or late term        11    254
18-21 months   ki1000109-EE               PAKISTAN                       Preterm                 202    254
18-21 months   ki1000109-EE               PAKISTAN                       Early term               41    254
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        87    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 215    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              244    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         6      8
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0      8
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                2      8
18-21 months   ki1101329-Keneba           GAMBIA                         Full or late term       461    927
18-21 months   ki1101329-Keneba           GAMBIA                         Preterm                 137    927
18-21 months   ki1101329-Keneba           GAMBIA                         Early term              329    927
18-21 months   ki1119695-PROBIT           BELARUS                        Full or late term         7     23
18-21 months   ki1119695-PROBIT           BELARUS                        Preterm                   0     23
18-21 months   ki1119695-PROBIT           BELARUS                        Early term               16     23
18-21 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       136    269
18-21 months   ki1135781-COHORTS          GUATEMALA                      Preterm                  57    269
18-21 months   ki1135781-COHORTS          GUATEMALA                      Early term               76    269
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       174    287
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  44    287
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               69    287
21-24 months   ki1000108-IRC              INDIA                          Full or late term       237    370
21-24 months   ki1000108-IRC              INDIA                          Preterm                  39    370
21-24 months   ki1000108-IRC              INDIA                          Early term               94    370
21-24 months   ki1000109-EE               PAKISTAN                       Full or late term         6    106
21-24 months   ki1000109-EE               PAKISTAN                       Preterm                  83    106
21-24 months   ki1000109-EE               PAKISTAN                       Early term               17    106
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        73    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 195    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              222    490
21-24 months   ki1101329-Keneba           GAMBIA                         Full or late term       399    818
21-24 months   ki1101329-Keneba           GAMBIA                         Preterm                 118    818
21-24 months   ki1101329-Keneba           GAMBIA                         Early term              301    818
21-24 months   ki1119695-PROBIT           BELARUS                        Full or late term        15     32
21-24 months   ki1119695-PROBIT           BELARUS                        Preterm                   1     32
21-24 months   ki1119695-PROBIT           BELARUS                        Early term               16     32
21-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       147    288
21-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                  60    288
21-24 months   ki1135781-COHORTS          GUATEMALA                      Early term               81    288


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/ffa8374c-46a8-4864-8772-bad2e2445ba4/73937a79-7cde-43ab-ba08-2160dfaf3654/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ffa8374c-46a8-4864-8772-bad2e2445ba4/73937a79-7cde-43ab-ba08-2160dfaf3654/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ffa8374c-46a8-4864-8772-bad2e2445ba4/73937a79-7cde-43ab-ba08-2160dfaf3654/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1005740   -0.2365546    0.0354067
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.1813695   -0.5285593    0.1658202
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                 0.0236636   -0.1515324    0.1988597
0-3 months     ki1000108-IRC              INDIA                          Full or late term    NA                -0.2095029   -0.2809204   -0.1380854
0-3 months     ki1000108-IRC              INDIA                          Preterm              NA                -0.2579112   -0.4259374   -0.0898851
0-3 months     ki1000108-IRC              INDIA                          Early term           NA                -0.3533265   -0.4583057   -0.2483474
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.2887636   -0.6050317    0.0275045
0-3 months     ki1000109-EE               PAKISTAN                       Preterm              NA                -0.2415296   -0.2851141   -0.1979451
0-3 months     ki1000109-EE               PAKISTAN                       Early term           NA                -0.0731905   -0.1856031    0.0392221
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.2084524   -0.2470203   -0.1698844
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.2153018   -0.2433750   -0.1872285
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.2563963   -0.2831002   -0.2296924
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.3088979   -0.3435278   -0.2742680
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.1891985   -0.2602443   -0.1181526
0-3 months     ki1101329-Keneba           GAMBIA                         Early term           NA                -0.2888544   -0.3231035   -0.2546053
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.4744212   -0.5685421   -0.3803004
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.3935608   -0.5303887   -0.2567328
0-3 months     ki1119695-PROBIT           BELARUS                        Early term           NA                -0.4561011   -0.5458341   -0.3663681
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.5841551   -0.6324279   -0.5358824
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.5362863   -0.6322892   -0.4402834
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.5741285   -0.6341579   -0.5140991
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0799041   -0.1029517   -0.0568565
0-3 months     ki1135781-COHORTS          INDIA                          Preterm              NA                -0.0560197   -0.0898313   -0.0222082
0-3 months     ki1135781-COHORTS          INDIA                          Early term           NA                -0.0437759   -0.0719170   -0.0156348
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0323355    0.0226020    0.0420689
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                 0.0838611    0.0700960    0.0976262
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                 0.0707609    0.0574376    0.0840843
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1420513   -0.2095460   -0.0745566
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                 0.0029364   -0.1285345    0.1344073
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.0453563   -0.1267659    0.0360533
3-6 months     ki1000108-IRC              INDIA                          Full or late term    NA                -0.0657194   -0.1034361   -0.0280028
3-6 months     ki1000108-IRC              INDIA                          Preterm              NA                -0.0520939   -0.1425819    0.0383941
3-6 months     ki1000108-IRC              INDIA                          Early term           NA                -0.0222761   -0.0876015    0.0430493
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0032091   -0.0676247    0.0612066
3-6 months     ki1000109-EE               PAKISTAN                       Preterm              NA                 0.0766490    0.0458818    0.1074162
3-6 months     ki1000109-EE               PAKISTAN                       Early term           NA                 0.0363786   -0.0394906    0.1122478
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0089165   -0.0460645    0.0282315
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                 0.0839241    0.0564066    0.1114416
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.0022965   -0.0270494    0.0224563
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0974512   -0.1185015   -0.0764008
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0604407   -0.1069128   -0.0139686
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.0715444   -0.1076676   -0.0354211
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0628621   -0.0957419   -0.0299822
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm              NA                 0.0183079   -0.0343066    0.0709223
3-6 months     ki1101329-Keneba           GAMBIA                         Early term           NA                -0.0310623   -0.0617487   -0.0003759
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0342233   -0.0027380    0.0711846
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.0702284   -0.0003968    0.1408536
3-6 months     ki1119695-PROBIT           BELARUS                        Early term           NA                 0.0583997    0.0292139    0.0875855
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1399550   -0.1727632   -0.1071468
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.1722306   -0.2387190   -0.1057423
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.1138027   -0.1545397   -0.0730657
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0834717   -0.1024659   -0.0644774
3-6 months     ki1135781-COHORTS          INDIA                          Preterm              NA                -0.0396740   -0.0675844   -0.0117635
3-6 months     ki1135781-COHORTS          INDIA                          Early term           NA                -0.0479734   -0.0702153   -0.0257315
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0227884   -0.0327118   -0.0128649
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                 0.0523931    0.0366396    0.0681466
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                 0.0113675   -0.0003968    0.0231318
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0928988   -0.1343194   -0.0514781
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.0269224   -0.1380987    0.0842539
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.0821461   -0.1560352   -0.0082571
6-9 months     ki1000108-IRC              INDIA                          Full or late term    NA                -0.0199467   -0.0467382    0.0068448
6-9 months     ki1000108-IRC              INDIA                          Preterm              NA                -0.0097687   -0.0864747    0.0669374
6-9 months     ki1000108-IRC              INDIA                          Early term           NA                -0.0077668   -0.0533991    0.0378654
6-9 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.1249235   -0.2113719   -0.0384751
6-9 months     ki1000109-EE               PAKISTAN                       Preterm              NA                -0.0819882   -0.1062339   -0.0577425
6-9 months     ki1000109-EE               PAKISTAN                       Early term           NA                -0.0885098   -0.1276844   -0.0493353
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0408426   -0.0696512   -0.0120340
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.0315643   -0.0536738   -0.0094549
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.0265580   -0.0449869   -0.0081292
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0486476   -0.0685995   -0.0286957
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0922508   -0.1345515   -0.0499501
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.0209525   -0.0562880    0.0143830
6-9 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0013056   -0.0460015    0.0433902
6-9 months     ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.0331002   -0.0834654    0.0172650
6-9 months     ki1101329-Keneba           GAMBIA                         Early term           NA                -0.0027555   -0.0455417    0.0400308
6-9 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0523562    0.0318100    0.0729025
6-9 months     ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.1284707    0.0317935    0.2251479
6-9 months     ki1119695-PROBIT           BELARUS                        Early term           NA                 0.0635057    0.0412182    0.0857933
6-9 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1396686   -0.1673982   -0.1119389
6-9 months     ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.1018055   -0.1438157   -0.0597953
6-9 months     ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.1312084   -0.1690453   -0.0933714
6-9 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.1066500   -0.1227450   -0.0905549
6-9 months     ki1135781-COHORTS          INDIA                          Preterm              NA                -0.0805469   -0.1039312   -0.0571625
6-9 months     ki1135781-COHORTS          INDIA                          Early term           NA                -0.0850669   -0.1050461   -0.0650877
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1079818   -0.1500315   -0.0659322
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.1375999   -0.1987199   -0.0764799
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.1300877   -0.1779746   -0.0822008
9-12 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.0445400   -0.0669685   -0.0221115
9-12 months    ki1000108-IRC              INDIA                          Preterm              NA                -0.0352604   -0.0877891    0.0172684
9-12 months    ki1000108-IRC              INDIA                          Early term           NA                -0.0191521   -0.0512329    0.0129288
9-12 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0599005   -0.1320863    0.0122854
9-12 months    ki1000109-EE               PAKISTAN                       Preterm              NA                -0.1011025   -0.1178740   -0.0843311
9-12 months    ki1000109-EE               PAKISTAN                       Early term           NA                -0.1121022   -0.1451293   -0.0790750
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0523354   -0.0747847   -0.0298862
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.0308768   -0.0508018   -0.0109519
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.0287528   -0.0444988   -0.0130068
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0698021   -0.0876033   -0.0520010
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0611163   -0.1034756   -0.0187570
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.0716855   -0.1037327   -0.0396384
9-12 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1057591   -0.1428526   -0.0686656
9-12 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.1045154   -0.1367412   -0.0722895
9-12 months    ki1101329-Keneba           GAMBIA                         Early term           NA                -0.1089461   -0.1402238   -0.0776685
9-12 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0292692    0.0074717    0.0510666
9-12 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.0893610    0.0292461    0.1494759
9-12 months    ki1119695-PROBIT           BELARUS                        Early term           NA                 0.0353213    0.0085409    0.0621016
9-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0813236   -0.1034711   -0.0591761
9-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.1000098   -0.1376584   -0.0623611
9-12 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.0871934   -0.1152533   -0.0591335
9-12 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0844478   -0.1003104   -0.0685851
9-12 months    ki1135781-COHORTS          INDIA                          Preterm              NA                -0.0916976   -0.1132131   -0.0701821
9-12 months    ki1135781-COHORTS          INDIA                          Early term           NA                -0.0891568   -0.1079196   -0.0703941
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0679570   -0.1058074   -0.0301067
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.0598816   -0.1324496    0.0126863
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.1014806   -0.1520683   -0.0508929
12-15 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0448083   -0.0681817   -0.0214348
12-15 months   ki1000108-IRC              INDIA                          Preterm              NA                -0.0252217   -0.0804246    0.0299813
12-15 months   ki1000108-IRC              INDIA                          Early term           NA                -0.0503256   -0.0762642   -0.0243870
12-15 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0295235   -0.0350218    0.0940688
12-15 months   ki1000109-EE               PAKISTAN                       Preterm              NA                 0.0024360   -0.0121042    0.0169763
12-15 months   ki1000109-EE               PAKISTAN                       Early term           NA                -0.0264286   -0.0555682    0.0027111
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0393268   -0.0617598   -0.0168937
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.0286376   -0.0446701   -0.0126051
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.0456212   -0.0592985   -0.0319439
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0681561   -0.0861831   -0.0501291
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0146508   -0.0645311    0.0352296
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.0915357   -0.1183170   -0.0647543
12-15 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0509567   -0.0731179   -0.0287956
12-15 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.0616619   -0.0867174   -0.0366064
12-15 months   ki1101329-Keneba           GAMBIA                         Early term           NA                -0.0534894   -0.0716373   -0.0353416
12-15 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1323285   -0.0933057    0.3579628
12-15 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.2685647    0.0159186    0.5212109
12-15 months   ki1119695-PROBIT           BELARUS                        Early term           NA                -0.0897904   -0.2202633    0.0406826
12-15 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1218847   -0.1475988   -0.0961705
12-15 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.1206095   -0.1564759   -0.0847431
12-15 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.0856478   -0.1163195   -0.0549761
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0483220   -0.0823473   -0.0142967
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.1359354   -0.2007678   -0.0711030
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.0776800   -0.1126234   -0.0427365
15-18 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0358568   -0.0570847   -0.0146288
15-18 months   ki1000108-IRC              INDIA                          Preterm              NA                -0.0306858   -0.0707414    0.0093698
15-18 months   ki1000108-IRC              INDIA                          Early term           NA                -0.0483352   -0.0704488   -0.0262217
15-18 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0272180   -0.0662676    0.0118316
15-18 months   ki1000109-EE               PAKISTAN                       Preterm              NA                -0.0255703   -0.0386803   -0.0124602
15-18 months   ki1000109-EE               PAKISTAN                       Early term           NA                -0.0256600   -0.0498398   -0.0014802
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0274461   -0.0464484   -0.0084439
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.0076278   -0.0213451    0.0060896
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.0203807   -0.0329324   -0.0078290
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0143209   -0.0330269    0.0043851
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0044143   -0.0587797    0.0499510
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.0210750   -0.0497144    0.0075644
15-18 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0301192   -0.0502382   -0.0100003
15-18 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.0164220   -0.0429918    0.0101477
15-18 months   ki1101329-Keneba           GAMBIA                         Early term           NA                -0.0350287   -0.0571850   -0.0128724
15-18 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0836941   -0.1074343   -0.0599539
15-18 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.0117847   -0.0598416    0.0362722
15-18 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.0457510   -0.0740490   -0.0174530
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0349520   -0.0652082   -0.0046957
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.0867221   -0.1385450   -0.0348992
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.0405856   -0.0906358    0.0094646
18-21 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0437719   -0.0608892   -0.0266546
18-21 months   ki1000108-IRC              INDIA                          Preterm              NA                -0.0532493   -0.1028947   -0.0036039
18-21 months   ki1000108-IRC              INDIA                          Early term           NA                -0.0360122   -0.0585536   -0.0134707
18-21 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0254993   -0.0541131    0.0031145
18-21 months   ki1000109-EE               PAKISTAN                       Preterm              NA                -0.0385687   -0.0520689   -0.0250684
18-21 months   ki1000109-EE               PAKISTAN                       Early term           NA                -0.0244413   -0.0444224   -0.0044602
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0380186   -0.0565709   -0.0194662
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.0190051   -0.0321923   -0.0058179
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.0322837   -0.0442158   -0.0203515
18-21 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0103346   -0.0329203    0.0122510
18-21 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.0260806   -0.0479077   -0.0042536
18-21 months   ki1101329-Keneba           GAMBIA                         Early term           NA                -0.0166797   -0.0369151    0.0035556
18-21 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0174904   -0.0396810    0.0047002
18-21 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.0129518   -0.0443772    0.0184736
18-21 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.0381424   -0.0704360   -0.0058488
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0114359   -0.0179371    0.0408090
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                 0.0552936   -0.0152721    0.1258592
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                 0.0106687   -0.0209542    0.0422916
21-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0190120   -0.0369773   -0.0010468
21-24 months   ki1000108-IRC              INDIA                          Preterm              NA                -0.0001720   -0.0452017    0.0448576
21-24 months   ki1000108-IRC              INDIA                          Early term           NA                -0.0049611   -0.0306961    0.0207739
21-24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0264242   -0.0669627    0.0141143
21-24 months   ki1000109-EE               PAKISTAN                       Preterm              NA                -0.0084968   -0.0230117    0.0060181
21-24 months   ki1000109-EE               PAKISTAN                       Early term           NA                 0.0101592   -0.0180389    0.0383573
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0484219    0.0242789    0.0725649
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                 0.0660080    0.0530197    0.0789962
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                 0.0557976    0.0441664    0.0674288
21-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0011360   -0.0188930    0.0211650
21-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                 0.0209365   -0.0006769    0.0425499
21-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                 0.0265984    0.0054005    0.0477962
21-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0363931   -0.0567980   -0.0159883
21-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.0024768   -0.0281012    0.0231477
21-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.0173789   -0.0443510    0.0095932


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0793731   -0.1852244    0.0264782
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2516152   -0.3078111   -0.1954192
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.2160892   -0.2586792   -0.1734992
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2837805   -0.3073651   -0.2601959
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4629578   -0.5523760   -0.3735396
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5718487   -0.6073965   -0.5363009
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0623661   -0.0781939   -0.0465383
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0543809    0.0468164    0.0619453
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0963982   -0.1464314   -0.0463649
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0533200   -0.0841764   -0.0224636
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0663303    0.0389725    0.0936881
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0858248   -0.1028202   -0.0688294
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0387574   -0.0597399   -0.0177750
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0474289    0.0166123    0.0782456
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1384753   -0.1629828   -0.1139678
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0614636   -0.0743514   -0.0485759
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0013847   -0.0056316    0.0084011
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0806473   -0.1157490   -0.0455457
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0158000   -0.0380489    0.0064489
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.0848755   -0.1055404   -0.0642105
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0487053   -0.0648515   -0.0325590
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0075082   -0.0347073    0.0196908
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0601303    0.0399815    0.0802790
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1294599   -0.1493063   -0.1096135
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0931867   -0.1043071   -0.0820663
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1178363   -0.1473429   -0.0883297
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0371867   -0.0546511   -0.0197223
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.1011889   -0.1159053   -0.0864725
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0690421   -0.0836906   -0.0543935
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1066281   -0.1279363   -0.0853199
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0339675    0.0110336    0.0569015
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0867680   -0.1026092   -0.0709269
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0877405   -0.0983279   -0.0771530
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0747227   -0.1030818   -0.0463636
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0440396   -0.0614103   -0.0266688
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0004721   -0.0133950    0.0124507
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0665888   -0.0812907   -0.0518870
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0535902   -0.0667022   -0.0404781
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0198407   -0.1628318    0.2025132
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1115919   -0.1291412   -0.0940426
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0686741   -0.0934242   -0.0439240
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0384923   -0.0538451   -0.0231395
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0256550   -0.0369587   -0.0143512
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0147561   -0.0300547    0.0005425
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0297662   -0.0430976   -0.0164348
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0582728   -0.0761327   -0.0404129
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0444343   -0.0678951   -0.0209736
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0427534   -0.0561754   -0.0293313
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0357223   -0.0470222   -0.0244224
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0149136   -0.0286345   -0.0011928
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0223635   -0.0383291   -0.0063978
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0179753   -0.0042813    0.0402319
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0134565   -0.0275379    0.0006249
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0065196   -0.0190677    0.0060285
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0133617    0.0004507    0.0262727
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0239795   -0.0380160   -0.0099430


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0807956   -0.4536648    0.2920737
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1242376   -0.0975380    0.3460132
0-3 months     ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.0484083   -0.2309822    0.1341656
0-3 months     ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1438236   -0.2707924   -0.0168549
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.0472340   -0.2720231    0.3664912
0-3 months     ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.2155731   -0.1200786    0.5512249
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.0068494   -0.0545526    0.0408538
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.0479440   -0.0948544   -0.0010335
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.1196994    0.0406631    0.1987358
0-3 months     ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0200435   -0.0286621    0.0687491
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0808605   -0.0137371    0.1754580
0-3 months     ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0183202   -0.0282031    0.0648435
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0478689   -0.0595872    0.1553250
0-3 months     ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0100266   -0.0670044    0.0870577
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0238844   -0.0170352    0.0648039
0-3 months     ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0361282   -0.0002464    0.0725028
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0515256    0.0352933    0.0677579
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0384255    0.0232337    0.0536172
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.1449877   -0.0027964    0.2927718
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0966950   -0.0090550    0.2024450
3-6 months     ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0136255   -0.0844083    0.1116593
3-6 months     ki1000108-IRC              INDIA                          Early term           Full or late term     0.0434433   -0.0319884    0.1188751
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.0798581    0.0084718    0.1512443
3-6 months     ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.0395877   -0.0599387    0.1391141
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0928406    0.0466108    0.1390704
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0066200   -0.0380195    0.0512594
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0370105   -0.0140069    0.0880278
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0259068   -0.0159024    0.0677159
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0811700    0.0191267    0.1432132
3-6 months     ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0317998   -0.0131751    0.0767747
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0360051   -0.0328374    0.1048477
3-6 months     ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0241764   -0.0013094    0.0496622
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0322756   -0.1064179    0.0418666
3-6 months     ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0261523   -0.0261534    0.0784580
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0437977    0.0100372    0.0775583
3-6 months     ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0354983    0.0062496    0.0647469
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     0.0751815    0.0572665    0.0930964
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     0.0341559    0.0186448    0.0496670
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0659764   -0.0526653    0.1846180
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0107526   -0.0739543    0.0954595
6-9 months     ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0101780   -0.0710722    0.0914283
6-9 months     ki1000108-IRC              INDIA                          Early term           Full or late term     0.0121799   -0.0407360    0.0650957
6-9 months     ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.0429353   -0.0468488    0.1327194
6-9 months     ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.0364137   -0.0584966    0.1313240
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0092783   -0.0270364    0.0455931
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0142846   -0.0199142    0.0484834
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.0436032   -0.0903731    0.0031668
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     0.0276951   -0.0128842    0.0682744
6-9 months     ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.0317945   -0.0991323    0.0355432
6-9 months     ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.0014498   -0.0633238    0.0604241
6-9 months     ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0761144   -0.0185196    0.1707485
6-9 months     ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0111495   -0.0064673    0.0287663
6-9 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0378630   -0.0124737    0.0881998
6-9 months     ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0084602   -0.0384500    0.0553704
6-9 months     ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0261031   -0.0022849    0.0544911
6-9 months     ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.0215831   -0.0040727    0.0472389
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0296180   -0.1038058    0.0445697
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0221059   -0.0858344    0.0416227
9-12 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0092796   -0.0478369    0.0663962
9-12 months    ki1000108-IRC              INDIA                          Early term           Full or late term     0.0253879   -0.0137556    0.0645315
9-12 months    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.0412021   -0.1153106    0.0329065
9-12 months    ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.0522017   -0.1315842    0.0271809
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0214586   -0.0085576    0.0514748
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0235826   -0.0038382    0.0510035
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0086858   -0.0372619    0.0546335
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0018834   -0.0385426    0.0347758
9-12 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0012437   -0.0478932    0.0503806
9-12 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.0031870   -0.0517073    0.0453333
9-12 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.0600918    0.0055982    0.1145854
9-12 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0060521   -0.0147826    0.0268868
9-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0186862   -0.0623661    0.0249937
9-12 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0058698   -0.0416171    0.0298775
9-12 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.0072498   -0.0339807    0.0194811
9-12 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0047090   -0.0292786    0.0198605
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0080754   -0.0737705    0.0899214
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0335236   -0.0967040    0.0296569
12-15 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0195866   -0.0403607    0.0795340
12-15 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.0055173   -0.0404333    0.0293987
12-15 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.0270875   -0.0932503    0.0390754
12-15 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.0559521   -0.1267703    0.0148662
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0106892   -0.0168841    0.0382624
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.0062945   -0.0325683    0.0199793
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0535054    0.0004675    0.1065433
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0233795   -0.0556629    0.0089038
12-15 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.0107052   -0.0441551    0.0227447
12-15 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.0025327   -0.0311764    0.0261110
12-15 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     0.1362362   -0.1224465    0.3949189
12-15 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.2221189   -0.3528163   -0.0914215
12-15 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0012752   -0.0428566    0.0454070
12-15 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0362369   -0.0037877    0.0762615
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0876134   -0.1608320   -0.0143948
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0293580   -0.0781306    0.0194146
15-18 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0051709   -0.0401620    0.0505039
15-18 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.0124785   -0.0431319    0.0181749
15-18 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.0016477   -0.0395438    0.0428392
15-18 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.0015580   -0.0443716    0.0474877
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0198183   -0.0036177    0.0432544
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0070654   -0.0157080    0.0298388
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     0.0099066   -0.0475870    0.0674001
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0067541   -0.0409612    0.0274530
15-18 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0136972   -0.0196303    0.0470247
15-18 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.0049095   -0.0348373    0.0250183
15-18 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0719094    0.0183085    0.1255104
15-18 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0379431    0.0010057    0.0748805
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0517701   -0.1117789    0.0082387
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0056336   -0.0641184    0.0528511
18-21 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.0094774   -0.0619909    0.0430361
18-21 months   ki1000108-IRC              INDIA                          Early term           Full or late term     0.0077597   -0.0205443    0.0360638
18-21 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.0130694   -0.0447081    0.0185693
18-21 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.0010580   -0.0338418    0.0359578
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0190134   -0.0037482    0.0417751
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0057349   -0.0163233    0.0277931
18-21 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.0157460   -0.0471551    0.0156631
18-21 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.0063451   -0.0366697    0.0239795
18-21 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0045386   -0.0339318    0.0430091
18-21 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0206520   -0.0598349    0.0185309
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0438577   -0.0325772    0.1202925
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0007672   -0.0439272    0.0423928
21-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term     0.0188400   -0.0296412    0.0673211
21-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term     0.0140509   -0.0173345    0.0454363
21-24 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.0179274   -0.0251313    0.0609861
21-24 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.0365834   -0.0127978    0.0859646
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     0.0175861   -0.0098289    0.0450010
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     0.0073757   -0.0194230    0.0341744
21-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0198005   -0.0096664    0.0492675
21-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0254624   -0.0037011    0.0546259
21-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0339164    0.0011602    0.0666726
21-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0190142   -0.0148067    0.0528351


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0212009   -0.0609040    0.1033058
0-3 months     ki1000108-IRC              INDIA                          Full or late term    NA                -0.0421123   -0.0836217   -0.0006028
0-3 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0726744   -0.2305349    0.3758838
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0228084   -0.0563082    0.0106915
0-3 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0251174    0.0008012    0.0494335
0-3 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0114635   -0.0130740    0.0360009
0-3 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0123064   -0.0245670    0.0491799
0-3 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0175380   -0.0001791    0.0352551
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0220454    0.0156510    0.0284398
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0456532    0.0062291    0.0850772
3-6 months     ki1000108-IRC              INDIA                          Full or late term    NA                 0.0123994   -0.0112228    0.0360217
3-6 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0695394    0.0028068    0.1362721
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0356905    0.0031472    0.0682338
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0116263   -0.0019886    0.0252412
3-6 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0241047    0.0016788    0.0465305
3-6 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0132056   -0.0008627    0.0272740
3-6 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0014797   -0.0232401    0.0261995
3-6 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0220080    0.0073596    0.0366564
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0241731    0.0177719    0.0305743
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0122514   -0.0167280    0.0412308
6-9 months     ki1000108-IRC              INDIA                          Full or late term    NA                 0.0041467   -0.0129272    0.0212206
6-9 months     ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0400481   -0.0451646    0.1252608
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0094789   -0.0157776    0.0347354
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0000577   -0.0129239    0.0128086
6-9 months     ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0062026   -0.0367532    0.0243480
6-9 months     ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0077740   -0.0019762    0.0175242
6-9 months     ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0102087   -0.0096377    0.0300551
6-9 months     ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0134632    0.0007072    0.0262193
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0098545   -0.0322214    0.0125124
9-12 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0073533   -0.0054425    0.0201491
9-12 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0412884   -0.1118562    0.0292794
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0180360   -0.0024281    0.0385000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0007601   -0.0104706    0.0119907
9-12 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0008690   -0.0241689    0.0224309
9-12 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0046984   -0.0068970    0.0162937
9-12 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0054445   -0.0210426    0.0101536
9-12 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0032927   -0.0155833    0.0089979
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0067657   -0.0284298    0.0148984
12-15 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0007687   -0.0116446    0.0131820
12-15 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0299956   -0.0925439    0.0325526
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0009954   -0.0187623    0.0207532
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0015673   -0.0101034    0.0132380
12-15 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0026334   -0.0164744    0.0112075
12-15 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.1124879   -0.1830293   -0.0419464
12-15 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0102928   -0.0063417    0.0269272
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0203521   -0.0391443   -0.0015599
15-18 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0026355   -0.0129002    0.0076291
15-18 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0015630   -0.0374370    0.0405630
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0105388   -0.0067257    0.0278032
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0004352   -0.0123917    0.0115213
15-18 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0003530   -0.0128305    0.0135366
15-18 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0254212    0.0079129    0.0429296
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0094824   -0.0291148    0.0101501
18-21 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0010185   -0.0085011    0.0105381
18-21 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0102230   -0.0398122    0.0193663
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0100498   -0.0072428    0.0273424
18-21 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0045790   -0.0183998    0.0092418
18-21 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0048730   -0.0206658    0.0109197
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0065394   -0.0111235    0.0242023
21-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0055555   -0.0048160    0.0159270
21-24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0199046   -0.0202797    0.0600890
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0103402   -0.0114991    0.0321794
21-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0122257   -0.0010597    0.0255112
21-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0124137   -0.0013103    0.0261377
