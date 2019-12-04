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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hhwealth_quart    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             56     201  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             48     201  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             46     201  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             51     201  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             10      57  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             20      57  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             16      57  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             11      57  whz              
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4              8      39  whz              
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1             13      39  whz              
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2              9      39  whz              
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3              9      39  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              6      25  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              8      25  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              3      25  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              8      25  whz              
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4             53     210  whz              
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1             55     210  whz              
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2             51     210  whz              
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3             51     210  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             17      95  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             26      95  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             24      95  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             28      95  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             23     112  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             26     112  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             30     112  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             33     112  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             32      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             13      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             19      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             22      86  whz              
Birth       ki1000108-IRC              INDIA                          Wealth Q4             79     343  whz              
Birth       ki1000108-IRC              INDIA                          Wealth Q1             90     343  whz              
Birth       ki1000108-IRC              INDIA                          Wealth Q2             83     343  whz              
Birth       ki1000108-IRC              INDIA                          Wealth Q3             91     343  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            132     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            129     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            136     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            135     532  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            161     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            164     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            160     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            156     641  whz              
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              0       2  whz              
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              0       2  whz              
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              1       2  whz              
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              1       2  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            258     729  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            144     729  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            141     729  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            186     729  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            815    2898  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            647    2898  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            506    2898  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            930    2898  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4505   17994  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           4435   17994  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           4476   17994  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4578   17994  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            572    2394  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            560    2394  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            617    2394  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            645    2394  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     240  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             59     240  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             61     240  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             59     240  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             53     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             52     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1             60     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     235  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             59     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2             59     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     236  whz              
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4             67     270  whz              
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1             68     270  whz              
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2             71     270  whz              
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3             64     270  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             60     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             64     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63     249  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             63     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             61     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     247  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             95     368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             90     368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             93     368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             90     368  whz              
6 months    ki1000108-IRC              INDIA                          Wealth Q4            100     408  whz              
6 months    ki1000108-IRC              INDIA                          Wealth Q1            104     408  whz              
6 months    ki1000108-IRC              INDIA                          Wealth Q2            102     408  whz              
6 months    ki1000108-IRC              INDIA                          Wealth Q3            102     408  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            134     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            156     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            164     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            149     603  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            501    2019  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2019  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2019  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2019  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            140     564  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            141     564  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            148     564  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            135     564  whz              
6 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     215  whz              
6 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     215  whz              
6 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     215  whz              
6 months    ki1114097-CONTENT          PERU                           Wealth Q3             52     215  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            339     926  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            176     926  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            194     926  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            217     926  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            744    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            569    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            485    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            908    2706  whz              
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            217     816  whz              
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            203     816  whz              
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            199     816  whz              
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            197     816  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4971   16776  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           3585   16776  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           3902   16776  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4318   16776  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1199    4827  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1199    4827  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1201    4827  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1228    4827  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             30     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             61     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             60     212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             26     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     227  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     227  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     227  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     227  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             55     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     228  whz              
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             65     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             42     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             38     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             56     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             63     238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             49     238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             63     238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63     238  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             28     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             61     214  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             95     372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             91     372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             95     372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             91     372  whz              
24 months   ki1000108-IRC              INDIA                          Wealth Q4            100     409  whz              
24 months   ki1000108-IRC              INDIA                          Wealth Q1            105     409  whz              
24 months   ki1000108-IRC              INDIA                          Wealth Q2            101     409  whz              
24 months   ki1000108-IRC              INDIA                          Wealth Q3            103     409  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            122     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            155     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            157     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            145     579  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       6  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            124     487  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            121     487  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            128     487  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            114     487  whz              
24 months   ki1114097-CONTENT          PERU                           Wealth Q4             41     164  whz              
24 months   ki1114097-CONTENT          PERU                           Wealth Q1             40     164  whz              
24 months   ki1114097-CONTENT          PERU                           Wealth Q2             42     164  whz              
24 months   ki1114097-CONTENT          PERU                           Wealth Q3             41     164  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            405    1046  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            203    1046  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            215    1046  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            223    1046  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            685    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            492    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            424    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            848    2449  whz              
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            155     558  whz              
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            127     558  whz              
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            140     558  whz              
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            136     558  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2351    8594  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           1996    8594  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2103    8594  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2144    8594  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1187    4730  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1153    4730  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1169    4730  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1221    4730  whz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/ccac12df-b1f5-402f-93f2-59dacad96cdc/1d7f0a87-4bb9-406a-a57c-3eb9d56c3a5d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ccac12df-b1f5-402f-93f2-59dacad96cdc/1d7f0a87-4bb9-406a-a57c-3eb9d56c3a5d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ccac12df-b1f5-402f-93f2-59dacad96cdc/1d7f0a87-4bb9-406a-a57c-3eb9d56c3a5d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.9683521   -1.2110935   -0.7256106
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.7455194   -1.0559819   -0.4350568
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -1.1143437   -1.4123402   -0.8163472
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.9970170   -1.3455530   -0.6484810
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.4803185   -0.3936300    1.3542669
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.4410995   -0.2035862    1.0857852
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.8874174    0.4456607    1.3291742
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.6024380    0.0295552    1.1753209
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.6625000   -1.2946579   -0.0303421
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.7753846   -1.2462747   -0.3044945
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.2233333   -1.8175527   -0.6291139
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.1588889   -1.7968865   -0.5208913
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0343909   -0.1934840    0.2622658
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.0998835   -0.3547020    0.1549351
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.0980781   -0.1549657    0.3511219
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.1034722   -0.3898474    0.1829029
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.3371415   -0.1465468    0.8208297
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.3308738   -0.8037519    0.1420043
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.0446803   -0.4201032    0.5094638
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.2693392   -0.7812566    0.2425781
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.6626505    0.2747270    1.0505741
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.7912621    0.4700185    1.1125057
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.7670235    0.3726418    1.1614052
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.6303036    0.2481596    1.0124475
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5618467   -1.1433506    0.0196572
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.5232813   -1.1975420    0.1509793
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6046906   -1.1842740   -0.0251073
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.1332664   -0.6620274    0.3954946
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.8284678   -1.1084997   -0.5484359
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.3202020   -1.6394866   -1.0009175
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.9490543   -1.3058923   -0.5922163
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.8497669   -1.1733903   -0.5261435
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -1.2844776   -1.4210312   -1.1479241
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -1.3579666   -1.5082540   -1.2076792
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -1.1921902   -1.3289758   -1.0554047
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -1.3561957   -1.5020329   -1.2103585
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0966085   -1.2486823   -0.9445346
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.0890305   -1.2435488   -0.9345121
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.1330377   -1.2968768   -0.9691986
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.1474983   -1.3182742   -0.9767224
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -1.0081657   -1.1799498   -0.8363816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -1.2714474   -1.4623275   -1.0805673
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.9893196   -1.1961938   -0.7824453
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -1.0072543   -1.1991399   -0.8153688
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.8027836   -0.8886909   -0.7168763
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7795524   -0.8765088   -0.6825960
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6880373   -0.7921762   -0.5838984
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6968240   -0.7746577   -0.6189903
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.7700082   -0.8075504   -0.7324660
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.8061694   -0.8398596   -0.7724791
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.7841679   -0.8170869   -0.7512488
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.7765495   -0.8080352   -0.7450638
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.6657924   -0.7666308   -0.5649539
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.7093111   -0.8072612   -0.6113610
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.6913861   -0.7849507   -0.5978216
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.6869171   -0.7916238   -0.5822103
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0000177   -0.2832214    0.2831861
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0898283   -0.3308064    0.1511498
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.2360023   -0.4938742    0.0218696
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.1933451   -0.4396625    0.0529722
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.7185204    0.3826498    1.0543909
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.9067391    0.6011228    1.2123555
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 1.0635878    0.7151066    1.4120689
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 1.1214419    0.7903939    1.4524900
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.6734962   -0.9154863   -0.4315060
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.7783205   -1.0662689   -0.4903721
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.7780758   -1.0380719   -0.5180798
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.6165866   -0.8535470   -0.3796262
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.1832401   -0.0951977    0.4616778
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                 0.0898847   -0.1663358    0.3461051
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                 0.0930622   -0.1248789    0.3110032
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                 0.0781738   -0.2272429    0.3835906
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.9683545    0.7069803    1.2297288
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                 1.2680399    1.0455965    1.4904832
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 1.0145131    0.7901178    1.2389083
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.9563325    0.6669693    1.2456957
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.7812182    0.4754731    1.0869634
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.3589371    0.0179891    0.6998850
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.4642631    0.1905462    0.7379799
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.5246139    0.2240901    0.8251378
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.6004804    0.3567671    0.8441937
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.5646189    0.3208561    0.8083816
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.5021591    0.2330189    0.7712993
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.3927615    0.0842925    0.7012304
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0022906   -0.3357918    0.3403730
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.8756330   -1.1493911   -0.6018748
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.7511584   -1.0342874   -0.4680294
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.4038550   -0.6888910   -0.1188190
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.6479210   -0.9233519   -0.3724902
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.5080779   -0.7348949   -0.2812609
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.4778197   -0.7712146   -0.1844248
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.7632016   -1.0503935   -0.4760097
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.3223837   -0.4835786   -0.1611888
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.1811123   -0.3441904   -0.0180342
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0568363   -0.2314542    0.1177815
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.2622695   -0.4191017   -0.1054372
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1097006    0.0040921    0.2153091
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0530781   -0.0484302    0.1545864
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0999765   -0.0125635    0.2125165
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.0728327   -0.0296324    0.1752979
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.5779041   -0.7312164   -0.4245918
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.6188251   -0.7835766   -0.4540736
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.6134495   -0.7790532   -0.4478459
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.6089127   -0.8019861   -0.4158393
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                 1.3219824    1.0928853    1.5510796
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.9393140    0.7032023    1.1754258
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                 1.0928879    0.8526893    1.3330865
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                 1.1535816    0.9370419    1.3701213
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2951459    0.1753615    0.4149304
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                 0.2332138    0.0768973    0.3895303
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                 0.0988353   -0.0527083    0.2503789
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                 0.0699639   -0.0893247    0.2292526
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2054649   -0.2795303   -0.1313996
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.4498412   -0.5423387   -0.3573438
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.2585290   -0.3563532   -0.1607048
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2839429   -0.3558034   -0.2120824
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5412555    0.4101809    0.6723302
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                 0.3378271    0.1772960    0.4983582
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                 0.3706958    0.2353994    0.5059921
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                 0.5295682    0.3783001    0.6808362
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.5283356   -0.5630657   -0.4936056
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.6937525   -0.7319659   -0.6555392
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.6374933   -0.6769865   -0.5980002
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.5567772   -0.5938144   -0.5197400
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.2340381   -0.3076699   -0.1604064
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.5167693   -0.5855056   -0.4480330
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.4321760   -0.5010088   -0.3633431
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.3764599   -0.4432102   -0.3097097
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.7984506   -1.0595110   -0.5373902
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.6122281   -0.9377186   -0.2867377
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.9069169   -1.1163861   -0.6974477
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.8768229   -1.0922326   -0.6614131
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.4032303    0.0432235    0.7632370
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.1035912   -0.3103315    0.5175140
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.6537062    0.2159982    1.0914143
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.5187404    0.1131997    0.9242812
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.0377981   -1.2836170   -0.7919791
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.9561052   -1.2211203   -0.6910901
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.0488863   -1.2700965   -0.8276762
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.8886228   -1.0907241   -0.6865216
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0986318   -0.3377975    0.1405339
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.5920896   -0.7927269   -0.3914523
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.3957089   -0.6175835   -0.1738342
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.3380056   -0.5696391   -0.1063721
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0377305   -0.1615454    0.2370065
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                 0.1119847   -0.1636884    0.3876579
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.1628778   -0.1049501    0.4307056
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.0842615   -0.1703509    0.3388740
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.6054047    0.3610765    0.8497329
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.4820378    0.2636777    0.7003979
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.1615344   -0.0888907    0.4119596
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.3982683    0.1594029    0.6371337
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2664536    0.0427243    0.4901829
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0115226   -0.3233216    0.3463667
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0201336   -0.2300821    0.2703492
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1471647   -0.3753533    0.0810239
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3204886   -0.5301020   -0.1108753
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.6290388   -0.8183194   -0.4397583
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6625450   -0.8488750   -0.4762150
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.6253815   -0.8540572   -0.3967059
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.7154071   -0.9114238   -0.5193904
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.8586426   -1.0116407   -0.7056446
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.7527287   -0.9357214   -0.5697359
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.6444939   -0.8331896   -0.4557981
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -1.1324110   -1.2854486   -0.9793734
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.7894991   -0.9617825   -0.6172156
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.7241647   -0.8883683   -0.5599611
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.9746891   -1.1228000   -0.8265783
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.1428694   -1.3246294   -0.9611094
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1779089   -1.3563622   -0.9994556
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.2027417   -1.3767767   -1.0287066
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0422528   -1.2187506   -0.8657550
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.4928693    0.1987545    0.7869842
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.4361945    0.2180971    0.6542918
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                 0.5534824    0.2377269    0.8692379
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                 0.6025708    0.3265555    0.8785861
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1876377   -0.2777070   -0.0975683
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.3954478   -0.5130101   -0.2778854
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.3410496   -0.4570876   -0.2250116
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.2739203   -0.3996645   -0.1481761
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.4772385   -0.5433231   -0.4111538
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7449475   -0.8242678   -0.6656272
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6211914   -0.7081499   -0.5342328
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6506900   -0.7128154   -0.5885646
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0500778   -0.1072633    0.2074188
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.1250199   -0.2967746    0.0467347
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0644823   -0.2330220    0.1040574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                 0.0042347   -0.1595737    0.1680432
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.2744917   -1.3161079   -1.2328755
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.3372961   -1.3825901   -1.2920022
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.3271257   -1.3726587   -1.2815928
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.2931613   -1.3407137   -1.2456090
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.1612795   -1.2287970   -1.0937620
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.2766108   -1.3395539   -1.2136678
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.2333867   -1.2886795   -1.1780939
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.2192540   -1.2763665   -1.1621414


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9728358   -1.1217009   -0.8239707
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4643860    0.1360519    0.7927200
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9441026   -1.2397919   -0.6484132
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0468095   -0.1738806    0.0802616
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7637500    0.5676177    0.9598823
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0572840   -1.1606089   -0.9539590
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7422912   -0.7886598   -0.6959226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7777103   -0.7967006   -0.7587201
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7102872   -0.8371659   -0.5834085
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0512099    0.9285617    1.1738581
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5404351    0.3867005    0.6941696
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0801680    0.0273223    0.1330136
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1914471    0.1185005    0.2643936
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4417647    0.3702742    0.5132552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932502   -0.6127743   -0.5737261
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2791396   -0.3336899   -0.2245893
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0477867   -0.1301103    0.0345368
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2973086   -1.3206115   -1.2740057
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231776   -1.2550332   -1.1913220


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.2228327   -0.1715412    0.6172065
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1459916   -0.5313326    0.2393494
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0286650   -0.4540888    0.3967588
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0392190   -1.1168984    1.0384604
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.4070990   -0.5563176    1.3705155
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.1221196   -0.9097593    1.1539984
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.1128846   -0.9011492    0.6753800
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.5608333   -1.4284279    0.3067612
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.4963889   -1.3945340    0.4017562
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.1342744   -0.4766555    0.2081068
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0636872   -0.2770192    0.4043937
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.1378631   -0.5051853    0.2294591
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.6680152   -1.3491976    0.0131671
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.2924612   -0.9612943    0.3763720
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.6064807   -1.3146488    0.1016874
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1286116   -0.3564298    0.6136530
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1043730   -0.4368883    0.6456342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0323470   -0.5655561    0.5008622
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0385654   -0.8483416    0.9254724
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0428439   -0.8662783    0.7805904
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.4285803   -0.3563376    1.2134981
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.4917342   -0.8929035   -0.0905650
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1205865   -0.5490190    0.3078460
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0212991   -0.4220283    0.3794300
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0734890   -0.2710300    0.1240520
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0922874   -0.0955151    0.2800899
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0717181   -0.2659998    0.1225637
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0075780   -0.2015944    0.2167505
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0364292   -0.2520876    0.1792292
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0508898   -0.2719841    0.1702044
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2632817   -0.5109094   -0.0156540
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0188461   -0.2412753    0.2789676
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0009114   -0.2465997    0.2484224
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4          0.0232312   -0.1043715    0.1508339
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4          0.1147463   -0.0184897    0.2479822
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4          0.1059596   -0.0078770    0.2197963
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0361612   -0.0848191    0.0124968
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0141596   -0.0607535    0.0324342
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0065413   -0.0529009    0.0398184
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0435188   -0.1801285    0.0930910
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0255938   -0.1611659    0.1099783
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0211247   -0.1647331    0.1224837
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0898106   -0.4618676    0.2822463
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.2359846   -0.6194941    0.1475249
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1933275   -0.5692959    0.1826409
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.1882187   -0.2652880    0.6417254
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.3450674   -0.1396884    0.8298232
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.4029216   -0.0680191    0.8738622
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.1048243   -0.4817326    0.2720839
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.1045797   -0.4606996    0.2515403
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0569096   -0.2823889    0.3962081
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0933554   -0.4693034    0.2825926
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0901779   -0.4419668    0.2616110
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.1050662   -0.5162473    0.3061148
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.2996853   -0.0437482    0.6431189
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0461585   -0.2983360    0.3906531
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0120221   -0.4023428    0.3782987
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.4222812   -0.8801350    0.0355726
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3169552   -0.7281803    0.0942699
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2566043   -0.6859983    0.1727897
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0358616   -0.3816838    0.3099607
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0983213   -0.4613714    0.2647287
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.2077190   -0.6007577    0.1853198
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.8779236   -1.3130097   -0.4428375
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.7534490   -1.1946178   -0.3122802
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.4061457   -0.8487117    0.0364204
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.1398432   -0.2160154    0.4957017
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.1701013   -0.2312506    0.5714533
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1152805   -0.5122614    0.2817004
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.1412714   -0.0883371    0.3708800
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.2655474    0.0275496    0.5035451
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0601142   -0.1646992    0.2849277
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0566225   -0.2028336    0.0895886
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0097241   -0.1638813    0.1444332
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0368678   -0.1839433    0.1102076
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0409210   -0.2637141    0.1818720
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0355454   -0.2579970    0.1869061
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0310086   -0.2746139    0.2125968
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.3826684   -0.7126574   -0.0526794
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.2290945   -0.5608883    0.1026992
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1684008   -0.4824196    0.1456179
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0619321   -0.2586862    0.1348220
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1963106   -0.3887883   -0.0038328
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.2251820   -0.4235844   -0.0267796
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2443763   -0.3624271   -0.1263255
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0530641   -0.1752820    0.0691539
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0784780   -0.1812484    0.0242925
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.2034285   -0.4109790    0.0041221
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.1705597   -0.3594884    0.0183690
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0116874   -0.2120151    0.1886404
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1654169   -0.2150124   -0.1158214
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1091577   -0.1602264   -0.0580890
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0284416   -0.0777037    0.0208206
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2827311   -0.3821220   -0.1833403
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1981378   -0.2979594   -0.0983162
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1424218   -0.2391325   -0.0457111
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.1862225   -0.2303619    0.6028069
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1084663   -0.4430552    0.2261227
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0783723   -0.4168760    0.2601315
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.2996390   -0.8473105    0.2480324
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.2504760   -0.3125316    0.8134836
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.1155101   -0.4241676    0.6551879
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0816929   -0.2798491    0.4432348
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0110883   -0.3428699    0.3206934
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.1491752   -0.1688335    0.4671839
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.4934578   -0.8058808   -0.1810347
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.2970770   -0.6235845    0.0294304
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.2393738   -0.5727351    0.0939875
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0742542   -0.2618622    0.4103706
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.1251472   -0.2099561    0.4602506
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0465310   -0.2704618    0.3635238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1233669   -0.4507677    0.2040340
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.4438703   -0.7931132   -0.0946274
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2071364   -0.5484063    0.1341336
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.2549310   -0.6617646    0.1519026
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.2463200   -0.5803817    0.0877417
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.4136182   -0.7321637   -0.0950727
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.3085502   -0.5912414   -0.0258590
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.3420564   -0.6227170   -0.0613957
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.3048929   -0.6152632    0.0054774
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1432356   -0.3920634    0.1055922
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0373216   -0.3050237    0.2303805
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0709132   -0.2008705    0.3426969
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.3429120    0.1143783    0.5714457
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.4082463    0.1845874    0.6319052
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.1577219   -0.0539240    0.3693678
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0350395   -0.2889005    0.2188215
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0598723   -0.3096452    0.1899007
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.1006166   -0.1520861    0.3533194
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0566749   -0.4232772    0.3099275
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0606130   -0.3728012    0.4940272
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.1097015   -0.2951953    0.5145983
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2078101   -0.3559252   -0.0596950
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1534119   -0.3003197   -0.0065041
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0862826   -0.2410813    0.0685161
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2677090   -0.3700886   -0.1653294
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1439529   -0.2525648   -0.0353409
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1734515   -0.2634810   -0.0834221
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1750977   -0.4070515    0.0568561
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.1145600   -0.3455539    0.1164339
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0458430   -0.2733478    0.1816618
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0628044   -0.1208557   -0.0047532
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0526340   -0.1123847    0.0071166
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0186696   -0.0822880    0.0449488
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1153313   -0.2062457   -0.0244169
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0721072   -0.1584303    0.0142160
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0579744   -0.1466437    0.0306949


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0044838   -0.2248958    0.2159283
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0159325   -0.7810481    0.7491831
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.2816026   -0.8500282    0.2868230
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0812004   -0.2875345    0.1251337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.5100888   -0.9779121   -0.0422656
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1010995   -0.2423495    0.4445484
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0970211   -0.3151053    0.5091476
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1821153   -0.4290131    0.0647825
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0139810   -0.1309581    0.1029960
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0198346   -0.1491227    0.1094535
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0491182   -0.1763313    0.0780948
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0604924   -0.0106108    0.1315955
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0077021   -0.0384193    0.0230151
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0224574   -0.1072316    0.0623167
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.1333157   -0.3713518    0.1047205
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.2535570   -0.0348435    0.5419574
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0367911   -0.2508911    0.1773090
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0728093   -0.3091791    0.1635605
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0828553   -0.1405965    0.3063072
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.2407832   -0.5083417    0.0267754
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0642591   -0.2810287    0.1525105
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5049672   -0.7863898   -0.2235446
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0489913   -0.1897624    0.2877450
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1232930   -0.0237951    0.2703812
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0295326   -0.1210906    0.0620254
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0259375   -0.1620380    0.1101629
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.2535506   -0.4571524   -0.0499488
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1036988   -0.1991890   -0.0082087
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0883784   -0.1524560   -0.0243008
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0994908   -0.2154035    0.0164219
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0649146   -0.0937618   -0.0360673
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1561214   -0.2186919   -0.0935509
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0208418   -0.2320508    0.1903671
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0593930   -0.2402422    0.3590282
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0861461   -0.1211825    0.2934747
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.2762805   -0.4782842   -0.0742767
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0734676   -0.0955213    0.2424566
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1963746   -0.4045466    0.0117974
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2116561   -0.4038492   -0.0194630
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2366619   -0.4155952   -0.0577286
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0304079   -0.1973156    0.1364997
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2395440    0.0986222    0.3804658
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0065586   -0.1479477    0.1610650
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0739599   -0.1788259    0.3267457
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0915019   -0.1617017   -0.0213021
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1327207   -0.1888928   -0.0765486
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0978645   -0.2309275    0.0351985
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0228169   -0.0585890    0.0129552
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0618980   -0.1186742   -0.0051218
