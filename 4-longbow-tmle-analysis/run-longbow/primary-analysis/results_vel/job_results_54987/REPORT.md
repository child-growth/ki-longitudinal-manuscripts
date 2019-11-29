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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        pers_wast    n_cell      n  outcome_variable 
-------------  -------------------------  -----------------------------  ----------  -------  -----  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               236    243  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                 7    243  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               168    168  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 0    168  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          0               170    183  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          1                13    183  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               154    156  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                 2    156  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           0               265    265  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           1                 0    265  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               209    211  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    211  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               228    228  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    228  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                79     88  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 9     88  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          0               310    376  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          1                66    376  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       0               284    303  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       1                19    303  y_rate_len       
0-3 months     ki1000109-ResPak           PAKISTAN                       0                71     78  y_rate_len       
0-3 months     ki1000109-ResPak           PAKISTAN                       1                 7     78  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               625    640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                15    640  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         0              1217   1257  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         1                40   1257  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0               450    509  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                59    509  y_rate_len       
0-3 months     ki1114097-CMIN             BANGLADESH                     0                41     43  y_rate_len       
0-3 months     ki1114097-CMIN             BANGLADESH                     1                 2     43  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           0                29     29  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           1                 0     29  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               226    231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                 5    231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               207    208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 1    208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          0               212    230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          1                18    230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               228    233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                 5    233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           0               267    267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           1                 0    267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               241    243  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    243  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               239    239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    239  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               263    307  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                44    307  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          0               329    396  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          1                67    396  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       0               262    280  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       1                18    280  y_rate_len       
3-6 months     ki1000109-ResPak           PAKISTAN                       0               139    153  y_rate_len       
3-6 months     ki1000109-ResPak           PAKISTAN                       1                14    153  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               584    598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                14    598  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1614   1660  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                46   1660  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         0              1338   1384  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         1                46   1384  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               416    469  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                53    469  y_rate_len       
3-6 months     ki1114097-CMIN             BANGLADESH                     0               175    185  y_rate_len       
3-6 months     ki1114097-CMIN             BANGLADESH                     1                10    185  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           0               214    214  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           1                 0    214  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               220    224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                 4    224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               197    198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                 1    198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          0               212    230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          1                18    230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               224    230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                 6    230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           0               245    245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           1                 0    245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               229    231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               225    225  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    225  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               266    312  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                46    312  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          0               337    406  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          1                69    406  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       0               283    304  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       1                21    304  y_rate_len       
6-9 months     ki1000109-ResPak           PAKISTAN                       0               122    138  y_rate_len       
6-9 months     ki1000109-ResPak           PAKISTAN                       1                16    138  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               553    565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                12    565  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1447   1486  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                39   1486  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         0               841    866  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         1                25    866  y_rate_len       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0               195    198  y_rate_len       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                 3    198  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0               428    478  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                50    478  y_rate_len       
6-9 months     ki1114097-CMIN             BANGLADESH                     0               173    177  y_rate_len       
6-9 months     ki1114097-CMIN             BANGLADESH                     1                 4    177  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           0               214    214  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           1                 0    214  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               220    225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                 5    225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               193    194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 1    194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          0               209    227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          1                18    227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               223    229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                 6    229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           0               235    235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           1                 0    235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               231    233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               224    224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    224  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               268    313  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                45    313  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          0               331    399  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          1                68    399  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       0               304    326  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       1                22    326  y_rate_len       
9-12 months    ki1000109-ResPak           PAKISTAN                       0               120    134  y_rate_len       
9-12 months    ki1000109-ResPak           PAKISTAN                       1                14    134  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               553    566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                13    566  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1049   1078  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                29   1078  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         0               805    828  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         1                23    828  y_rate_len       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0               169    173  y_rate_len       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 4    173  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0               410    463  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                53    463  y_rate_len       
9-12 months    ki1114097-CMIN             BANGLADESH                     0               157    160  y_rate_len       
9-12 months    ki1114097-CMIN             BANGLADESH                     1                 3    160  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           0               212    212  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           1                 0    212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               206    212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               183    184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          0               208    226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          1                18    226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               224    230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                 6    230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           0               224    224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           1                 0    224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               227    228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1    228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               226    226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    226  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               274    324  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                50    324  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          0               323    390  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          1                67    390  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       0               275    297  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       1                22    297  y_rate_len       
12-15 months   ki1000109-ResPak           PAKISTAN                       0                79     85  y_rate_len       
12-15 months   ki1000109-ResPak           PAKISTAN                       1                 6     85  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               520    532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                12    532  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               770    787  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                17    787  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         0              1204   1240  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         1                36   1240  y_rate_len       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                83     86  y_rate_len       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 3     86  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0               411    464  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                53    464  y_rate_len       
12-15 months   ki1114097-CMIN             BANGLADESH                     0               154    160  y_rate_len       
12-15 months   ki1114097-CMIN             BANGLADESH                     1                 6    160  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           0               199    199  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           1                 0    199  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               206    212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               174    175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          0               208    226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          1                18    226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               221    227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                 6    227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           0               213    213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           1                 0    213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               224    225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1    225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               217    217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    217  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               267    317  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                50    317  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          0               321    382  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          1                61    382  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       0               257    278  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       1                21    278  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               516    528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                12    528  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               648    662  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                14    662  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         0              1187   1223  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         1                36   1223  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0               425    475  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                50    475  y_rate_len       
15-18 months   ki1114097-CMIN             BANGLADESH                     0               155    163  y_rate_len       
15-18 months   ki1114097-CMIN             BANGLADESH                     1                 8    163  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           0               189    189  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           1                 0    189  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               203    209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0               166    167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          0               208    226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          1                18    226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               221    227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                 6    227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           0               202    202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           1                 0    202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               231    233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               204    204  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    204  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               256    302  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                46    302  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          0               317    378  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          1                61    378  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       0               236    254  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       1                18    254  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               528    541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                13    541  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 9      9  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      9  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         0              1158   1190  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         1                32   1190  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0               389    439  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                50    439  y_rate_len       
18-21 months   ki1114097-CMIN             BANGLADESH                     0               159    165  y_rate_len       
18-21 months   ki1114097-CMIN             BANGLADESH                     1                 6    165  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           0               183    183  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           1                 0    183  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               201    207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0               164    165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          0               208    226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          1                18    226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               221    227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                 6    227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           0               189    189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           1                 0    189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               233    235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               204    204  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    204  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               257    304  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                47    304  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          0               324    388  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          1                64    388  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       0                99    106  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       1                 7    106  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               460    471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                11    471  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         0              1049   1078  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         1                29   1078  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0               306    338  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                32    338  y_rate_len       
21-24 months   ki1114097-CMIN             BANGLADESH                     0               129    133  y_rate_len       
21-24 months   ki1114097-CMIN             BANGLADESH                     1                 4    133  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           0                38     38  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           1                 0     38  y_rate_len       


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/76f73f22-8d2f-4142-8fe6-a92cf0a30502/f7062bbf-e26b-4f53-b8a5-ea9464331b63/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/76f73f22-8d2f-4142-8fe6-a92cf0a30502/f7062bbf-e26b-4f53-b8a5-ea9464331b63/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/76f73f22-8d2f-4142-8fe6-a92cf0a30502/f7062bbf-e26b-4f53-b8a5-ea9464331b63/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.3481181   3.2823621   3.4138742
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.0358618   2.5584441   3.5132795
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.3528283   3.2499076   3.4557491
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.2758980   2.9152845   3.6365114
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.3958045   3.1710366   3.6205723
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                4.0253278   3.3785106   4.6721450
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.1158131   3.0012761   3.2303500
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.2510685   2.9216414   3.5804956
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                3.0782613   2.9921458   3.1643768
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                3.0906142   2.8037630   3.3774654
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.9384679   2.6492438   3.2276920
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                3.8074994   3.0403193   4.5746795
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.2616319   3.2242899   3.2989739
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.1217835   2.8555982   3.3879688
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.1174168   3.0700699   3.1647638
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.7360772   2.3181014   3.1540530
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                3.6190086   3.5666742   3.6713431
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                3.4704731   3.2868854   3.6540608
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9258693   1.8745912   1.9771473
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                2.0077108   1.8222389   2.1931827
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.9088355   1.8448036   1.9728674
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.7977020   1.4922313   2.1031727
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.9628173   1.9056515   2.0199830
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                2.0393725   1.7738108   2.3049343
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8049291   1.6957575   1.9141007
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.7978068   1.5325124   2.0631011
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8688736   1.8004649   1.9372823
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.9094345   1.7338993   2.0849696
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                2.1072111   2.0491785   2.1652436
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                1.9060794   1.6037762   2.2083825
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.0499280   1.9070836   2.1927724
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.1207830   1.6115387   2.6300273
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9721668   1.9382947   2.0060389
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9298211   1.6582698   2.2013723
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8047182   1.7684950   1.8409413
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4960503   1.2545833   1.7375173
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.9976312   1.9580622   2.0372002
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.7740415   1.4806399   2.0674432
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.7289752   1.6869218   1.7710287
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.5241216   1.4154062   1.6328371
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.9666645   1.8972982   2.0360307
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.8702378   1.4189302   2.3215454
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.2366513   1.1836448   1.2896578
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.6073267   1.3949747   1.8196786
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.3504290   1.3055507   1.3953074
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.6077145   1.4808136   1.7346155
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.2495967   1.1642402   1.3349533
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9998733   0.8229190   1.1768277
6-9 months     ki1000108-IRC              INDIA                          0                    NA                1.3936043   1.3395118   1.4476968
6-9 months     ki1000108-IRC              INDIA                          1                    NA                1.2819992   1.1675959   1.3964024
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                1.1772823   1.1286455   1.2259192
6-9 months     ki1000109-EE               PAKISTAN                       1                    NA                1.2663489   1.0828299   1.4498679
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                1.4348004   1.3240775   1.5455232
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                1.6509061   1.3418037   1.9600086
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.2815586   1.2558939   1.3072233
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.3214300   1.1693445   1.4735156
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.3282392   1.2909957   1.3654826
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1526538   0.9740723   1.3312354
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.4172550   1.3663078   1.4682022
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.9694154   0.3214124   1.6174184
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.3207288   1.2796248   1.3618327
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.2311469   1.0587511   1.4035426
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.9893714   0.9498882   1.0288545
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.0016649   0.8556986   1.1476312
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.9749021   0.9344894   1.0153148
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.0938778   0.9873538   1.2004017
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                1.0895292   1.0481352   1.1309233
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.0783815   0.8478400   1.3089231
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.9094901   0.8346430   0.9843372
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8868636   0.7156016   1.0581256
9-12 months    ki1000108-IRC              INDIA                          0                    NA                1.1260681   1.0844765   1.1676597
9-12 months    ki1000108-IRC              INDIA                          1                    NA                1.0782499   0.9657766   1.1907232
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                0.9091048   0.8732404   0.9449692
9-12 months    ki1000109-EE               PAKISTAN                       1                    NA                1.0055713   0.8347162   1.1764264
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.2308265   1.0929003   1.3687527
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.0074946   0.7117636   1.3032255
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.0480177   1.0205105   1.0755249
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1167112   0.9765826   1.2568398
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0856133   1.0510607   1.1201659
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0565746   0.8440378   1.2691115
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.9788805   0.9371701   1.0205910
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.4319351   1.1007713   1.7630989
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.0109574   0.9784988   1.0434160
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8853155   0.7429566   1.0276744
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.9133935   0.8720783   0.9547086
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9383731   0.7949101   1.0818360
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8999996   0.8592993   0.9406999
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.9062542   0.7663636   1.0461447
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.9516538   0.9117652   0.9915424
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.9424017   0.6922109   1.1925924
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8181703   0.7465872   0.8897534
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.0572164   0.8226690   1.2917638
12-15 months   ki1000108-IRC              INDIA                          0                    NA                0.9679278   0.9222223   1.0136334
12-15 months   ki1000108-IRC              INDIA                          1                    NA                0.9002277   0.8049345   0.9955208
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                1.0066703   0.9732124   1.0401282
12-15 months   ki1000109-EE               PAKISTAN                       1                    NA                1.0522853   0.9091373   1.1954332
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                1.2932180   1.1100973   1.4763387
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                1.2507827   0.8803110   1.6212543
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.9613859   0.9346980   0.9880738
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9348031   0.8188896   1.0507166
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9314045   0.8944433   0.9683658
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9941649   0.6772343   1.3110956
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.9462141   0.9148381   0.9775902
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8242654   0.6214708   1.0270600
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8724713   0.8454200   0.8995225
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8719031   0.8029906   0.9408156
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.8742243   0.8173728   0.9310758
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8669886   0.6624487   1.0715286
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8272099   0.7896248   0.8647951
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7181236   0.5443402   0.8919070
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8414421   0.8029061   0.8799781
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8591411   0.7485280   0.9697542
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8462673   0.8040433   0.8884914
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.6407881   0.5309745   0.7506018
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7486618   0.6771001   0.8202235
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6677702   0.5432252   0.7923152
15-18 months   ki1000108-IRC              INDIA                          0                    NA                0.8789800   0.8363987   0.9215613
15-18 months   ki1000108-IRC              INDIA                          1                    NA                0.7663080   0.6634259   0.8691901
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                0.8385005   0.8069602   0.8700408
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                0.8494433   0.6143450   1.0845416
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8537731   0.8293941   0.8781521
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8925101   0.7327000   1.0523202
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9372595   0.8946000   0.9799190
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0131779   0.7253340   1.3010218
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8770255   0.8430909   0.9109602
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.7206443   0.5101074   0.9311812
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7587395   0.7246040   0.7928749
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7418872   0.6676271   0.8161473
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7540762   0.7008788   0.8072737
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6304419   0.3933498   0.8675339
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8099559   0.7749197   0.8449921
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9293939   0.7884432   1.0703447
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8750647   0.8382190   0.9119105
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8928154   0.7648275   1.0208034
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8138453   0.7757939   0.8518967
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.9816172   0.6708271   1.2924072
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7147331   0.6449254   0.7845407
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6710520   0.5044554   0.8376486
18-21 months   ki1000108-IRC              INDIA                          0                    NA                0.7736189   0.7320872   0.8151506
18-21 months   ki1000108-IRC              INDIA                          1                    NA                0.7220588   0.6230884   0.8210293
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                0.7293651   0.6983377   0.7603925
18-21 months   ki1000109-EE               PAKISTAN                       1                    NA                0.6122674   0.3130735   0.9114613
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8379450   0.8133069   0.8625832
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8550481   0.7608903   0.9492059
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8103296   0.7726817   0.8479775
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.9800219   0.7905740   1.1694698
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.9129038   0.8750469   0.9507606
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8483738   0.7816081   0.9151395
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.8040507   0.7539569   0.8541445
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7711692   0.5775906   0.9647478
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.7615910   0.7263430   0.7968390
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.0316325   0.7909859   1.2722792
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8279977   0.7955906   0.8604047
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.7570373   0.6525638   0.8615107
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.7865269   0.7449992   0.8280545
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.6665817   0.4984236   0.8347398
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7245393   0.6556384   0.7934401
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6285746   0.4855149   0.7716343
21-24 months   ki1000108-IRC              INDIA                          0                    NA                0.7025341   0.6579629   0.7471053
21-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7334398   0.6294003   0.8374793
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.6598489   0.6223106   0.6973871
21-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.5007293   0.3082807   0.6931779
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.7612085   0.7351668   0.7872501
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8702924   0.7483469   0.9922379
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.7178148   0.6814882   0.7541414
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6803658   0.5095312   0.8512004
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7934890   0.7472289   0.8397492
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8562021   0.6471897   1.0652145


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1381505   3.0271308   3.2491703
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                3.0775986   2.9949164   3.1602807
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                3.0164579   2.7387383   3.2941775
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1026151   3.0551419   3.1500882
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8792287   1.8153323   1.9431250
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0947237   2.0366412   2.1528063
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.0482494   1.9118457   2.1846530
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7951754   1.7593106   1.8310401
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9924313   1.9529066   2.0319559
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.2141990   1.1366726   1.2917254
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                1.3728678   1.3241483   1.4215872
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                1.1779411   1.1309380   1.2249441
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                1.4374407   1.3330612   1.5418202
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3236762   1.2871524   1.3602000
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.4104042   1.3586776   1.4621308
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3171992   1.2762953   1.3581032
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9004961   0.8320891   0.9689030
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.1234202   1.0839533   1.1628871
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.9148816   0.8796496   0.9501135
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                1.2059250   1.0784178   1.3334322
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0851276   1.0510683   1.1191869
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.9851066   0.9436732   1.0265401
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9985509   0.9657269   1.0313750
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8540293   0.7834803   0.9245783
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                1.0100593   0.9773974   1.0427213
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                1.2902226   1.1180150   1.4624302
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9312365   0.8943716   0.9681013
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.9439904   0.9130655   0.9749153
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8710540   0.8457775   0.8963305
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8739530   0.8186981   0.9292079
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7357918   0.6725047   0.7990788
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8376536   0.8054297   0.8698774
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9385215   0.8964111   0.9806319
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8738026   0.8405430   0.9070622
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7610462   0.7295065   0.7925859
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7480083   0.6959380   0.8000786
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7057090   0.6416425   0.7697756
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.7612817   0.7229633   0.7996000
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7183112   0.6840373   0.7525850
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8145503   0.7776328   0.8514678
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9071228   0.8728634   0.9413822
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8028550   0.7540631   0.8516469
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7091576   0.6473940   0.7709213
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.7101525   0.6692515   0.7510535
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.6493410   0.6112910   0.6873909
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.7156044   0.6799590   0.7512498
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8001530   0.7544294   0.8458765


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.3122563   -0.7941811    0.1696685
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0769304   -0.4525135    0.2986527
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.6295233   -0.0552344    1.3142810
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.1352554   -0.2130710    0.4835819
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0123529   -0.2873889    0.3120948
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.8690315    0.0491438    1.6889192
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1398484   -0.4087316    0.1290348
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.3813396   -0.8021458    0.0394666
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1485355   -0.3394758    0.0424047
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0818415   -0.1105884    0.2742715
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1111336   -0.4233367    0.2010695
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0765553   -0.1950896    0.3482002
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0071223   -0.2940966    0.2798519
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0405609   -0.1481558    0.2292776
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.2011317   -0.5086758    0.1064124
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0708550   -0.4588673    0.6005772
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0423457   -0.3160806    0.2313892
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.3086679   -0.5528451   -0.0644906
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.2235897   -0.5195621    0.0723827
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.2048536   -0.3216065   -0.0881007
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0964267   -0.5533763    0.3605229
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.3706754    0.1509275    0.5904232
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.2572855    0.1226827    0.3918883
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.2497234   -0.4465103   -0.0529366
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                 -0.1116051   -0.2381985    0.0149883
6-9 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0890666   -0.1013615    0.2794947
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.2161058   -0.1172379    0.5494494
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0398714   -0.1144457    0.1941885
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1755853   -0.3581313    0.0069607
6-9 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.4478396   -1.0985380    0.2028587
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0895819   -0.2666858    0.0875220
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0122935   -0.1389185    0.1635056
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.1189757    0.0051087    0.2328427
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0111477   -0.2453760    0.2230805
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0226265   -0.2095062    0.1642533
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0478182   -0.1672247    0.0715883
9-12 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       1                    0                  0.0964665   -0.0781402    0.2710731
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.2233319   -0.5499765    0.1033127
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0686935   -0.0738370    0.2112240
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0290387   -0.2443428    0.1862654
9-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         1                    0                  0.4530545    0.1186387    0.7874703
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1256419   -0.2721903    0.0209066
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0249796   -0.1243139    0.1742731
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0062546   -0.1392384    0.1517475
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0092521   -0.2626027    0.2440984
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2390461   -0.0064221    0.4845144
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                 -0.0677001   -0.1724630    0.0370627
12-15 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0456150   -0.1014126    0.1926425
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0424354   -0.4556937    0.3708229
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0265828   -0.1456707    0.0925051
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0627604   -0.2567710    0.3822919
12-15 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.1219487   -0.3276570    0.0837595
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0005682   -0.0744088    0.0732724
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0072357   -0.2195295    0.2050581
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1090863   -0.2868877    0.0687150
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0176990   -0.0994609    0.1348588
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2054792   -0.3231309   -0.0878276
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0808917   -0.2248990    0.0631157
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                 -0.1126720   -0.2240204   -0.0013235
15-18 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0109428   -0.2260151    0.2479007
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0387370   -0.1229059    0.2003799
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0759184   -0.2152129    0.3670497
15-18 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.1563813   -0.3700113    0.0572487
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0168523   -0.0984312    0.0647267
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.1236344   -0.3666212    0.1193524
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.1194380   -0.0258020    0.2646780
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0177507   -0.1158948    0.1513962
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.1677719   -0.1453389    0.4808827
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0436810   -0.2246818    0.1373198
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                 -0.0515600   -0.1589223    0.0558022
18-21 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.1170977   -0.4182960    0.1841006
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0171031   -0.0799058    0.1141120
18-21 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.1696923   -0.0236445    0.3630292
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0645300   -0.1413857    0.0123257
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0328815   -0.2328367    0.1670737
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.2700416    0.0268272    0.5132559
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0709604   -0.1805171    0.0385963
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.1199451   -0.2931551    0.0532649
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0959647   -0.2550469    0.0631176
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0309057   -0.0821285    0.1439400
21-24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.1591195   -0.3551950    0.0369559
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.1090839   -0.0156556    0.2338235
21-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0374490   -0.2121406    0.1372427
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0627131   -0.1513523    0.2767785


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0089950   -0.0243582    0.0063682
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0046033   -0.0285495    0.0193428
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0643831   -0.0163082    0.1450743
0-3 months     ki1000108-IRC              INDIA                          0                    NA                 0.0223375   -0.0390388    0.0837137
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0006627   -0.0191641    0.0178387
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0779900   -0.0141609    0.1701409
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0039509   -0.0112427    0.0033409
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0148018   -0.0271508   -0.0024528
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0200403   -0.0426423    0.0025617
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0017715   -0.0032795    0.0068224
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0165375   -0.0410460    0.0079709
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0016428   -0.0052967    0.0085823
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0011411   -0.0417914    0.0395092
3-6 months     ki1000108-IRC              INDIA                          0                    NA                 0.0103551   -0.0211771    0.0418873
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0124873   -0.0337280    0.0087533
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0016787   -0.0468627    0.0435053
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0064211   -0.0144712    0.0016290
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0095428   -0.0165349   -0.0025507
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0052000   -0.0149383    0.0045384
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0194067   -0.0334789   -0.0053345
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0188168   -0.0451632    0.0075296
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0095723   -0.0085808    0.0277255
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0067118    0.0003445    0.0130790
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0353978   -0.0654370   -0.0053585
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0207365   -0.0420341    0.0005611
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0006587   -0.0125419    0.0138594
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0026403   -0.0416745    0.0469552
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0008599   -0.0025239    0.0042437
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0045629   -0.0099560    0.0008301
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0068508   -0.0239471    0.0102455
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0035295   -0.0218183    0.0147593
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0002732   -0.0035146    0.0040609
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0065681   -0.0028358    0.0159721
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0002921   -0.0064334    0.0058493
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0089940   -0.0359359    0.0179479
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0026479   -0.0226368    0.0173410
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0057767   -0.0052853    0.0168387
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0249015   -0.0602869    0.0104840
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0019573   -0.0027937    0.0067082
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004857   -0.0062223    0.0052509
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0062261   -0.0034761    0.0159282
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0124065   -0.0289484    0.0041355
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0007070   -0.0035551    0.0049691
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0104940   -0.0018235    0.0228115
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0002414   -0.0068533    0.0063705
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0358590   -0.0022074    0.0739254
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0125739   -0.0306260    0.0054783
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0033890   -0.0072673    0.0140453
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0029954   -0.0322591    0.0262682
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0016359   -0.0045642    0.0012925
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0001681   -0.0083288    0.0079927
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0022237   -0.0080218    0.0035743
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0014173   -0.0098633    0.0070287
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0002713   -0.0082352    0.0076925
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0030873   -0.0086802    0.0025055
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0029463   -0.0055851    0.0114777
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0054312   -0.0107357   -0.0001266
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0128701   -0.0356331    0.0098930
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0198584   -0.0379855   -0.0017313
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0008470   -0.0151972    0.0135033
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0023267   -0.0016243    0.0062777
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012620   -0.0056997    0.0082237
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0032229   -0.0088760    0.0024301
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0023068   -0.0064663    0.0110798
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0060679   -0.0186830    0.0065471
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0034288   -0.0015443    0.0084019
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0036453   -0.0067066    0.0139973
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0044345   -0.0045547    0.0134236
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0090241   -0.0361902    0.0181421
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0123372   -0.0298295    0.0051550
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0110540   -0.0300316    0.0079236
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0013927   -0.0020392    0.0048245
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0042207   -0.0010255    0.0094670
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0057810   -0.0143549    0.0027929
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0011957   -0.0085276    0.0061362
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0078273   -0.0015520    0.0172066
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0024463   -0.0111314    0.0062387
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0031704   -0.0083908    0.0020501
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0153816   -0.0389232    0.0081600
21-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0076184   -0.0106250    0.0258619
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0105079   -0.0255010    0.0044852
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0019306   -0.0020866    0.0059477
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0022104   -0.0072146    0.0027938
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0066639   -0.0123972    0.0257251
