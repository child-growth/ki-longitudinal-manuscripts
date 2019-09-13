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
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
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
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Full or late term               0        3     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Full or late term               1       15     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Preterm                         0       14     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Preterm                         1      146     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Early term                      0       16     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Early term                      1       55     249
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term               0        8    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term               1       16    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Preterm                         0      422    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Preterm                         1      550    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Early term                      0       35    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Early term                      1       50    1081
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
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0     5990   13596
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1     2065   13596
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     1396   13596
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      568   13596
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     2554   13596
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1     1023   13596
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
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term               0       11     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term               1        7     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Preterm                         0       50     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Preterm                         1      110     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Early term                      0       38     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Early term                      1       33     249
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Full or late term               0       22    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Full or late term               1        2    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Preterm                         0      781    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Preterm                         1      191    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Early term                      0       67    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Early term                      1       17    1080
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0     7037   13594
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1     1017   13594
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     1630   13594
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      334   13594
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     2991   13594
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1      585   13594
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
6-24 months                  ki1000109-EE               PAKISTAN                       Full or late term               0        3      97
6-24 months                  ki1000109-EE               PAKISTAN                       Full or late term               1        8      97
6-24 months                  ki1000109-EE               PAKISTAN                       Preterm                         0       12      97
6-24 months                  ki1000109-EE               PAKISTAN                       Preterm                         1       36      97
6-24 months                  ki1000109-EE               PAKISTAN                       Early term                      0       16      97
6-24 months                  ki1000109-EE               PAKISTAN                       Early term                      1       22      97
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Full or late term               0        7     808
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Full or late term               1       14     808
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Preterm                         0      361     808
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Preterm                         1      360     808
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Early term                      0       32     808
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Early term                      1       34     808
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
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0     3617    7620
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1     1048    7620
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0      775    7620
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      241    7620
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     1501    7620
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1      438    7620


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/6b3f5b21-ad81-4d64-876e-5314529cfea5/fe9c136c-b93a-4f18-90ed-4346ef4018f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6b3f5b21-ad81-4d64-876e-5314529cfea5/fe9c136c-b93a-4f18-90ed-4346ef4018f3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6b3f5b21-ad81-4d64-876e-5314529cfea5/fe9c136c-b93a-4f18-90ed-4346ef4018f3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6b3f5b21-ad81-4d64-876e-5314529cfea5/fe9c136c-b93a-4f18-90ed-4346ef4018f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term    NA                0.5701357   0.5047709   0.6355006
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Preterm              NA                0.7187500   0.5627423   0.8747577
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Early term           NA                0.6136364   0.5117542   0.7155185
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.6666667   0.3999300   0.9334033
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.5658436   0.5093009   0.6223863
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.5882353   0.5185374   0.6579332
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.3293151   0.2559424   0.4026877
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.4552046   0.3853961   0.5250131
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.3928007   0.3369518   0.4486496
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.2871688   0.2627586   0.3115791
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.3215723   0.2688867   0.3742578
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.3142983   0.2725680   0.3560286
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.4903515   0.4558996   0.5248033
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.6373494   0.5734658   0.7012329
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Early term           NA                0.4936872   0.4523544   0.5350200
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.1416361   0.1211543   0.1621178
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.2738219   0.2387141   0.3089296
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Early term           NA                0.1714897   0.1499710   0.1930083
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.7594387   0.7174943   0.8013831
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.7696704   0.6881221   0.8512186
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.7806730   0.7237238   0.8376221
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.2886293   0.2512140   0.3260445
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Preterm              NA                0.3303702   0.2739143   0.3868261
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Early term           NA                0.3007521   0.2567489   0.3447553
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.6473058   0.6198757   0.6747360
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6753354   0.6367633   0.7139074
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.6814766   0.6545979   0.7083552
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2567144   0.2457493   0.2676795
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.2846115   0.2626902   0.3065329
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2869908   0.2708070   0.3031745
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.3971610   0.3251670   0.4691549
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4134847   0.2382914   0.5886780
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.3094646   0.1928124   0.4261168
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term    NA                0.3180668   0.2561633   0.3799702
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Preterm              NA                0.3977154   0.2189716   0.5764592
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Early term           NA                0.3752379   0.2719339   0.4785418
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term    NA                0.3888889   0.1632268   0.6145509
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Preterm              NA                0.6875000   0.6155347   0.7594653
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Early term           NA                0.4647887   0.3485414   0.5810361
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1444248   0.0880940   0.2007557
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.2448939   0.1849729   0.3048149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1766533   0.1330297   0.2202770
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1262926   0.1083330   0.1442521
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1426503   0.1024622   0.1828384
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1466558   0.1146399   0.1786717
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.2104981   0.1814136   0.2395826
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.3765416   0.3103372   0.4427460
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Early term           NA                0.2496231   0.2129989   0.2862472
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0731479   0.0592990   0.0869968
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.2198716   0.1756941   0.2640491
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Early term           NA                0.1029386   0.0874174   0.1184598
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.2181333   0.1764178   0.2598488
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.3116234   0.2205681   0.4026787
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.2802962   0.2162234   0.3443690
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0666036   0.0456801   0.0875271
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Preterm              NA                0.0844248   0.0501216   0.1187280
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Early term           NA                0.0587372   0.0358750   0.0815993
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1527843   0.1318413   0.1737273
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2492251   0.2133742   0.2850761
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.1972185   0.1741985   0.2202385
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1260756   0.1178373   0.1343139
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1684554   0.1500483   0.1868626
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1647135   0.1511412   0.1782858
6-24 months                  ki1000108-IRC              INDIA                          Full or late term    NA                0.3708609   0.2936452   0.4480766
6-24 months                  ki1000108-IRC              INDIA                          Preterm              NA                0.5263158   0.3013035   0.7513281
6-24 months                  ki1000108-IRC              INDIA                          Early term           NA                0.3818182   0.2531354   0.5105010
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.6666667   0.3925625   0.9407709
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.4993065   0.4553857   0.5432274
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.5151515   0.4536984   0.5766046
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.2338153   0.1582803   0.3093502
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.2833246   0.2084677   0.3581815
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.2669449   0.2103259   0.3235638
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.2223690   0.1958765   0.2488615
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2403517   0.1832823   0.2974211
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2293114   0.1841756   0.2744473
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3865217   0.3489160   0.4241273
6-24 months                  ki1101329-Keneba           GAMBIA                         Preterm              NA                0.5006780   0.4174426   0.5839133
6-24 months                  ki1101329-Keneba           GAMBIA                         Early term           NA                0.3684331   0.3231223   0.4137438
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0736119   0.0604739   0.0867499
6-24 months                  ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0737625   0.0514705   0.0960545
6-24 months                  ki1119695-PROBIT           BELARUS                        Early term           NA                0.0806612   0.0628328   0.0984896
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.7487358   0.6998243   0.7976473
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.7157350   0.6078903   0.8235798
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.7749903   0.7058574   0.8441232
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term    NA                0.2460490   0.2087422   0.2833558
6-24 months                  ki1135781-COHORTS          INDIA                          Preterm              NA                0.2824007   0.2246918   0.3401095
6-24 months                  ki1135781-COHORTS          INDIA                          Early term           NA                0.2689669   0.2244344   0.3134993
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.6368251   0.6054205   0.6682297
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6396841   0.5915782   0.6877900
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.6551302   0.6232550   0.6870054
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2265054   0.2122455   0.2407653
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.2317141   0.2020297   0.2613985
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2245647   0.2024363   0.2466931


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5953079   0.5431354   0.6474804
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5698427   0.5147261   0.6249593
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2979534   0.2783922   0.3175146
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5091714   0.4845214   0.5338214
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7723343   0.7411143   0.8035543
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          NA                   NA                0.3004847   0.2749357   0.3260336
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6661982   0.6488700   0.6835264
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2689026   0.2600803   0.2777249
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3795620   0.3219972   0.4371269
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3401760   0.2898173   0.3905347
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1346978   0.1200961   0.1492994
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2466667   0.2248446   0.2684887
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2481315   0.2153770   0.2808861
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0687398   0.0545482   0.0829313
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1897400   0.1753322   0.2041478
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1424158   0.1357405   0.1490910
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3866667   0.3228931   0.4504402
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5049505   0.4617314   0.5481695
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2274536   0.2062895   0.2486177
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3917012   0.3641291   0.4192734
6-24 months                  ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7490347   0.7116615   0.7864080
6-24 months                  ki1135781-COHORTS          INDIA                          NA                   NA                0.2598214   0.2341270   0.2855158
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6444867   0.6240287   0.6649447
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2266404   0.2153534   0.2379275


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.2606647   0.9862620   1.611413
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0762987   0.8796426   1.316920
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    0.8487654   0.5981187   1.204448
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.8823529   0.5873664   1.325487
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.3822767   1.0547437   1.811519
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.1927808   0.9157754   1.553575
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.1198021   0.9311926   1.346614
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0944723   0.9348276   1.281380
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.2997807   1.1506193   1.468279
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0068028   0.9027950   1.122793
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.9332779   1.6157135   2.313259
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.2107769   1.0909195   1.343803
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.0134727   0.8991903   1.142280
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.0279604   0.9380227   1.126521
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.1446179   0.9240905   1.417772
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.0420014   0.8579367   1.265556
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0433019   0.9719863   1.119850
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.0527892   0.9939765   1.115082
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1086698   1.0178357   1.207610
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.1179379   1.0442261   1.196853
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.0411011   0.6563138   1.651484
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.7791918   0.5126933   1.184216
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Preterm              Full or late term    1.2504147   0.7661776   2.040697
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Early term           Full or late term    1.1797456   0.8420618   1.652847
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    1.7678571   0.9803246   3.188045
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Early term           Full or late term    1.1951710   0.6353430   2.248287
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.6956493   1.0698244   2.687569
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.2231506   0.7708687   1.940794
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.1295223   0.8239232   1.548470
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.1612385   0.8949370   1.506782
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.7888124   1.4303400   2.237125
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.1858685   0.9694730   1.450565
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    3.0058499   2.3870744   3.785024
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.4072664   1.2043143   1.644420
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.4285919   1.0073740   2.025936
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.2849769   0.9536236   1.731465
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.2675715   0.7584953   2.118322
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.8818921   0.5354702   1.452431
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.6312221   1.3375640   1.989352
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2908293   1.0785746   1.544854
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.3361462   1.1779032   1.515648
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.3064663   1.1769568   1.450227
6-24 months                  ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-IRC              INDIA                          Preterm              Full or late term    1.4191729   0.8820972   2.283254
6-24 months                  ki1000108-IRC              INDIA                          Early term           Full or late term    1.0295455   0.6927854   1.530003
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    0.7489598   0.5192679   1.080253
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.7727273   0.4992646   1.195974
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.2117457   0.7988208   1.838119
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.1416914   0.7757362   1.680287
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0808687   0.8286008   1.409940
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0312204   0.8192793   1.297989
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.2953426   1.0693222   1.569137
6-24 months                  ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9532016   0.8154062   1.114283
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.0020461   0.7439202   1.349737
6-24 months                  ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0957633   0.9310151   1.289664
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    0.9559247   0.8110560   1.126669
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.0350651   0.9267592   1.156028
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.1477418   0.8901409   1.479891
6-24 months                  ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.0931436   0.8741333   1.367026
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0044895   0.9185034   1.098525
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.0287443   0.9603344   1.102027
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0229960   0.8907262   1.174907
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9914321   0.8827803   1.113457


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0251722   -0.0129918   0.0633362
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0968239   -0.3288450   0.1351971
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0642531   -0.0007440   0.1292501
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0107845   -0.0043511   0.0259202
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0188200   -0.0051834   0.0428233
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0181417    0.0106115   0.0256720
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0128956   -0.0142464   0.0400375
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0118554   -0.0161322   0.0398429
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0188923   -0.0021680   0.0399526
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0121882    0.0055604   0.0188160
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0175989   -0.0594570   0.0242591
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0221092   -0.0158848   0.0601031
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.2135207   -0.0038980   0.4309395
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0454680   -0.0056475   0.0965834
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0084052   -0.0029917   0.0198021
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0361686    0.0145200   0.0578172
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0181305    0.0122099   0.0240511
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0299983    0.0007417   0.0592548
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0021362   -0.0135006   0.0177730
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0369557    0.0197501   0.0541613
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0163402    0.0108439   0.0218365
6-24 months                  ki1000108-IRC              INDIA                          Full or late term    NA                 0.0158057   -0.0292126   0.0608240
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.1617162   -0.4070183   0.0835859
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0290306   -0.0373899   0.0954511
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0050846   -0.0112731   0.0214423
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0051796   -0.0203984   0.0307576
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0032392   -0.0027935   0.0092718
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0002989   -0.0309958   0.0315937
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0137725   -0.0142358   0.0417807
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0076616   -0.0161292   0.0314523
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0001350   -0.0082624   0.0085324


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0422843   -0.0242259   0.1044755
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.1699134   -0.6443079   0.1676149
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.1632578   -0.0192464   0.3130831
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0361954   -0.0159574   0.0856709
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0369619   -0.0113937   0.0830056
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1135436    0.0629808   0.1613780
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0166969   -0.0191079   0.0512437
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0394542   -0.0583256   0.1282001
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0283584   -0.0037920   0.0594791
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0453258    0.0203312   0.0696826
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0463664   -0.1627261   0.0583487
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0649933   -0.0536893   0.1703081
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.3544444   -0.1320864   0.6318815
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.2394402   -0.0812591   0.4650207
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0624005   -0.0259841   0.1431711
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.1466293    0.0546371   0.2296699
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1986285    0.1274086   0.2640355
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1208966   -0.0047215   0.2308090
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0310766   -0.2252891   0.2338032
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1947701    0.0996106   0.2798726
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.1147356    0.0754257   0.1523743
6-24 months                  ki1000108-IRC              INDIA                          Full or late term    NA                 0.0408769   -0.0829571   0.1505508
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.3202614   -0.8838898   0.0747388
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.1104472   -0.1817245   0.3303819
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0223544   -0.0522618   0.0916796
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0132233   -0.0542924   0.0764154
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0421485   -0.0371247   0.1153624
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0003991   -0.0422666   0.0413183
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0530074   -0.0610927   0.1548383
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0118878   -0.0257273   0.0481236
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0005958   -0.0371521   0.0369698
