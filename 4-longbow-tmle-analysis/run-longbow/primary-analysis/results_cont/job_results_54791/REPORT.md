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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             56     213  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             52     213  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             51     213  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             54     213  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             11      60  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             21      60  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             17      60  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             11      60  haz              
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4              8      41  haz              
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1             14      41  haz              
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2              9      41  haz              
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3             10      41  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              6      26  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              9      26  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              3      26  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              8      26  haz              
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4             54     215  haz              
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1             55     215  haz              
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2             54     215  haz              
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3             52     215  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             17      96  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             27      96  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             24      96  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             28      96  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             26     120  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             28     120  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             32     120  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             34     120  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             32      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             15      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             20      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             25      92  haz              
Birth       ki1000108-IRC              INDIA                          Wealth Q4             91     388  haz              
Birth       ki1000108-IRC              INDIA                          Wealth Q1             98     388  haz              
Birth       ki1000108-IRC              INDIA                          Wealth Q2             99     388  haz              
Birth       ki1000108-IRC              INDIA                          Wealth Q3            100     388  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            132     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            134     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            136     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            137     539  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            173     696  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            175     696  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            174     696  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            174     696  haz              
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              0       2  haz              
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              0       2  haz              
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              1       2  haz              
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              1       2  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            293     816  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            157     816  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            161     816  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            205     816  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            842    3049  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            687    3049  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            538    3049  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            982    3049  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           5278   22434  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           5772   22434  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           5701   22434  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           5683   22434  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            654    2820  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            685    2820  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            722    2820  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            759    2820  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     240  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             59     240  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             61     240  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             59     240  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             53     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             52     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1             60     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     235  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             59     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2             59     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     236  haz              
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4             67     270  haz              
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1             68     270  haz              
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2             71     270  haz              
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3             64     270  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             60     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             64     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63     249  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             63     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             61     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     247  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             94     369  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             91     369  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             94     369  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             90     369  haz              
6 months    ki1000108-IRC              INDIA                          Wealth Q4             99     407  haz              
6 months    ki1000108-IRC              INDIA                          Wealth Q1            105     407  haz              
6 months    ki1000108-IRC              INDIA                          Wealth Q2            100     407  haz              
6 months    ki1000108-IRC              INDIA                          Wealth Q3            103     407  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            135     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            156     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            164     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            149     604  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            502    2020  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2020  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2020  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2020  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            140     564  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            141     564  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            148     564  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            135     564  haz              
6 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     215  haz              
6 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     215  haz              
6 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     215  haz              
6 months    ki1114097-CONTENT          PERU                           Wealth Q3             52     215  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            339     925  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            175     925  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            195     925  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            216     925  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            743    2708  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            570    2708  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            485    2708  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            910    2708  haz              
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            217     816  haz              
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            203     816  haz              
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            199     816  haz              
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            197     816  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4984   16803  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           3586   16803  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           3907   16803  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4326   16803  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1199    4825  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1196    4825  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1201    4825  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1229    4825  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             30     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             61     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             60     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             26     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     227  haz              
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     227  haz              
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     227  haz              
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     227  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             55     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     228  haz              
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             65     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             42     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             38     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             56     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             63     238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             49     238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             63     238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63     238  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             28     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             61     214  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             94     371  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             91     371  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             95     371  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             91     371  haz              
24 months   ki1000108-IRC              INDIA                          Wealth Q4            100     409  haz              
24 months   ki1000108-IRC              INDIA                          Wealth Q1            105     409  haz              
24 months   ki1000108-IRC              INDIA                          Wealth Q2            101     409  haz              
24 months   ki1000108-IRC              INDIA                          Wealth Q3            103     409  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            121     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            155     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            157     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            145     578  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       6  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            124     488  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            122     488  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            128     488  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            114     488  haz              
24 months   ki1114097-CONTENT          PERU                           Wealth Q4             41     164  haz              
24 months   ki1114097-CONTENT          PERU                           Wealth Q1             40     164  haz              
24 months   ki1114097-CONTENT          PERU                           Wealth Q2             42     164  haz              
24 months   ki1114097-CONTENT          PERU                           Wealth Q3             41     164  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            402    1035  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            202    1035  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            212    1035  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            219    1035  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            688    2445  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            489    2445  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            423    2445  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            845    2445  haz              
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            160     574  haz              
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            129     574  haz              
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            146     574  haz              
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            139     574  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2366    8623  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           2001    8623  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2106    8623  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2150    8623  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1193    4747  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1156    4747  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1173    4747  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1225    4747  haz              


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
![](/tmp/47378513-258a-4961-8286-7ead3c00d920/0fdd5a36-6573-4b08-b702-b89abf9d946f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/47378513-258a-4961-8286-7ead3c00d920/0fdd5a36-6573-4b08-b702-b89abf9d946f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/47378513-258a-4961-8286-7ead3c00d920/0fdd5a36-6573-4b08-b702-b89abf9d946f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.7539514   -0.9821335   -0.5257693
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.3627096   -1.6375680   -1.0878512
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -1.2325851   -1.5323021   -0.9328680
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.9331235   -1.2036537   -0.6625932
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.8670097   -1.6787803   -0.0552391
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.9370014   -1.4861648   -0.3878381
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                -0.6319867   -1.1266517   -0.1373217
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                -0.4703236   -1.3302580    0.3896107
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.0537500   -1.5024873   -0.6050127
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -1.1307143   -1.7957911   -0.4656374
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.4622222   -2.0687425   -0.8557019
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.2070000   -1.8208171   -0.5931829
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.9865041   -1.1849904   -0.7880178
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.8104432   -1.0012928   -0.6195936
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.9842591   -1.1994310   -0.7690871
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.9510101   -1.1838092   -0.7182110
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.3963245   -0.6996852   -0.0929638
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.6227636   -1.0115940   -0.2339333
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.4608120   -0.8283936   -0.0932304
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.4033490   -0.7782163   -0.0284817
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.1046856   -1.6257278   -0.5836433
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.2610897   -1.6751871   -0.8469922
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.1285348   -1.5611901   -0.6958795
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.9643818   -1.3390956   -0.5896681
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.0534276   -1.4092057   -0.6976496
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.5731294   -1.2295836    0.0833248
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.7992407   -1.2908688   -0.3076126
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.2128699   -1.6528129   -0.7729269
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2560548   -0.5721090    0.0599994
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.1810651   -0.4585708    0.0964405
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.3930911   -0.6878442   -0.0983379
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.3865229   -0.6526387   -0.1204072
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -1.0013348   -1.1074568   -0.8952128
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.8867094   -1.0279276   -0.7454912
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.7959229   -0.9107458   -0.6811000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.8619968   -1.0011342   -0.7228594
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0221884   -1.1778329   -0.8665439
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1747687   -1.3152940   -1.0342434
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.0456406   -1.1987731   -0.8925081
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0745440   -1.2343222   -0.9147659
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2140937    0.0710154    0.3571719
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                 0.0415024   -0.1306805    0.2136852
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                 0.1010472   -0.1005861    0.3026805
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                 0.1571922   -0.0205271    0.3349114
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1052267   -0.1730325   -0.0374208
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.3288453   -0.4067187   -0.2509719
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.3105524   -0.4007033   -0.2204016
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2843913   -0.3510527   -0.2177300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.5690625   -1.6034412   -1.5346838
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.6164475   -1.6458797   -1.5870154
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.5943993   -1.6244112   -1.5643875
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.5861628   -1.6157670   -1.5565586
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.4161670   -1.5237917   -1.3085423
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.6419773   -1.7345624   -1.5493922
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.5558710   -1.6484184   -1.4633236
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.4833219   -1.5794182   -1.3872255
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.9168546   -1.1370627   -0.6966464
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.2966361   -1.5425676   -1.0507047
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -1.3668163   -1.5945469   -1.1390857
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -1.2273440   -1.4621128   -0.9925751
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0483651   -0.2071256    0.3038557
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.1258185   -0.1506955    0.4023324
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.1798607   -0.1089767    0.4686981
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0701923   -0.2476064    0.3879910
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.2043146   -1.3688982   -1.0397310
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -1.3191340   -1.6034385   -1.0348294
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.2206054   -1.4920677   -0.9491432
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.0905734   -1.3032763   -0.8778705
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.4707483   -0.7004830   -0.2410135
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.5670425   -0.8090643   -0.3250206
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.4425444   -0.6596987   -0.2253902
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.8154143   -1.0300051   -0.6008234
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -1.2544642   -1.4925779   -1.0163506
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -1.1747900   -1.4129397   -0.9366404
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -1.4087313   -1.6024647   -1.2149980
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -1.4723589   -1.7044147   -1.2403031
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.8852278   -1.1730044   -0.5974512
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -1.1420407   -1.4394590   -0.8446225
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -1.2093141   -1.4515619   -0.9670663
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -1.0058344   -1.2236304   -0.7880383
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.4567048   -1.6736597   -1.2397498
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.3091241   -1.5558294   -1.0624189
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.3903312   -1.6264463   -1.1542160
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -1.3092603   -1.5772614   -1.0412593
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.8001879   -2.0787495   -1.5216263
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -1.0646648   -1.3143112   -0.8150183
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -1.4229620   -1.7116435   -1.1342805
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.4291047   -1.7214391   -1.1367703
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -1.0639118   -1.3473560   -0.7804675
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.3971062   -1.6407698   -1.1534426
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                -1.4254130   -1.6619559   -1.1888701
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -1.0302017   -1.2853048   -0.7750986
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -1.3717185   -1.5281133   -1.2153237
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.9533129   -1.1098220   -0.7968038
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.9390139   -1.0708419   -0.8071858
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -1.1588325   -1.3018856   -1.0157793
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.7259939   -0.8212775   -0.6307104
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.4090099   -0.4982014   -0.3198184
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.5405906   -0.6475651   -0.4336161
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.5250153   -0.6104560   -0.4395746
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.3024216   -1.4468359   -1.1580072
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.4415985   -1.5984267   -1.2847703
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.3343515   -1.5010130   -1.1676900
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.3152876   -1.4685514   -1.1620237
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.1954565   -0.5542904    0.1633774
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.3309084   -0.6588114   -0.0030055
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.1609515   -0.5238852    0.2019822
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.3251482   -0.6786305    0.0283340
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -1.6806229   -1.7859228   -1.5753230
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -1.9446547   -2.1020224   -1.7872871
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -1.9001695   -2.0497699   -1.7505691
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -1.8251482   -1.9883549   -1.6619415
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.9288092   -1.0096268   -0.8479915
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -1.2518394   -1.3495879   -1.1540909
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -1.1728602   -1.2700484   -1.0756719
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -1.2421491   -1.3137979   -1.1705003
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -1.6188790   -1.7540523   -1.4837058
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -1.6039870   -1.7617180   -1.4462561
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -1.6974111   -1.8338306   -1.5609916
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -1.6484025   -1.7752489   -1.5215560
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.2060841   -1.2457475   -1.1664207
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.4488720   -1.4901824   -1.4075616
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.3968799   -1.4347074   -1.3590525
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.3163110   -1.3539662   -1.2786558
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.1545686   -1.2301102   -1.0790270
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.5015186   -1.5672683   -1.4357688
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.4187387   -1.4870362   -1.3504412
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.3044755   -1.3733583   -1.2355927
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -1.6910824   -1.9382970   -1.4438677
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.9921067   -2.3510328   -1.6331807
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -2.2398528   -2.4814035   -1.9983021
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -1.9824649   -2.1926351   -1.7722947
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.1162427   -0.1920713    0.4245567
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.1758942   -0.5628519    0.2110635
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                -0.0389494   -0.4282022    0.3503034
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0521030   -0.2583138    0.3625199
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.8235622   -2.0308651   -1.6162592
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -2.0680779   -2.3486429   -1.7875130
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.8130434   -2.1051869   -1.5208998
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.7822063   -2.0074210   -1.5569916
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -1.1787161   -1.4463191   -0.9111131
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -1.1533374   -1.3892265   -0.9174483
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -1.1888275   -1.4326784   -0.9449765
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -1.6912167   -1.8977042   -1.4847292
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -1.7268070   -1.9395809   -1.5140331
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -1.5655000   -1.8428248   -1.2881753
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -1.9402439   -2.1698156   -1.7106721
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -1.7919596   -2.0447917   -1.5391275
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -1.1673346   -1.4128682   -0.9218010
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -1.7877420   -2.1112799   -1.4642042
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -1.8482960   -2.1269526   -1.5696394
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -1.8114974   -2.0389392   -1.5840557
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -2.6969723   -2.9213937   -2.4725509
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -2.3220333   -2.7032624   -1.9408042
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -2.7165197   -2.9782416   -2.4547978
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -2.7672664   -3.0280569   -2.5064760
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -2.6106600   -2.8075494   -2.4137707
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -2.5164946   -2.7064478   -2.3265414
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -2.6170000   -2.8150134   -2.4189865
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -2.4786773   -2.6934663   -2.2638884
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -1.5128790   -1.7025074   -1.3232506
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.9786767   -2.1628621   -1.7944914
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -1.8928218   -2.0736775   -1.7119660
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -1.7970740   -1.9768173   -1.6173308
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -2.0795651   -2.2205730   -1.9385572
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -1.3364469   -1.5049765   -1.1679174
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -1.4088946   -1.5627648   -1.2550244
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -1.7193235   -1.8809825   -1.5576646
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.8268211   -1.9793810   -1.6742612
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -2.0570146   -2.2341843   -1.8798449
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.9186021   -2.0879781   -1.7492262
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.7408900   -1.9123344   -1.5694456
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.5402967   -0.8625678   -0.2180255
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.8249133   -1.1807988   -0.4690279
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.6526336   -1.0062969   -0.2989704
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.8188585   -1.1470041   -0.4907129
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -2.8089154   -2.9056295   -2.7122014
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -3.1267821   -3.2742002   -2.9793640
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -3.0711525   -3.2158017   -2.9265033
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -3.1264393   -3.2776572   -2.9752214
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -2.0275214   -2.1101048   -1.9449379
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -2.6685790   -2.7690718   -2.5680863
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -2.5281974   -2.6355683   -2.4208265
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -2.5430330   -2.6182816   -2.4677843
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -1.7631076   -1.9194696   -1.6067455
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -1.8650370   -2.0539434   -1.6761305
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -2.0721685   -2.2354308   -1.9089062
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -1.8176008   -1.9738813   -1.6613204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.8269580   -1.8726591   -1.7812569
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -2.1742503   -2.2213483   -2.1271523
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -2.0944088   -2.1403643   -2.0484534
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -2.0257741   -2.0741250   -1.9774231
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.5574604   -1.6234312   -1.4914895
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.9564026   -2.0188076   -1.8939977
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.8822468   -1.9468058   -1.8176877
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.7329159   -1.7948932   -1.6709387


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2070732   -1.5254820   -0.8886644
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9141395   -1.0364098   -0.7918693
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.5523958   -0.7550074   -0.3497843
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1225000   -1.3335666   -0.9114334
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1452941    0.0610109    0.2295774
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2491505   -0.2881717   -0.2101294
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5897094   -1.6089856   -1.5704331
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2026806   -1.3203025   -1.0850586
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2070638   -1.3255909   -1.0885368
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3248549   -1.4336721   -1.2160378
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0547925   -1.1843544   -0.9252306
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5442232   -0.5932373   -0.4952090
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8112324   -1.8807284   -1.7417365
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6426961   -1.7120603   -1.5733318
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3132090   -1.3363486   -1.2900693
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9893430   -3.0546993   -2.9239867
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8822648   -1.9637218   -1.8008078
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0135591   -2.0412422   -1.9858759
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7803708   -1.8158650   -1.7448765


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.6087582   -0.9662782   -0.2512382
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.4786337   -0.8570508   -0.1002166
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1791721   -0.5341078    0.1757636
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0699917   -1.0604291    0.9204457
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.2350230   -0.7227888    1.1928349
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.3966861   -0.7797229    1.5730951
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0769643   -0.8792687    0.7253402
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.4084722   -1.1629469    0.3460025
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.1532500   -0.9136030    0.6071030
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.1760609   -0.0819562    0.4340781
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0022450   -0.2725121    0.2770021
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0354940   -0.2504073    0.3213953
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2264391   -0.7024199    0.2495416
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0644875   -0.5332146    0.4042397
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0070245   -0.4701403    0.4560913
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.1564041   -0.8342142    0.5214059
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0238493   -0.7043372    0.6566387
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1403037   -0.5056543    0.7862617
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.4802982   -0.2677054    1.2283019
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.2541869   -0.3533252    0.8616990
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.1594423   -0.7269360    0.4080515
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0749897   -0.3254611    0.4754406
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1370362   -0.5475689    0.2734965
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1304681   -0.5227711    0.2618349
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.1146254   -0.0502729    0.2795237
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.2054119    0.0601009    0.3507230
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.1393380   -0.0242083    0.3028844
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1525803   -0.3580788    0.0529182
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0234522   -0.2373497    0.1904454
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0523556   -0.2712416    0.1665303
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.1725913   -0.3965995    0.0514169
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1130465   -0.3603310    0.1342381
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0569015   -0.2850942    0.1712912
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2236186   -0.3247885   -0.1224487
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.2053258   -0.3160723   -0.0945793
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1791647   -0.2719066   -0.0864227
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0473850   -0.0869378   -0.0078322
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0253368   -0.0649877    0.0143140
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0171003   -0.0576195    0.0234189
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2258103   -0.3669022   -0.0847185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1397040   -0.2810617    0.0016537
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0671549   -0.2108014    0.0764916
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3797816   -0.7106098   -0.0489533
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.4499617   -0.7683660   -0.1315575
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.3104894   -0.6331506    0.0121718
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0774534   -0.2992914    0.4541982
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.1314957   -0.2521213    0.5151126
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0218272   -0.3836880    0.4273425
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.1148194   -0.4438989    0.2142602
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0162908   -0.3343309    0.3017493
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.1137412   -0.1554431    0.3829256
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0962942   -0.4304144    0.2378260
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0282039   -0.2877508    0.3441585
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.3446660   -0.6596572   -0.0296748
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0796742   -0.2582513    0.4175997
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.1542671   -0.4622910    0.1537568
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.2178947   -0.5500267    0.1142374
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2568129   -0.6708829    0.1572571
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3240863   -0.7004762    0.0523036
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.1206066   -0.4821873    0.2409742
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1475806   -0.1787554    0.4739167
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0663736   -0.2528678    0.3856151
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1474444   -0.1946496    0.4895384
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.7355231    0.3621132    1.1089330
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.3772259   -0.0230339    0.7774857
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.3710832   -0.0317147    0.7738811
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.3331944   -0.7038067    0.0374179
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3615013   -0.7268827    0.0038801
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0337101   -0.3454042    0.4128243
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.4184056    0.1966198    0.6401914
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.4327046    0.2278535    0.6375558
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.2128860    0.0008765    0.4248956
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.3169840    0.1888053    0.4451628
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1854033    0.0440408    0.3267658
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.2009787    0.0752243    0.3267330
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1391769   -0.3519609    0.0736070
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0319299   -0.2515473    0.1876874
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0128660   -0.2227263    0.1969943
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.1354519   -0.6226586    0.3517547
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0345050   -0.4752627    0.5442728
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1296917   -0.6310897    0.3717063
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2640318   -0.4535891   -0.0744746
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2195466   -0.4024196   -0.0366736
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.1445253   -0.3387197    0.0496692
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.3230302   -0.4498393   -0.1962212
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.2440510   -0.3703774   -0.1177247
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.3133400   -0.4213345   -0.2053455
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0148920   -0.1933443    0.2231283
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0785321   -0.2717087    0.1146446
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0295234   -0.2157440    0.1566972
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2427879   -0.2977555   -0.1878203
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1907958   -0.2399993   -0.1415924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1102269   -0.1614632   -0.0589905
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3469500   -0.4452483   -0.2486516
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.2641701   -0.3609929   -0.1673473
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1499069   -0.2524396   -0.0473741
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3010244   -0.7366634    0.1346146
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.5487704   -0.8969459   -0.2005950
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.2913826   -0.6163393    0.0335741
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.2921369   -0.7879889    0.2037151
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.1551921   -0.6548653    0.3444810
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0641397   -0.5044303    0.3761509
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.2445158   -0.5942612    0.1052297
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0105188   -0.3484892    0.3695268
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0413558   -0.2645594    0.3472711
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0253787   -0.3318284    0.3825859
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0101114   -0.3729006    0.3526778
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.5125006   -0.8512360   -0.1737652
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.1613070   -0.1883945    0.5110084
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.2134368   -0.5265702    0.0996965
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0651526   -0.3957195    0.2654144
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.6204075   -1.0273629   -0.2134521
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.6809614   -1.0530350   -0.3088878
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.6441628   -0.9794749   -0.3088508
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.3749390   -0.0682952    0.8181732
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0195474   -0.3637217    0.3246268
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0702942   -0.4144338    0.2738455
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0941655   -0.1792503    0.3675812
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0063399   -0.2853592    0.2726793
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.1319827   -0.1589338    0.4228992
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.4657977   -0.7295418   -0.2020536
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3799428   -0.6409423   -0.1189433
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.2841950   -0.5448288   -0.0235613
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.7431182    0.5245425    0.9616939
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.6706705    0.4627105    0.8786305
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.3602416    0.1468451    0.5736380
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.2301935   -0.4627896    0.0024027
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0917810   -0.3183438    0.1347818
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0859311   -0.1422584    0.3141206
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2846167   -0.7621686    0.1929353
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.1123370   -0.5889963    0.3643223
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2785618   -0.7360240    0.1789003
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.3178667   -0.4936425   -0.1420909
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2622371   -0.4357185   -0.0887557
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.3175239   -0.4962750   -0.1387728
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.6410577   -0.7712089   -0.5109064
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.5006761   -0.6361358   -0.3652164
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.5155116   -0.6274992   -0.4035240
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1019294   -0.3470910    0.1432322
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.3090609   -0.5349655   -0.0831563
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0544933   -0.2768158    0.1678293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3472923   -0.4087056   -0.2858790
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.2674508   -0.3276828   -0.2072189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1988161   -0.2621738   -0.1354583
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3989423   -0.4877217   -0.3101629
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.3247864   -0.4121465   -0.2374263
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1754556   -0.2613158   -0.0895954


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2991003   -0.5094147   -0.0887858
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.1706764   -0.5624847    0.9038374
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.1533232   -0.6267868    0.3201405
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0723645   -0.0922303    0.2369594
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1560713   -0.4543845    0.1422419
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0178144   -0.4875490    0.4519201
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0922320   -0.2095445    0.3940085
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0519864   -0.3090546    0.2050818
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1162328    0.0236534    0.2088121
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0629696   -0.1943169    0.0683777
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0687995   -0.1845297    0.0469306
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1439239   -0.2011853   -0.0866624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0206469   -0.0475497    0.0062559
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1074465   -0.1992346   -0.0156584
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2858260   -0.4815480   -0.0901040
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0007893   -0.2317612    0.2301826
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0027492   -0.1697485    0.1642501
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0908337   -0.2898164    0.1081491
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0703907   -0.2753956    0.1346141
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1695647   -0.4143107    0.0751813
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0879598   -0.1051821    0.2811017
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3767371    0.1349847    0.6184895
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1704945   -0.4103159    0.0693270
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2800270    0.1407504    0.4193036
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1817707    0.1007752    0.2627663
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0484177   -0.1769274    0.0800920
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.1184652   -0.4307313    0.1938009
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1306095   -0.2189992   -0.0422198
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2117632   -0.2805573   -0.1429692
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0238170   -0.1407806    0.0931465
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.1071248   -0.1375028   -0.0767469
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1894791   -0.2523809   -0.1265772
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2873139   -0.4981355   -0.0764922
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.1101283   -0.3674348    0.1471782
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0626273   -0.2535638    0.1283093
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.1288716   -0.3541260    0.0963827
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0256640   -0.2013807    0.1500528
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.4777250   -0.6947812   -0.2606687
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0514115   -0.1469487    0.2497718
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0517921   -0.1179615    0.2215457
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2858985   -0.4501644   -0.1216326
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.4771430    0.3420870    0.6121989
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0605969   -0.1957013    0.0745075
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.1559229   -0.4385656    0.1267199
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1804276   -0.2590778   -0.1017774
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.3865932   -0.4579314   -0.3152549
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.1191572   -0.2533327    0.0150183
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.1866011   -0.2232221   -0.1499801
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.2229104   -0.2766236   -0.1691972
