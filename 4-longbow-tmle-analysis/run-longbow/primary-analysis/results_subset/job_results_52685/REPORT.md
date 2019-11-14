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

agecat      studyid                    country                        hhwealth_quart    n_cell       n
----------  -------------------------  -----------------------------  ---------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             56     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             48     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             46     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             51     201
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             10      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             20      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             16      57
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             11      57
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4              8      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1             13      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2              9      39
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3              9      39
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              6      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              8      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              3      25
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              8      25
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4             53     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1             55     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2             51     210
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3             51     210
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             17      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             26      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             24      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             28      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             23     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             26     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             30     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             33     112
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             32      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             13      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             19      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             22      86
Birth       ki1000108-IRC              INDIA                          Wealth Q4             79     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1             90     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2             83     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3             91     343
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            132     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            129     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            136     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            135     532
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            161     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            164     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            160     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            156     641
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              1       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            258     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            144     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            141     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            186     729
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            815    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            647    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            506    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            930    2898
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           6197   22061
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           5071   22061
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           5253   22061
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           5540   22061
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            572    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            560    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            617    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            645    2394
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             59     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             61     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             59     240
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             53     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             52     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     209
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1             60     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     235
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2             59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     236
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4             67     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1             68     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2             71     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3             64     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             60     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             64     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             61     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             95     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             90     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             93     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             90     368
6 months    ki1000108-IRC              INDIA                          Wealth Q4            100     408
6 months    ki1000108-IRC              INDIA                          Wealth Q1            104     408
6 months    ki1000108-IRC              INDIA                          Wealth Q2            102     408
6 months    ki1000108-IRC              INDIA                          Wealth Q3            102     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            134     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            156     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            164     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            149     603
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            501    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2019
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            140     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            141     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            148     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            135     564
6 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3             52     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            339     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            176     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            194     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            217     926
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            744    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            569    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            485    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            908    2706
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            217     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            203     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            199     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            197     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4952   16718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           3574   16718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           3891   16718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4301   16718
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1199    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1199    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1201    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1228    4827
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             30     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             61     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             60     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             26     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     169
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     227
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             55     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     228
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             65     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             42     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             38     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             56     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             49     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             28     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             61     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             95     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             91     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             95     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             91     372
24 months   ki1000108-IRC              INDIA                          Wealth Q4            100     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1            105     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2            101     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3            103     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            122     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            155     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            157     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            145     579
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            124     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            121     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            128     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            114     487
24 months   ki1114097-CONTENT          PERU                           Wealth Q4             41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1             40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2             42     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3             41     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            405    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            203    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            215    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            223    1046
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            685    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            492    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            424    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            848    2449
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            155     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            127     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            140     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            136     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2327    8529
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           1983    8529
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2090    8529
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2129    8529
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1187    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1153    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1169    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1221    4730


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







# Results Detail

