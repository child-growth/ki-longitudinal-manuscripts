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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        gagebrth             ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ------------------  -------------  -------  ------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               0       18     278
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               1      164     278
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         0        3     278
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         1       30     278
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      0        7     278
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      1       56     278
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term               0       95     341
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term               1      126     341
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Preterm                         0        9     341
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Preterm                         1       23     341
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Early term                      0       34     341
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Early term                      1       54     341
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Full or late term               0        2     213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Full or late term               1        8     213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Preterm                         0       30     213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Preterm                         1      141     213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Early term                      0        9     213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Early term                      1       23     213
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               0      105     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               1       51     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         0      110     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         1       89     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      0      181     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      1      117     653
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0      944    2101
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1      379    2101
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      204    2101
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1       97    2101
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      327    2101
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1      150    2101
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term               0      413    1581
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term               1      394    1581
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Preterm                         0       78    1581
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Preterm                         1      135    1581
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Early term                      0      285    1581
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Early term                      1      276    1581
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term               0     7390   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term               1     1194   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Preterm                         0      407   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Preterm                         1      157   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Early term                      0     6270   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Early term                      1     1324   16742
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term               0       94     694
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term               1      303     694
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Preterm                         0       23     694
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Preterm                         1       79     694
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Early term                      0       41     694
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Early term                      1      154     694
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term               0      395    1238
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term               1      160    1238
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Preterm                         0      181    1238
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Preterm                         1       88    1238
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Early term                      0      290    1238
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Early term                      1      124    1238
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term               0      395    2846
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term               1      735    2846
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Preterm                         0      185    2846
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Preterm                         1      380    2846
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Early term                      0      370    2846
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Early term                      1      781    2846
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0     7905   17441
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1     2507   17441
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     1779   17441
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      679   17441
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     3338   17441
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1     1233   17441
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               0      108     274
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               1       71     274
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         0       19     274
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         1       14     274
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      0       43     274
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      1       19     274
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term               0      151     341
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term               1       70     341
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Preterm                         0       19     341
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Preterm                         1       13     341
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Early term                      0       55     341
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Early term                      1       33     341
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term               0        6     213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term               1        4     213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Preterm                         0       71     213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Preterm                         1      100     213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Early term                      0       18     213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Early term                      1       14     213
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               0      134     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               1       22     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         0      150     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         1       49     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      0      245     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      1       53     653
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0     1155    2101
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1      168    2101
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      257    2101
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1       44    2101
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      406    2101
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1       71    2101
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term               0      596    1500
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term               1      160    1500
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Preterm                         0      129    1500
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Preterm                         1       77    1500
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Early term                      0      405    1500
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Early term                      1      133    1500
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term               0     7967   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term               1      616   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Preterm                         0      439   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Preterm                         1      125   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Early term                      0     6806   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Early term                      1      787   16740
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term               0      296     669
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term               1       82     669
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Preterm                         0       70     669
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Preterm                         1       31     669
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Early term                      0      137     669
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Early term                      1       53     669
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term               0      512    1222
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term               1       37    1222
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Preterm                         0      242    1222
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Preterm                         1       23    1222
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Early term                      0      384    1222
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Early term                      1       24    1222
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term               0      957    2846
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term               1      173    2846
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Preterm                         0      425    2846
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Preterm                         1      140    2846
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Early term                      0      924    2846
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Early term                      1      227    2846
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0     9182   17398
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1     1203   17398
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     2051   17398
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      402   17398
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     3876   17398
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1      684   17398
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               0       18     175
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               1       93     175
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         0        3     175
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         1       16     175
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      0        7     175
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      1       38     175
6-24 months                  ki1000108-IRC              INDIA                          Full or late term               0       95     225
6-24 months                  ki1000108-IRC              INDIA                          Full or late term               1       56     225
6-24 months                  ki1000108-IRC              INDIA                          Preterm                         0        9     225
6-24 months                  ki1000108-IRC              INDIA                          Preterm                         1       10     225
6-24 months                  ki1000108-IRC              INDIA                          Early term                      0       34     225
6-24 months                  ki1000108-IRC              INDIA                          Early term                      1       21     225
6-24 months                  ki1000109-EE               PAKISTAN                       Full or late term               0        2      93
6-24 months                  ki1000109-EE               PAKISTAN                       Full or late term               1        4      93
6-24 months                  ki1000109-EE               PAKISTAN                       Preterm                         0       28      93
6-24 months                  ki1000109-EE               PAKISTAN                       Preterm                         1       41      93
6-24 months                  ki1000109-EE               PAKISTAN                       Early term                      0        9      93
6-24 months                  ki1000109-EE               PAKISTAN                       Early term                      1        9      93
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               0       96     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               1       29     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         0      102     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         1       40     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      0      175     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      1       64     506
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0      738    1508
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1      211    1508
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      166    1508
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1       53    1508
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      261    1508
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1       79    1508
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term               0      394    1205
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term               1      247    1205
6-24 months                  ki1101329-Keneba           GAMBIA                         Preterm                         0       66    1205
6-24 months                  ki1101329-Keneba           GAMBIA                         Preterm                         1       66    1205
6-24 months                  ki1101329-Keneba           GAMBIA                         Early term                      0      273    1205
6-24 months                  ki1101329-Keneba           GAMBIA                         Early term                      1      159    1205
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term               0     7256   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term               1      579   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Preterm                         0      397   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Preterm                         1       32   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Early term                      0     6149   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Early term                      1      538   14951
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term               0       77     518
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term               1      228     518
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Preterm                         0       20     518
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Preterm                         1       49     518
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Early term                      0       33     518
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Early term                      1      111     518
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term               0      381    1120
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term               1      124    1120
6-24 months                  ki1135781-COHORTS          INDIA                          Preterm                         0      171    1120
6-24 months                  ki1135781-COHORTS          INDIA                          Preterm                         1       66    1120
6-24 months                  ki1135781-COHORTS          INDIA                          Early term                      0      277    1120
6-24 months                  ki1135781-COHORTS          INDIA                          Early term                      1      101    1120
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term               0      317    2104
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term               1      562    2104
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Preterm                         0      137    2104
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Preterm                         1      240    2104
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Early term                      0      294    2104
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Early term                      1      554    2104
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0     4829    9942
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1     1310    9942
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0      988    9942
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      289    9942
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     1974    9942
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1      552    9942


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/11870eaa-1b7c-4015-966d-5d2088153bc6/092d0a88-b35d-4ba0-9b10-bbf839ff10f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/11870eaa-1b7c-4015-966d-5d2088153bc6/092d0a88-b35d-4ba0-9b10-bbf839ff10f8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/11870eaa-1b7c-4015-966d-5d2088153bc6/092d0a88-b35d-4ba0-9b10-bbf839ff10f8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/11870eaa-1b7c-4015-966d-5d2088153bc6/092d0a88-b35d-4ba0-9b10-bbf839ff10f8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term    NA                0.5701357   0.5047709   0.6355006
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Preterm              NA                0.7187500   0.5627423   0.8747577
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Early term           NA                0.6136364   0.5117542   0.7155185
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.3304840   0.2563498   0.4046182
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.4457790   0.3762189   0.5153391
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.3917748   0.3359452   0.4476044
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.2866689   0.2622866   0.3110511
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.3203874   0.2673346   0.3734402
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.3142828   0.2724307   0.3561348
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.4891995   0.4547726   0.5236264
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.6349095   0.5708268   0.6989921
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Early term           NA                0.4920095   0.4507800   0.5332390
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.1410131   0.1208435   0.1611827
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.2764498   0.2386961   0.3142035
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Early term           NA                0.1720767   0.1502036   0.1939497
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.7626475   0.7208110   0.8044840
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.7720282   0.6896518   0.8544046
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.7910485   0.7335579   0.8485392
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.2877697   0.2503219   0.3252175
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Preterm              NA                0.3295385   0.2731523   0.3859247
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Early term           NA                0.3006347   0.2566269   0.3446425
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.6465121   0.6190629   0.6739612
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6734612   0.6348756   0.7120467
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.6818185   0.6549597   0.7086773
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2416064   0.2318296   0.2513832
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.2704706   0.2509025   0.2900387
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2702219   0.2560180   0.2844258
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.3968504   0.3248601   0.4688407
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4425473   0.2678294   0.6172651
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.3078980   0.1925200   0.4232760
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term    NA                0.3176562   0.2557375   0.3795749
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Preterm              NA                0.4046071   0.2310521   0.5781622
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Early term           NA                0.3722822   0.2681539   0.4764105
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1436913   0.0884200   0.1989625
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.2453484   0.1844926   0.3062041
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1762330   0.1325781   0.2198879
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1271248   0.1091480   0.1451016
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1455941   0.1054763   0.1857119
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1483448   0.1163052   0.1803845
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.2105092   0.1814282   0.2395901
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.3773298   0.3108263   0.4438333
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Early term           NA                0.2491473   0.2126037   0.2856909
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0721473   0.0581415   0.0861532
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.2176207   0.1736031   0.2616383
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Early term           NA                0.1034304   0.0877935   0.1190673
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.2171758   0.1753744   0.2589772
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.3076142   0.2169503   0.3982781
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.2753075   0.2107644   0.3398506
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0671801   0.0463021   0.0880581
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Preterm              NA                0.0867497   0.0527063   0.1207930
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Early term           NA                0.0591457   0.0362599   0.0820314
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1525219   0.1315642   0.1734796
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2467711   0.2111247   0.2824175
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.1982054   0.1751836   0.2212271
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1158716   0.1088864   0.1228568
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1588900   0.1432106   0.1745694
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1508469   0.1389599   0.1627340
6-24 months                  ki1000108-IRC              INDIA                          Full or late term    NA                0.3708609   0.2936452   0.4480766
6-24 months                  ki1000108-IRC              INDIA                          Preterm              NA                0.5263158   0.3013035   0.7513281
6-24 months                  ki1000108-IRC              INDIA                          Early term           NA                0.3818182   0.2531354   0.5105010
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.2288811   0.1550598   0.3027024
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.2844203   0.2098221   0.3590184
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.2678158   0.2111788   0.3244529
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.2219600   0.1954765   0.2484436
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2406509   0.1837231   0.2975788
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2313660   0.1863477   0.2763843
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3865444   0.3489178   0.4241710
6-24 months                  ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4982573   0.4150153   0.5814993
6-24 months                  ki1101329-Keneba           GAMBIA                         Early term           NA                0.3684081   0.3230393   0.4137768
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0737105   0.0607821   0.0866388
6-24 months                  ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0760431   0.0533333   0.0987530
6-24 months                  ki1119695-PROBIT           BELARUS                        Early term           NA                0.0808097   0.0629075   0.0987119
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.7479887   0.6991212   0.7968562
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.7119150   0.6030396   0.8207905
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.7717260   0.7026133   0.8408388
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term    NA                0.2432445   0.2057699   0.2807191
6-24 months                  ki1135781-COHORTS          INDIA                          Preterm              NA                0.2707306   0.2132236   0.3282376
6-24 months                  ki1135781-COHORTS          INDIA                          Early term           NA                0.2634588   0.2189347   0.3079830
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.6361132   0.6047328   0.6674936
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6391063   0.5907768   0.6874358
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.6548627   0.6229653   0.6867600
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2157629   0.2033416   0.2281842
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.2199617   0.1944552   0.2454682
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2160481   0.1982618   0.2338343


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5953079   0.5431354   0.6474804
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2979534   0.2783922   0.3175146
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5091714   0.4845214   0.5338214
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7723343   0.7411143   0.8035543
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          NA                   NA                0.3004847   0.2749357   0.3260336
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6661982   0.6488700   0.6835264
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2533685   0.2454041   0.2613329
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3795620   0.3219972   0.4371269
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3401760   0.2898173   0.3905347
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1346978   0.1200961   0.1492994
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2466667   0.2248446   0.2684887
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2481315   0.2153770   0.2808861
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0687398   0.0545482   0.0829313
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1897400   0.1753322   0.2041478
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1315668   0.1257634   0.1373703
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3866667   0.3228931   0.4504402
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2274536   0.2062895   0.2486177
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3917012   0.3641291   0.4192734
6-24 months                  ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7490347   0.7116615   0.7864080
6-24 months                  ki1135781-COHORTS          INDIA                          NA                   NA                0.2598214   0.2341270   0.2855158
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6444867   0.6240287   0.6649447
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2163549   0.2067486   0.2259611


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.2606647   0.9862620   1.611413
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0762987   0.8796426   1.316920
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.3488672   1.0265500   1.772386
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.1854578   0.9090083   1.545982
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.1176219   0.9277767   1.346314
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0963268   0.9360638   1.284028
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.2978539   1.1481708   1.467051
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0057440   0.9017898   1.121682
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.9604552   1.6303735   2.357364
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.2202887   1.1012333   1.352215
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.0123002   0.8979131   1.141259
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.0372401   0.9469650   1.136121
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.1451467   0.9239813   1.419250
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.0447058   0.8596717   1.269566
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0416838   0.9702915   1.118329
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.0546106   0.9956858   1.117023
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1194680   1.0326844   1.213545
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.1184386   1.0503515   1.190939
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.1151487   0.7219505   1.722496
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.7758540   0.5111186   1.177710
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Preterm              Full or late term    1.2737265   0.7954822   2.039491
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Early term           Full or late term    1.1719657   0.8328019   1.649256
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.7074689   1.0794020   2.700986
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.2264702   0.7761716   1.938011
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.1452847   0.8403284   1.560910
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.1669229   0.9015211   1.510457
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.7924627   1.4329146   2.242229
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.1835462   0.9675930   1.447697
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    3.0163390   2.3901883   3.806520
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.4336001   1.2272551   1.674639
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.4164293   0.9960456   2.014237
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.2676709   0.9359158   1.717024
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.2912995   0.7829041   2.129832
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.8804042   0.5368728   1.443753
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.6179389   1.3256015   1.974746
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2995207   1.0856858   1.555472
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.3712593   1.2240276   1.536201
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.3018454   1.1808429   1.435247
6-24 months                  ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-IRC              INDIA                          Preterm              Full or late term    1.4191729   0.8820972   2.283254
6-24 months                  ki1000108-IRC              INDIA                          Early term           Full or late term    1.0295455   0.6927854   1.530003
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.2426551   0.8201937   1.882716
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.1701089   0.7959466   1.720159
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0842083   0.8317724   1.413256
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0423767   0.8296426   1.309659
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.2890040   1.0632526   1.562687
6-24 months                  ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9530808   0.8150933   1.114428
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.0316462   0.7688943   1.384188
6-24 months                  ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0963129   0.9333822   1.287685
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    0.9517725   0.8058965   1.124054
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.0317349   0.9234490   1.152719
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.1129981   0.8563711   1.446528
6-24 months                  ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.0831031   0.8623541   1.360360
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0047053   0.9183222   1.099214
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.0294750   0.9609787   1.102853
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0194602   0.8979296   1.157439
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0013216   0.9062342   1.106386


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0251722   -0.0129918   0.0633362
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0630842   -0.0025244   0.1286927
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0112845   -0.0038499   0.0264189
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0199719   -0.0039944   0.0439382
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0187647    0.0113709   0.0261585
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0096868   -0.0171649   0.0365386
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0127150   -0.0153157   0.0407456
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0196861   -0.0013886   0.0407608
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0117621    0.0059444   0.0175799
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0172884   -0.0591863   0.0246095
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0225197   -0.0156057   0.0606452
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0462015   -0.0040428   0.0964459
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0075730   -0.0038163   0.0189622
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0361575    0.0145162   0.0577988
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0191311    0.0133809   0.0248813
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0309557    0.0017100   0.0602014
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0015596   -0.0140326   0.0171519
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0372181    0.0199788   0.0544574
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0156952    0.0110427   0.0203477
6-24 months                  ki1000108-IRC              INDIA                          Full or late term    NA                 0.0158057   -0.0292126   0.0608240
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0339647   -0.0309941   0.0989236
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0054935   -0.0108664   0.0218535
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0051568   -0.0204573   0.0307709
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0031406   -0.0026570   0.0089381
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0010461   -0.0302066   0.0322987
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0165769   -0.0115758   0.0447297
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0083735   -0.0154037   0.0321507
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0005919   -0.0065606   0.0077445


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0422843   -0.0242259   0.1044755
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.1602877   -0.0241529   0.3115123
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0378734   -0.0142740   0.0873397
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0392243   -0.0090626   0.0852005
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1174427    0.0681304   0.1641455
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0125423   -0.0228650   0.0467238
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0423148   -0.0556410   0.1311810
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0295499   -0.0026251   0.0606924
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0464231    0.0231627   0.0691296
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0455483   -0.1620304   0.0592576
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0662002   -0.0529138   0.1718391
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.2433033   -0.0706303   0.4651843
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0562219   -0.0320797   0.1369686
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.1465845    0.0546237   0.2295998
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.2095904    0.1383793   0.2749160
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1247552   -0.0009504   0.2346740
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0226890   -0.2325700   0.2250852
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1961531    0.1007985   0.2813960
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.1192947    0.0834689   0.1537201
6-24 months                  ki1000108-IRC              INDIA                          Full or late term    NA                 0.0408769   -0.0829571   0.1505508
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.1292193   -0.1562857   0.3442286
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0241524   -0.0504796   0.0934821
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0131652   -0.0544486   0.0764435
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0408660   -0.0349220   0.1111039
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0013966   -0.0412118   0.0422613
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0638013   -0.0510416   0.1660958
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0129925   -0.0246017   0.0492072
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0027360   -0.0308877   0.0352629
