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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               236    243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                 7    243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               168    168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 0    168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          0               170    183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          1                13    183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               154    156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                 2    156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           0               265    265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           1                 0    265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               209    211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               228    228  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    228  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                79     88  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 9     88  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          0               310    376  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          1                66    376  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       0               284    303  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       1                19    303  y_rate_haz       
0-3 months     ki1000109-ResPak           PAKISTAN                       0                71     78  y_rate_haz       
0-3 months     ki1000109-ResPak           PAKISTAN                       1                 7     78  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               625    640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                15    640  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         0              1217   1257  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         1                40   1257  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0               450    509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                59    509  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     0                41     43  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     1                 2     43  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           0                29     29  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           1                 0     29  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               226    231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                 5    231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               207    208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 1    208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          0               212    230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          1                18    230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               228    233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                 5    233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           0               267    267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           1                 0    267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               241    243  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    243  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               239    239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    239  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               263    307  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                44    307  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          0               329    396  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          1                67    396  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       0               262    280  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       1                18    280  y_rate_haz       
3-6 months     ki1000109-ResPak           PAKISTAN                       0               139    153  y_rate_haz       
3-6 months     ki1000109-ResPak           PAKISTAN                       1                14    153  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               584    598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                14    598  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1614   1660  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                46   1660  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         0              1338   1384  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         1                46   1384  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               416    469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                53    469  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     0               175    185  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     1                10    185  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           0               214    214  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           1                 0    214  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               220    224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                 4    224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               197    198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                 1    198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          0               212    230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          1                18    230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               224    230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                 6    230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           0               245    245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           1                 0    245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               229    231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               225    225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    225  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               266    312  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                46    312  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          0               337    406  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          1                69    406  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       0               283    304  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       1                21    304  y_rate_haz       
6-9 months     ki1000109-ResPak           PAKISTAN                       0               122    138  y_rate_haz       
6-9 months     ki1000109-ResPak           PAKISTAN                       1                16    138  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               553    565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                12    565  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1447   1486  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                39   1486  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         0               841    866  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         1                25    866  y_rate_haz       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0               195    198  y_rate_haz       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                 3    198  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0               428    478  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                50    478  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     0               173    177  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     1                 4    177  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           0               214    214  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           1                 0    214  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               220    225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                 5    225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               193    194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 1    194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          0               209    227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          1                18    227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               223    229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                 6    229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           0               235    235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           1                 0    235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               231    233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               224    224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    224  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               268    313  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                45    313  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          0               331    399  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          1                68    399  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       0               304    326  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       1                22    326  y_rate_haz       
9-12 months    ki1000109-ResPak           PAKISTAN                       0               120    134  y_rate_haz       
9-12 months    ki1000109-ResPak           PAKISTAN                       1                14    134  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               553    566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                13    566  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1049   1078  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                29   1078  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         0               805    828  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         1                23    828  y_rate_haz       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0               169    173  y_rate_haz       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 4    173  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0               410    463  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                53    463  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     0               157    160  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     1                 3    160  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           0               212    212  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           1                 0    212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               206    212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               183    184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          0               208    226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          1                18    226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               224    230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                 6    230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           0               224    224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           1                 0    224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               227    228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1    228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               226    226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    226  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               274    324  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                50    324  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          0               323    390  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          1                67    390  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       0               275    297  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       1                22    297  y_rate_haz       
12-15 months   ki1000109-ResPak           PAKISTAN                       0                79     85  y_rate_haz       
12-15 months   ki1000109-ResPak           PAKISTAN                       1                 6     85  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               520    532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                12    532  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               770    787  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                17    787  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         0              1204   1240  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         1                36   1240  y_rate_haz       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                83     86  y_rate_haz       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 3     86  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0               411    464  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                53    464  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     0               154    160  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     1                 6    160  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           0               199    199  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           1                 0    199  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               206    212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               174    175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          0               208    226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          1                18    226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               221    227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                 6    227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           0               213    213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           1                 0    213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               224    225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1    225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               217    217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    217  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               267    317  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                50    317  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          0               321    382  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          1                61    382  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       0               257    278  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       1                21    278  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               516    528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                12    528  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               648    662  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                14    662  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         0              1187   1223  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         1                36   1223  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0               425    475  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                50    475  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     0               155    163  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     1                 8    163  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           0               189    189  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           1                 0    189  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               203    209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0               166    167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          0               208    226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          1                18    226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               221    227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                 6    227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           0               202    202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           1                 0    202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               231    233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               204    204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    204  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               256    302  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                46    302  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          0               317    378  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          1                61    378  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       0               236    254  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       1                18    254  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               528    541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                13    541  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 9      9  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      9  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         0              1158   1190  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         1                32   1190  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0               389    439  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                50    439  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     0               159    165  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     1                 6    165  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           0               183    183  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           1                 0    183  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               201    207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0               164    165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          0               208    226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          1                18    226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               221    227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                 6    227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           0               189    189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           1                 0    189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               233    235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               204    204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    204  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               257    304  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                47    304  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          0               324    388  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          1                64    388  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       0                99    106  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       1                 7    106  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               460    471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                11    471  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         0              1049   1078  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         1                29   1078  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0               306    338  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                32    338  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     0               129    133  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     1                 4    133  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           0                38     38  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           1                 0     38  y_rate_haz       


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
![](/tmp/d7a4ba92-1342-4bdc-bc8a-231bddeb1127/a72af9d9-bbcf-4303-aa64-0aef89d616ea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d7a4ba92-1342-4bdc-bc8a-231bddeb1127/a72af9d9-bbcf-4303-aa64-0aef89d616ea/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d7a4ba92-1342-4bdc-bc8a-231bddeb1127/a72af9d9-bbcf-4303-aa64-0aef89d616ea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1178059   -0.1515052   -0.0841065
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2718283   -0.5330637   -0.0105929
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0566528   -0.1093281   -0.0039776
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0388850   -0.2165224    0.1387525
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1194682   -0.2286263   -0.0103101
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.1897993   -0.1537516    0.5333502
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.2643502   -0.3219131   -0.2067872
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2002338   -0.3648388   -0.0356287
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.2144378   -0.2588342   -0.1700414
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.2547129   -0.4313539   -0.0780718
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2582215   -0.4069143   -0.1095286
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1325506   -0.2449397    0.5100409
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1850472   -0.2026149   -0.1674795
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.3333062   -0.4503665   -0.2162459
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.2771009   -0.3010880   -0.2531139
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.4465903   -0.6534149   -0.2397658
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0222634   -0.0480983    0.0035715
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1188624   -0.2112326   -0.0264922
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0232953   -0.0473710    0.0007805
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0161823   -0.0730783    0.1054429
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0301081   -0.0598814   -0.0003348
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.1832653   -0.3366679   -0.0298627
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0236803   -0.0507395    0.0033790
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0043642   -0.1297227    0.1384511
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0962622   -0.1480824   -0.0444421
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0659203   -0.1894951    0.0576546
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0557763   -0.0880605   -0.0234921
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0577379   -0.1408102    0.0253344
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0728301    0.0458244    0.0998358
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.0445743   -0.2323400    0.1431914
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0312940   -0.0353593    0.0979472
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0652854   -0.1505237    0.2810946
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0242122   -0.0401751   -0.0082493
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1613563   -0.2586251   -0.0640874
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0801113   -0.0968890   -0.0633336
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2251721   -0.3332711   -0.1170730
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0149413   -0.0334925    0.0036099
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.1294420   -0.2640847    0.0052006
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1531732   -0.1731466   -0.1331997
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2240827   -0.2729940   -0.1751714
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0034286   -0.0355755    0.0287183
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0582424   -0.2558356    0.1393508
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0752419   -0.0986883   -0.0517954
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0373353   -0.0557136    0.1303842
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0377759   -0.0573362   -0.0182156
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0855168    0.0291943    0.1418393
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0671623   -0.1047090   -0.0296156
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1476126   -0.2292639   -0.0659612
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0059958   -0.0299720    0.0179803
6-9 months     ki1000108-IRC              INDIA                          1                    NA                -0.0639121   -0.1167877   -0.0110364
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0852047   -0.1064236   -0.0639858
6-9 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.0745912   -0.1705019    0.0213195
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0122721   -0.0370880    0.0616321
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0644397   -0.0817236    0.2106029
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0617093   -0.0728198   -0.0505988
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0394800   -0.0916179    0.0126579
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0502843   -0.0666434   -0.0339252
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1291067   -0.2108954   -0.0473180
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0075609   -0.0297073    0.0145855
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.1095332   -0.4044988    0.1854325
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0424902   -0.0602972   -0.0246833
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0597458   -0.1313495    0.0118580
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0870179   -0.1035249   -0.0705110
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0954527   -0.1542657   -0.0366396
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0935054   -0.1102396   -0.0767712
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0725571   -0.1275026   -0.0176117
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0623088   -0.0794386   -0.0451790
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0618386   -0.1642341    0.0405569
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1172265   -0.1486041   -0.0858488
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1209861   -0.1924508   -0.0495214
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0333858   -0.0511860   -0.0155857
9-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0482912   -0.0968939    0.0003116
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.1041519   -0.1191161   -0.0891876
9-12 months    ki1000109-EE               PAKISTAN                       1                    NA                -0.0312713   -0.0949623    0.0324197
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0062147   -0.0528120    0.0652414
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.1052327   -0.2294702    0.0190047
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0642143   -0.0753780   -0.0530506
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0169972   -0.0825909    0.0485965
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0662886   -0.0808061   -0.0517710
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0671018   -0.1632238    0.0290202
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.1025285   -0.1199985   -0.0850586
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.1078433   -0.0289760    0.2446627
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0748509   -0.0884953   -0.0612066
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1138963   -0.1758546   -0.0519381
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0554893   -0.0714144   -0.0395641
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0633703   -0.1122762   -0.0144645
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0605698   -0.0763525   -0.0447870
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0441609   -0.1049727    0.0166510
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0575599   -0.0731836   -0.0419363
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0535358   -0.1559149    0.0488432
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0860158   -0.1149730   -0.0570586
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0293735   -0.0639597    0.1227067
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0398394   -0.0582963   -0.0213825
12-15 months   ki1000108-IRC              INDIA                          1                    NA                -0.0680555   -0.1067181   -0.0293929
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0028291   -0.0159762    0.0103180
12-15 months   ki1000109-EE               PAKISTAN                       1                    NA                 0.0330881   -0.0283912    0.0945675
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0838368    0.0090320    0.1586416
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0486386   -0.0894493    0.1867265
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0407230   -0.0511248   -0.0303212
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0514898   -0.0817746   -0.0212051
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0649890   -0.0795312   -0.0504467
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0201373   -0.1225823    0.0823078
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0498244   -0.0621890   -0.0374599
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0871826   -0.1688820   -0.0054831
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0708159   -0.0809786   -0.0606533
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0526664   -0.0804244   -0.0249085
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0608037   -0.0829329   -0.0386744
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0628352   -0.1453822    0.0197118
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0444012   -0.0581073   -0.0306951
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0936249   -0.1551780   -0.0320718
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0383370   -0.0519826   -0.0246914
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0132733   -0.0488219    0.0222754
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0531354   -0.0684867   -0.0377841
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.1212035   -0.1653618   -0.0770453
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0636064   -0.0902224   -0.0369905
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0765168   -0.1262915   -0.0267420
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0303067   -0.0461603   -0.0144531
15-18 months   ki1000108-IRC              INDIA                          1                    NA                -0.0734021   -0.1095645   -0.0372397
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0260626   -0.0370465   -0.0150786
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0231434   -0.1070012    0.0607144
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0388256   -0.0477312   -0.0299200
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0333740   -0.0592483   -0.0074996
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0193583   -0.0348821   -0.0038346
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0019590   -0.0930753    0.0891572
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0337702   -0.0463035   -0.0212370
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0506442   -0.1207195    0.0194312
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0685810   -0.0809837   -0.0561782
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0461698   -0.0729720   -0.0193675
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0605823   -0.0804222   -0.0407423
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1044114   -0.1897699   -0.0190529
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0163034   -0.0281659   -0.0044408
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0109187   -0.0386464    0.0604839
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0053564   -0.0065898    0.0173027
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0052640   -0.0500848    0.0395567
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0299867   -0.0429796   -0.0169937
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0411934   -0.0619026    0.1442895
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0401134   -0.0643360   -0.0158908
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0523088   -0.1108883    0.0062707
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0345639   -0.0489036   -0.0202241
18-21 months   ki1000108-IRC              INDIA                          1                    NA                -0.0666403   -0.1001289   -0.0331518
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0326836   -0.0428398   -0.0225275
18-21 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0808233   -0.1704501    0.0088035
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0115850   -0.0199430   -0.0032271
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0126452   -0.0194266    0.0447170
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0239350   -0.0370329   -0.0108371
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0473568   -0.0231586    0.1178722
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0183190    0.0051626    0.0314755
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0107610   -0.0104250    0.0319470
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0064569   -0.0238353    0.0109215
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0074865   -0.0758629    0.0608899
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0234628    0.0113338    0.0355917
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0978252    0.0114454    0.1842050
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0316393    0.0202105    0.0430681
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0092030   -0.0286617    0.0470677
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0065536   -0.0074394    0.0205466
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0350176   -0.0763308    0.0062956
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0231872   -0.0004414    0.0468157
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0107223   -0.0338514    0.0552960
21-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0170835   -0.0319497   -0.0022173
21-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0096631   -0.0229566    0.0422828
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0034485   -0.0159546    0.0090576
21-24 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0499535   -0.1108024    0.0108953
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0450347    0.0361571    0.0539122
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0826490    0.0438325    0.1214656
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0160347    0.0038615    0.0282080
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0049058   -0.0512469    0.0610584
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0464638    0.0306452    0.0622823
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0610760   -0.0110487    0.1332008


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2555919   -0.3110566   -0.2001272
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.2160892   -0.2586792   -0.1734992
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.2231522   -0.3648888   -0.0814156
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2849311   -0.3090047   -0.2608575
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0524688   -0.0826167   -0.0223210
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0663303    0.0389725    0.0936881
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0281515   -0.0356303    0.0919334
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0847522   -0.1013980   -0.0681065
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0171122   -0.0356078    0.0013835
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0832899   -0.1175028   -0.0490769
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0159998   -0.0376393    0.0056398
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.0848755   -0.1055404   -0.0642105
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0119244   -0.0346261    0.0584748
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0522228   -0.0682679   -0.0361776
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0102456   -0.0329805    0.0124893
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0438207   -0.0614260   -0.0262155
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1184890   -0.1472404   -0.0897376
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0360825   -0.0530606   -0.0191044
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.1011889   -0.1159053   -0.0864725
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.0042570   -0.0582999    0.0497860
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0661472   -0.0804252   -0.0518691
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0993813   -0.1167422   -0.0820204
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0797218   -0.0934629   -0.0659807
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0709565   -0.0992698   -0.0426432
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0004721   -0.0133950    0.0124507
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0813522    0.0111213    0.1515831
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0647181   -0.0791954   -0.0502407
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0503955   -0.0625675   -0.0382235
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0699693   -0.0794782   -0.0604605
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0608799   -0.0824031   -0.0393566
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0674551   -0.0910572   -0.0438530
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0256550   -0.0369587   -0.0143512
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0190863   -0.0344142   -0.0037583
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0341589   -0.0464167   -0.0219011
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0665567   -0.0780107   -0.0551027
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0627334   -0.0821141   -0.0433527
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0420349   -0.0645042   -0.0195656
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0394980   -0.0527459   -0.0262500
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0357223   -0.0470222   -0.0244224
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0221083   -0.0349414   -0.0092752
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0167223    0.0048758    0.0285689
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0064943   -0.0234244    0.0104357
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0184186   -0.0026901    0.0395272
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0132634   -0.0268096    0.0002828
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0065196   -0.0190677    0.0060285
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0154561    0.0035146    0.0273976
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0484956    0.0328354    0.0641558


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1540224   -0.4174225    0.1093776
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0177679   -0.1680456    0.2035814
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.3092675   -0.0512081    0.6697432
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.0641164   -0.1101155    0.2383484
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0402750   -0.2223580    0.1418079
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.3907721   -0.0149476    0.7964918
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1482590   -0.2665623   -0.0299557
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.1694894   -0.3777665    0.0387876
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0965990   -0.1925175   -0.0006804
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0394776   -0.0529729    0.1319280
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1531572   -0.3095127    0.0031983
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0280445   -0.1087455    0.1648344
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0303420   -0.1035951    0.1642791
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0019616   -0.0912676    0.0873445
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.1174045   -0.3066295    0.0718206
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0339914   -0.1919071    0.2598900
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1371441   -0.2363484   -0.0379398
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1450607   -0.2543878   -0.0357337
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.1145007   -0.2503930    0.0213916
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0709095   -0.1238846   -0.0179345
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0548138   -0.2550852    0.1454576
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.1125772    0.0167278    0.2084265
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.1232927    0.0636703    0.1829151
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0804503   -0.1703263    0.0094258
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                 -0.0579163   -0.1164854    0.0006528
6-9 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0106135   -0.0874471    0.1086741
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0521676   -0.1032194    0.2075546
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0222293   -0.0310654    0.0755240
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0788224   -0.1622967    0.0046519
6-9 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.1019723   -0.3978761    0.1939315
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0172555   -0.0910559    0.0565448
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0084347   -0.0695204    0.0526509
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0209483   -0.0366179    0.0785145
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0004702   -0.1033482    0.1042887
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0037596   -0.0817727    0.0742535
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0149053   -0.0664464    0.0366358
9-12 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       1                    0                  0.0728805    0.0072335    0.1385276
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.1114475   -0.2491463    0.0262513
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0472171   -0.0192371    0.1136713
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0008132   -0.0980436    0.0964171
9-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         1                    0                  0.2103719    0.0722400    0.3485038
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0390454   -0.1027808    0.0246901
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0078811   -0.0593145    0.0435523
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0164089   -0.0467815    0.0795994
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0040241   -0.0995403    0.1075885
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1153893    0.0173888    0.2133899
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                 -0.0282162   -0.0707004    0.0142681
12-15 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0359172   -0.0268350    0.0986694
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0351982   -0.1922460    0.1218497
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0107668   -0.0425977    0.0210640
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0448517   -0.0585156    0.1482190
12-15 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0373581   -0.1202293    0.0455130
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0181495   -0.0114526    0.0477517
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0020315   -0.0874933    0.0834302
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0492238   -0.1122844    0.0138368
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0250637   -0.0131004    0.0632278
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0680681   -0.1148187   -0.0213176
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0129103   -0.0694802    0.0436596
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                 -0.0430954   -0.0824408   -0.0037499
15-18 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0029192   -0.0817228    0.0875612
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0054516   -0.0219052    0.0328085
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0173993   -0.0748940    0.1096925
15-18 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0168739   -0.0881629    0.0544151
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0224112   -0.0072383    0.0520606
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0438291   -0.1314630    0.0438047
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0272221   -0.0237428    0.0781870
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0106205   -0.0567982    0.0355572
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0711801   -0.0327314    0.1750917
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0121954   -0.0756138    0.0512230
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                 -0.0320765   -0.0683003    0.0041474
18-21 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0481397   -0.1383981    0.0421188
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0242303   -0.0088788    0.0573393
18-21 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0712919   -0.0004809    0.1430647
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0075580   -0.0327375    0.0176215
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0010296   -0.0715799    0.0695206
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0743624   -0.0128648    0.1615897
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0224363   -0.0619970    0.0171244
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0415712   -0.0851898    0.0020474
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0124649   -0.0630713    0.0381416
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0267466   -0.0090446    0.0625378
21-24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0465050   -0.1086258    0.0156157
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0376144   -0.0022133    0.0774420
21-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0111290   -0.0685917    0.0463337
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0146122   -0.0591818    0.0884063


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0044369   -0.0126896    0.0038159
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0023855   -0.0137166    0.0089456
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0316296   -0.0101664    0.0734257
0-3 months     ki1000108-IRC              INDIA                          0                    NA                 0.0087583   -0.0217066    0.0392232
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0016514   -0.0113113    0.0080085
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0350693   -0.0090677    0.0792062
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0029930   -0.0063610    0.0003749
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0078302   -0.0142190   -0.0014413
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0095046   -0.0206123    0.0016031
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0008545   -0.0015731    0.0032821
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0059321   -0.0169390    0.0050748
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0006018   -0.0028577    0.0040613
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0016993   -0.0209831    0.0175846
3-6 months     ki1000108-IRC              INDIA                          0                    NA                 0.0033075   -0.0116318    0.0182468
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0064998   -0.0166951    0.0036956
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0031425   -0.0243208    0.0180358
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0027503   -0.0064336    0.0009330
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0046409   -0.0079625   -0.0013193
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0021708   -0.0066119    0.0022702
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0082245   -0.0146780   -0.0017711
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0051520   -0.0167876    0.0064836
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0049063   -0.0028273    0.0126399
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0032163    0.0002334    0.0061992
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0161276   -0.0294315   -0.0028237
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0100039   -0.0199238   -0.0000841
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0003292   -0.0058035    0.0064620
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0003477   -0.0184623    0.0177669
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0002829   -0.0012503    0.0018161
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0019385   -0.0043267    0.0004498
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0026847   -0.0102077    0.0048383
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0013305   -0.0091028    0.0064418
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0001874   -0.0017232    0.0013484
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0022655   -0.0017138    0.0062448
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0000123   -0.0027078    0.0027325
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0012625   -0.0123286    0.0098035
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0026967   -0.0113973    0.0060040
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0029630   -0.0018758    0.0078018
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0104717   -0.0249135    0.0039701
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0011673   -0.0008419    0.0031764
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0001414   -0.0023436    0.0026264
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0031473   -0.0008963    0.0071909
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0048708   -0.0117345    0.0019928
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0002230   -0.0016894    0.0012433
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0040474   -0.0011638    0.0092586
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0001050   -0.0025980    0.0028079
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0150593   -0.0001911    0.0303097
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0056125   -0.0129022    0.0016771
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0023569   -0.0019341    0.0066479
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0024846   -0.0137367    0.0087676
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0001877   -0.0012875    0.0009120
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002709   -0.0027379    0.0032797
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0005711   -0.0028852    0.0017430
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0008466   -0.0024528    0.0041460
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0000762   -0.0032816    0.0031292
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0013931   -0.0034904    0.0007041
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0003335   -0.0025778    0.0032448
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0017992   -0.0036842    0.0000859
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0038486   -0.0123572    0.0046599
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0082100   -0.0149707   -0.0014492
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0004076   -0.0047029    0.0055182
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0011819   -0.0004657    0.0028295
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002720   -0.0020947    0.0026387
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0003886   -0.0024356    0.0016583
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0020243   -0.0012673    0.0053158
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0021511   -0.0066926    0.0023903
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0007815   -0.0008067    0.0023697
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0004176   -0.0027466    0.0035818
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0018814   -0.0012426    0.0050055
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0019215   -0.0118390    0.0079960
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0049341   -0.0108068    0.0009386
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0030386   -0.0093277    0.0032505
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0006452   -0.0005720    0.0018623
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0018267   -0.0000672    0.0037207
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0015967   -0.0045267    0.0013333
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0000374   -0.0026031    0.0025282
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0021554   -0.0008933    0.0052042
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0018506   -0.0050291    0.0013278
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0010988   -0.0025428    0.0003452
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0047686   -0.0126955    0.0031583
21-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0038201   -0.0021629    0.0098031
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0030711   -0.0077304    0.0015882
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0011996   -0.0001966    0.0025957
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0005786   -0.0022845    0.0011272
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0020318   -0.0043534    0.0084170