## Results Plots
![](/tmp/ac689fa0-31b6-433b-b971-1274d775d39d/8f73998f-c06d-4252-afaf-d547c5d351db/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9616298   -1.3072225   -0.6160372
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2489507   -0.5129172    1.0108187
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8962874   -1.6865395   -0.1060353
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0280629   -0.2301984    0.2863241
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2385905   -0.2503720    0.7275531
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3763253    0.0500176    0.7026331
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1331565   -0.6437298    0.3774167
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.8491263   -1.2122125   -0.4860400
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1671126   -1.3058821   -1.0283430
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0561476   -1.2309123   -0.8813828
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0721335   -1.2687919   -0.8754751
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7691426   -0.8613895   -0.6768957
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7395369   -0.7687639   -0.7103098
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.7060549   -0.8084100   -0.6036997
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0281678   -0.2793163    0.2229808
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7521056    0.4545708    1.0496404
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6585026   -0.9099522   -0.4070530
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2718950   -0.5060884   -0.0377016
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.2428562    1.0229325    1.4627799
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.8532870    0.5197994    1.1867745
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4605736    0.2000974    0.7210498
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0802044   -0.4020023    0.2415936
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7771439   -1.0348428   -0.5194450
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0485145   -0.2238127    0.1267838
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0444742   -0.0647450    0.1536934
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5551263   -0.7116784   -0.3985742
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.2436933    1.0118843    1.4755024
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3341535    0.1970506    0.4712564
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2335555   -0.3144112   -0.1526999
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.6374686    0.5044649    0.7704723
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5410896   -0.5750927   -0.5070865
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2359467   -0.3098537   -0.1620397
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7246550   -1.0009254   -0.4483847
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6664975    0.2851085    1.0478864
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0261874   -1.2493626   -0.8030123
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1655051   -0.4199758    0.0889656
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0542927   -0.3155185    0.2069330
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4737974    0.2266821    0.7209127
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2467710    0.0252978    0.4682443
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3361920   -0.5426870   -0.1296970
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7508104   -0.9412664   -0.5603544
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5977782   -0.7727265   -0.4228298
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1821856   -1.3603154   -1.0040557
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.3250766    0.0460645    0.6040887
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1856856   -0.2748233   -0.0965478
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4713835   -0.5375792   -0.4051878
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0505910   -0.2055670    0.1043850
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2861632   -1.3283010   -1.2440253
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1574324   -1.2257639   -1.0891009


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9721393   -1.1211171   -0.8231615
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4643860    0.1360519    0.7927200
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9441026   -1.2397919   -0.6484132
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0468095   -0.1738806    0.0802616
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7637500    0.5676177    0.9598823
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0572840   -1.1606089   -0.9539590
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7422912   -0.7886598   -0.6959226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7500494   -0.7678904   -0.7322084
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1340556   -0.2631866   -0.0049245
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7105603   -0.8374801   -0.5836404
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0552716    0.9326038    1.1779394
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5409906    0.3873048    0.6946765
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0801680    0.0273223    0.1330136
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6038416   -0.6899448   -0.5177384
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1914471    0.1185005    0.2643936
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4417647    0.3702742    0.5132552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5927536   -0.6123074   -0.5731998
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0539486   -0.0712465    0.1791437
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1363107   -1.2252817   -1.0473398
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2791396   -0.3336899   -0.2245893
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0477867   -0.1301103    0.0345368
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2989248   -1.3223008   -1.2755489
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231776   -1.2550332   -1.1913220


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0105095   -0.3037963    0.2827774
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2154352   -0.4541423    0.8850127
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0478151   -0.7457524    0.6501221
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0748724   -0.2991852    0.1494404
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4115379   -0.8821927    0.0591169
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3874247    0.0999057    0.6749437
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3316691   -0.7984148    0.1350767
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1614568   -0.4487422    0.1258286
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1313461   -0.2496954   -0.0129968
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0602955   -0.2020362    0.0814452
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0148496   -0.1437772    0.1734763
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0268514   -0.0542756    0.1079783
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0105125   -0.0340317    0.0130066
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0178051   -0.0672075    0.1028176
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1058878   -0.3211964    0.1094209
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2196169   -0.0497674    0.4890012
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0520576   -0.2725776    0.1684623
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3829402    0.1752095    0.5906709
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1875846   -0.3865874    0.0114182
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3122963   -0.5975596   -0.0270331
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0756477   -0.1518068    0.3031022
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4224723   -0.6944101   -0.1505345
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1782142   -0.0474246    0.4038530
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1505762   -0.2955235   -0.0056289
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0356938   -0.0597960    0.1311836
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0487153   -0.1880811    0.0906505
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1752616   -0.3802310    0.0297078
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1427064   -0.2603377   -0.0250752
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0602878   -0.1306648    0.0100892
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1957039   -0.3141924   -0.0772153
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0516640   -0.0797739   -0.0235542
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1542128   -0.2169526   -0.0914730
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0955336   -0.3581049    0.1670377
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2072667   -0.5485459    0.1340124
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0738967   -0.1250873    0.2728807
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2109423   -0.4233006    0.0014161
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1747405   -0.0568048    0.4062858
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0589445   -0.2752570    0.1573680
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1928224   -0.3823184   -0.0033265
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2209585   -0.3983574   -0.0435597
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0049954   -0.1559077    0.1658985
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2950888   -0.4370013   -0.1531764
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0458748   -0.1116281    0.2033777
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.2417527   -0.0008101    0.4843154
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0934540   -0.1628660   -0.0240420
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1385757   -0.1948762   -0.0822752
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0028043   -0.1327553    0.1383639
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0127617   -0.0499343    0.0244109
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0657452   -0.1231155   -0.0083748
