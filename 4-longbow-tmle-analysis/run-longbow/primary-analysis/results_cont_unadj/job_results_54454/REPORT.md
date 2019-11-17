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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                 country        hfoodsec                n_cell      n
-------------  ----------------------  -------------  ---------------------  -------  -----
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                160    193
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4    193
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29    193
0-3 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  3    129
0-3 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11    129
0-3 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure              115    129
0-3 months     ki0047075b-MAL-ED       INDIA          Food Secure                187    209
0-3 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5    209
0-3 months     ki0047075b-MAL-ED       INDIA          Food Insecure               17    209
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 92    126
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15    126
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               19    126
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                 27    112
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        29    112
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure               56    112
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                131    231
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        19    231
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81    231
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 83    565
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       443    565
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39    565
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                431    725
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       208    725
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               86    725
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                363    494
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        71    494
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               60    494
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3256   6586
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2200   6586
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1130   6586
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                334    634
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       212    634
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure               88    634
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                156    189
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4    189
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29    189
3-6 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  3    129
3-6 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11    129
3-6 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure              115    129
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure                186    207
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5    207
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure               16    207
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 93    127
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15    127
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               19    127
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure                 27    111
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28    111
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure               56    111
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                125    222
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18    222
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               79    222
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 77    522
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       406    522
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39    522
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                417    702
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       201    702
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84    702
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                336    454
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        62    454
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               56    454
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3183   6299
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2079   6299
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1037   6299
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                210    425
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       152    425
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure               63    425
6-9 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                155    187
6-9 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4    187
6-9 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28    187
6-9 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  3    129
6-9 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11    129
6-9 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure              115    129
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure                189    210
6-9 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5    210
6-9 months     ki0047075b-MAL-ED       INDIA          Food Insecure               16    210
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 93    127
6-9 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15    127
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               19    127
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure                 27    110
6-9 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28    110
6-9 months     ki0047075b-MAL-ED       PERU           Food Insecure               55    110
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                121    213
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17    213
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               75    213
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 75    498
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       384    498
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39    498
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                417    693
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       195    693
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               81    693
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                336    463
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        64    463
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               63    463
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                391    768
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       269    768
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              108    768
9-12 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                157    188
9-12 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4    188
9-12 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure               27    188
9-12 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  3    129
9-12 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11    129
9-12 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure              115    129
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure                188    210
9-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5    210
9-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure               17    210
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 93    127
9-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15    127
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure               19    127
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure                 27    108
9-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26    108
9-12 months    ki0047075b-MAL-ED       PERU           Food Insecure               55    108
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                119    213
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18    213
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               76    213
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 74    481
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       369    481
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               38    481
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                413    683
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       191    683
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               79    683
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                316    440
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67    440
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               57    440
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                464    863
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       292    863
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              107    863
12-15 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                153    185
12-15 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4    185
12-15 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28    185
12-15 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3    129
12-15 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11    129
12-15 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115    129
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure                188    210
12-15 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5    210
12-15 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17    210
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94    128
12-15 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15    128
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19    128
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure                 26    106
12-15 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        25    106
12-15 months   ki0047075b-MAL-ED       PERU           Food Insecure               55    106
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                115    212
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17    212
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               80    212
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 69    461
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       357    461
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               35    461
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                395    666
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       191    666
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               80    666
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                320    439
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67    439
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               52    439
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                452    861
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       296    861
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              113    861
15-18 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                155    187
15-18 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4    187
15-18 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28    187
15-18 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3    128
15-18 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        10    128
15-18 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115    128
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure                190    211
15-18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5    211
15-18 months   ki0047075b-MAL-ED       INDIA          Food Insecure               16    211
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 92    126
15-18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15    126
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19    126
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure                 26    106
15-18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        27    106
15-18 months   ki0047075b-MAL-ED       PERU           Food Insecure               53    106
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                117    216
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17    216
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               82    216
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 68    449
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       345    449
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               36    449
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                368    605
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       166    605
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               71    605
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                337    463
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        66    463
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               60    463
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                468    872
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       285    872
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              119    872
18-21 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                157    189
18-21 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4    189
18-21 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28    189
18-21 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3    128
18-21 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        10    128
18-21 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115    128
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure                189    210
18-21 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5    210
18-21 months   ki0047075b-MAL-ED       INDIA          Food Insecure               16    210
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 92    126
18-21 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15    126
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19    126
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure                 26    103
18-21 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26    103
18-21 months   ki0047075b-MAL-ED       PERU           Food Insecure               51    103
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                125    223
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18    223
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               80    223
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 63    422
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       326    422
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               33    422
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                342    547
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       141    547
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               64    547
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                317    432
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        61    432
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               54    432
21-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                156    189
21-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4    189
21-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29    189
21-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3    129
21-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11    129
21-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115    129
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                189    211
21-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5    211
21-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17    211
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94    128
21-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15    128
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19    128
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure                 25    102
21-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26    102
21-24 months   ki0047075b-MAL-ED       PERU           Food Insecure               51    102
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                128    226
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18    226
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               80    226
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 64    411
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       317    411
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               30    411
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                318    493
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       120    493
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               55    493
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                247    340
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        49    340
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               44    340


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

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
![](/tmp/e0999b60-dacb-42d7-b332-aa168b0ae0e9/3029b525-7537-4eab-be3f-9dc177e39e38/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e0999b60-dacb-42d7-b332-aa168b0ae0e9/3029b525-7537-4eab-be3f-9dc177e39e38/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e0999b60-dacb-42d7-b332-aa168b0ae0e9/3029b525-7537-4eab-be3f-9dc177e39e38/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country        intervention_level     baseline_level     estimate     ci_lower    ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.7583774    0.7325472   0.7842075
0-3 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.7345900    0.6098128   0.8593673
0-3 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.7766105    0.6815549   0.8716662
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.9560349    0.9113720   1.0006978
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.9615507    0.8384584   1.0846430
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.8654509    0.7845565   0.9463453
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                0.9510390    0.8779955   1.0240826
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.9455627    0.8823440   1.0087814
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.9413863    0.8776819   1.0050907
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.9663270    0.9240017   1.0086524
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.9180475    0.8496022   0.9864928
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.9176846    0.8728185   0.9625506
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.8379116    0.7930479   0.8827754
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.8195331    0.8005279   0.8385384
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.7343048    0.6808060   0.7878035
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.8946279    0.8749059   0.9143500
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.8714733    0.8455163   0.8974302
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.8654341    0.8297705   0.9010978
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.8286670    0.8088027   0.8485313
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.8423622    0.7919945   0.8927299
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.8004098    0.7545875   0.8462321
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.8715059    0.8652410   0.8777708
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.8491679    0.8413619   0.8569739
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.8353246    0.8238408   0.8468085
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.7417311    0.7050225   0.7784396
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.7220640    0.6775443   0.7665836
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.7234593    0.6533427   0.7935759
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.4470792    0.4268751   0.4672832
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.4704672    0.4215648   0.5193697
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.4545210    0.3849074   0.5241346
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.5134930    0.4820036   0.5449824
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.5303094    0.4715774   0.5890414
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.4690707    0.4164204   0.5217210
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                0.5428281    0.4748305   0.6108258
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.4871493    0.4471651   0.5271334
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.4896843    0.4435605   0.5358080
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.4918419    0.4521885   0.5314953
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.4319839    0.3557391   0.5082287
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.4315478    0.3903926   0.4727031
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.4494621    0.4136047   0.4853195
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.4597227    0.4396160   0.4798295
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.4756273    0.4125631   0.5386915
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.5064139    0.4921940   0.5206338
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.4931511    0.4714346   0.5148676
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.4682883    0.4398498   0.4967267
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.4975237    0.4808789   0.5141686
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.5108703    0.4768510   0.5448897
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.4742903    0.4342802   0.5143003
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.4505200    0.4439353   0.4571046
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.4445951    0.4383252   0.4508651
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.4321774    0.4229333   0.4414215
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.4306806    0.4080975   0.4532638
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.4540436    0.4042269   0.5038603
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.4486962    0.3936759   0.5037166
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.2300219    0.2130873   0.2469565
6-9 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.2193560    0.1629800   0.2757320
6-9 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.2422676    0.1886900   0.2958451
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.2684947    0.2422932   0.2946962
6-9 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.2538129    0.2235976   0.2840281
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.2354257    0.1875576   0.2832938
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                0.2799803    0.2350617   0.3248989
6-9 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.2701921    0.2343746   0.3060096
6-9 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.2462981    0.2068839   0.2857124
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.2631650    0.2338506   0.2924794
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.1530605    0.0958765   0.2102445
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.2798274    0.2439537   0.3157010
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.2702263    0.2346445   0.3058080
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.2307674    0.2163775   0.2451573
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.2250156    0.1493614   0.3006698
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2785795    0.2646555   0.2925034
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2477875    0.2283790   0.2671961
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.2580001    0.2304508   0.2855493
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.1869433    0.1753628   0.1985238
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.1728333    0.1398610   0.2058056
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.2073005    0.1498106   0.2647904
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.2299054    0.2145183   0.2452924
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.2361492    0.2195005   0.2527979
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.2257644    0.2035100   0.2480188
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.1784229    0.1625824   0.1942634
9-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.1300489    0.0622742   0.1978236
9-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.1675722    0.1426559   0.1924884
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.1839206    0.1575565   0.2102847
9-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.2321868    0.1895727   0.2748010
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.1870402    0.1442046   0.2298758
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                0.1536726    0.1031097   0.2042355
9-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.2392600    0.2019698   0.2765501
9-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.2095594    0.1739347   0.2451841
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.2209377    0.1894804   0.2523949
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.1729004    0.1062158   0.2395849
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.2185049    0.1777797   0.2592301
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.2124176    0.1805373   0.2442979
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.1594910    0.1455428   0.1734391
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.1087050    0.0404347   0.1769753
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1979942    0.1844899   0.2114984
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2013868    0.1809974   0.2217761
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1885013    0.1628374   0.2141652
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.1553833    0.1405075   0.1702591
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.1296205    0.1015222   0.1577187
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.1038168    0.0590082   0.1486255
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.1444667    0.1330857   0.1558478
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.1399254    0.1246971   0.1551536
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.1370776    0.1194560   0.1546991
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.1738987    0.1557209   0.1920766
12-15 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.1627179    0.1350688   0.1903669
12-15 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.1716918    0.1279654   0.2154182
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.1404827    0.1135772   0.1673883
12-15 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.1192339    0.0681125   0.1703553
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.1322089    0.0835153   0.1809024
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.1337483    0.0839979   0.1834988
12-15 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.1475123    0.1003181   0.1947065
12-15 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.1556312    0.1184323   0.1928301
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.1859230    0.1530768   0.2187693
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.2092799    0.1088761   0.3096836
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.1968189    0.1481500   0.2454877
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.1448675    0.1088580   0.1808769
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.1281568    0.1148844   0.1414292
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.1261582    0.0853640   0.1669525
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1655872    0.1524612   0.1787131
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1635414    0.1415076   0.1855753
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1577598    0.1307438   0.1847758
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.1755805    0.1591558   0.1920052
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.1685464    0.1390831   0.1980096
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.1621656    0.1261606   0.1981705
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.1228895    0.1079768   0.1378021
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.1287376    0.1141958   0.1432795
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.1305353    0.1105784   0.1504922
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.1602992    0.1434189   0.1771796
15-18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.1739478    0.1087276   0.2391679
15-18 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.1635780    0.1220348   0.2051212
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.1717488    0.1527009   0.1907967
15-18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.1547176    0.1104704   0.1989648
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.1495726    0.0980961   0.2010491
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.1772439    0.1380835   0.2164042
15-18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.1484209    0.0906670   0.2061748
15-18 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.1199426    0.0810806   0.1588045
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.2195656    0.1794816   0.2596496
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.2176119    0.1252953   0.3099285
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.2358065    0.1874512   0.2841617
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.1556670    0.1166193   0.1947146
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.1570829    0.1406819   0.1734840
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.1086380    0.0584184   0.1588575
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1517889    0.1380716   0.1655061
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1729373    0.1522056   0.1936690
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1825135    0.1582602   0.2067669
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.2353753    0.2171025   0.2536481
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.2376607    0.1940963   0.2812251
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.2428713    0.2042321   0.2815105
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.1548048    0.1404992   0.1691104
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.1643468    0.1487814   0.1799121
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.1442133    0.1240851   0.1643415
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.1764449    0.1597088   0.1931809
18-21 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.1299747    0.0713876   0.1885618
18-21 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.1523856    0.0987496   0.2060216
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.1855045    0.1605531   0.2104560
18-21 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.1525586    0.1112953   0.1938220
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.1297349    0.0885904   0.1708793
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.1327815    0.0659505   0.1996126
18-21 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.1512942    0.1097313   0.1928571
18-21 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.1811425    0.1434526   0.2188324
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.1703897    0.1298148   0.2109646
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.2243376    0.1723863   0.2762888
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.1839012    0.1428756   0.2249267
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.1620818    0.1081882   0.2159754
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.1747148    0.1575357   0.1918939
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.1697324    0.1143500   0.2251149
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1522063    0.1380222   0.1663904
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1296341    0.1097300   0.1495383
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1203525    0.0947228   0.1459822
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.1311369    0.1132641   0.1490097
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.1680161    0.1293669   0.2066652
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.1322303    0.0893314   0.1751292
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.1610541    0.1464273   0.1756809
21-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.0640947   -0.0154048   0.1435943
21-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.1684834    0.1336166   0.2033501
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.1678332    0.1409679   0.1946985
21-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.1545967    0.0961153   0.2130781
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.2571807    0.1603752   0.3539862
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.1830072    0.1014435   0.2645709
21-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.1975121    0.1581456   0.2368786
21-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.1893813    0.1560607   0.2227019
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.1814870    0.1467565   0.2162175
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.1403735    0.0528061   0.2279409
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.2038655    0.1686961   0.2390349
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.1554796    0.1143605   0.1965986
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.1351110    0.1179943   0.1522276
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.1856681    0.1349099   0.2364264
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1703446    0.1538502   0.1868390
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1844365    0.1630173   0.2058557
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1817766    0.1447924   0.2187608
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.1771121    0.1497866   0.2044376
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.1702042    0.1077195   0.2326888
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.1943845    0.1073733   0.2813958


### Parameter: E(Y)


agecat         studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       INDIA          NA                   NA                0.7592914   0.7347074   0.7838753
0-3 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                0.9430321   0.9048227   0.9812414
0-3 months     ki0047075b-MAL-ED       PERU           NA                   NA                0.9447947   0.9048809   0.9847084
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.9452995   0.9158887   0.9747104
0-3 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.8272033   0.8099583   0.8444483
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.8578362   0.8532969   0.8623755
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.7326186   0.7060633   0.7591738
3-6 months     ki0047075b-MAL-ED       INDIA          NA                   NA                0.4482193   0.4292370   0.4672017
3-6 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                0.5088333   0.4833138   0.5343529
3-6 months     ki0047075b-MAL-ED       PERU           NA                   NA                0.5019717   0.4713849   0.5325585
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.4655326   0.4378428   0.4932223
3-6 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.4964806   0.4823933   0.5105678
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.4455447   0.4412571   0.4498323
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.4417069   0.4188101   0.4646037
6-9 months     ki0047075b-MAL-ED       INDIA          NA                   NA                0.2307010   0.2148519   0.2465500
6-9 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                0.2618133   0.2409192   0.2827074
6-9 months     ki0047075b-MAL-ED       PERU           NA                   NA                0.2606477   0.2361378   0.2851576
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.2602443   0.2384074   0.2820812
6-9 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1877629   0.1753820   0.2001437
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.2315100   0.2212683   0.2417516
9-12 months    ki0047075b-MAL-ED       INDIA          NA                   NA                0.1763927   0.1619302   0.1908552
9-12 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1900880   0.1689600   0.2112161
9-12 months    ki0047075b-MAL-ED       PERU           NA                   NA                0.2027379   0.1781715   0.2273042
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.2160101   0.1924536   0.2395667
9-12 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1447801   0.1317780   0.1577822
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.1420140   0.1336425   0.1503855
12-15 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.1734539   0.1567837   0.1901240
12-15 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1367645   0.1148549   0.1586741
12-15 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.1483489   0.1228877   0.1738100
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.1919076   0.1650647   0.2187506
12-15 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1729179   0.1594294   0.1864064
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.1259034   0.1158932   0.1359137
15-18 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.1608713   0.1452597   0.1764829
15-18 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1663773   0.1495283   0.1832262
15-18 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.1412515   0.1146687   0.1678343
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.2255773   0.1962117   0.2549429
15-18 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.2366725   0.2211618   0.2521832
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.1564780   0.1469076   0.1660485
18-21 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.1735054   0.1577790   0.1892318
18-21 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1731727   0.1529675   0.1933779
18-21 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.1614004   0.1338511   0.1889497
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.1795914   0.1521104   0.2070724
18-21 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1364811   0.1212495   0.1517126
21-24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.1593551   0.1456583   0.1730518
21-24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1795446   0.1535636   0.2055255
21-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.1898916   0.1619826   0.2178006
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.1861341   0.1617310   0.2105371
21-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1783518   0.1538068   0.2028967


### Parameter: ATE


agecat         studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0237873   -0.1512101    0.1036354
0-3 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0182332   -0.0802695    0.1167358
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0055158   -0.1254288    0.1364604
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0905840   -0.1829889    0.0018210
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0054763   -0.1020784    0.0911258
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0096528   -0.1065734    0.0872679
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0482795   -0.1287543    0.0321953
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0486425   -0.1103223    0.0130373
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0183785   -0.0671017    0.0303448
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.1036068   -0.1734271   -0.0337865
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0231547   -0.0557541    0.0094448
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0291938   -0.0699474    0.0115598
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0136953   -0.0404480    0.0678385
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0282572   -0.0781999    0.0216855
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0223380   -0.0324488   -0.0122272
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0361813   -0.0492983   -0.0230643
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0196671   -0.0782853    0.0389511
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0182718   -0.0954534    0.0589098
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0233881   -0.0295237    0.0762998
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0074418   -0.0650445    0.0799280
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0168164   -0.0498247    0.0834575
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0444223   -0.1057708    0.0169261
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0556789   -0.1345611    0.0232034
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0531439   -0.1353088    0.0290211
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0598580   -0.1457979    0.0260819
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0602940   -0.1174443   -0.0031438
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0102606   -0.0308494    0.0513706
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0261652   -0.0463803    0.0987106
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0132627   -0.0392206    0.0126951
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0381256   -0.0699210   -0.0063302
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0133466   -0.0245264    0.0512197
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0232334   -0.0665677    0.0201008
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0059248   -0.0148524    0.0030028
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0183426   -0.0296956   -0.0069895
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0233630   -0.0308826    0.0776086
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0180156   -0.0413409    0.0773720
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0106659   -0.0695305    0.0481986
6-9 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0122457   -0.0439445    0.0684358
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0146818   -0.0546753    0.0253117
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0330690   -0.0876389    0.0215009
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0097882   -0.0672388    0.0476625
6-9 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0336821   -0.0934414    0.0260771
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1101045   -0.1743644   -0.0458445
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0166624   -0.0296653    0.0629900
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0394588   -0.0778402   -0.0010775
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0452106   -0.1288145    0.0383933
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0307919   -0.0546784   -0.0069054
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0205794   -0.0514474    0.0102887
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0141100   -0.0490568    0.0208368
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0203572   -0.0382875    0.0790019
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0062438   -0.0160228    0.0285105
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0041410   -0.0315523    0.0232704
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0483740   -0.1179752    0.0212272
9-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0108507   -0.0403760    0.0186746
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0482662   -0.0018440    0.0983764
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0031196   -0.0471791    0.0534182
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0855873    0.0227609    0.1484138
9-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0558868   -0.0059657    0.1177393
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0480373   -0.1217691    0.0256946
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0024328   -0.0538925    0.0490269
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0529266   -0.0877247   -0.0181285
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.1037126   -0.1790597   -0.0283655
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0033926   -0.0210633    0.0278485
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0094929   -0.0384929    0.0195071
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0257628   -0.0575559    0.0060303
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0515665   -0.0987798   -0.0043531
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0045414   -0.0232306    0.0141478
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0073892   -0.0287114    0.0139331
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0111809   -0.0442703    0.0219085
12-15 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0022070   -0.0495613    0.0451474
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0212488   -0.0790183    0.0365206
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0082739   -0.0639063    0.0473586
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0137640   -0.0548101    0.0823380
12-15 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0218828   -0.0402369    0.0840026
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0233568   -0.0822831    0.1289967
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0108958   -0.0478199    0.0696115
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0167106   -0.0550882    0.0216669
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0187093   -0.0731230    0.0357045
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0020457   -0.0276930    0.0236016
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0078274   -0.0378632    0.0222085
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0070341   -0.0407662    0.0266980
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0134149   -0.0529892    0.0261594
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0058482   -0.0139194    0.0256158
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0076458   -0.0166764    0.0319680
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0136485   -0.0537207    0.0810178
15-18 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0032788   -0.0415630    0.0481205
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0170312   -0.0652043    0.0311418
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0221763   -0.0770639    0.0327114
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0288230   -0.0986015    0.0409556
15-18 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0573013   -0.1124718   -0.0021308
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0019536   -0.1025970    0.0986897
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0162409   -0.0465680    0.0790498
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0014160   -0.0409363    0.0437682
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0470290   -0.1106429    0.0165848
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0211484   -0.0037105    0.0460073
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0307246    0.0028609    0.0585884
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0022854   -0.0449560    0.0495268
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0074960   -0.0352461    0.0502380
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0095420   -0.0116828    0.0307667
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0105915   -0.0356017    0.0144187
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0464702   -0.1074008    0.0144605
18-21 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0240593   -0.0802458    0.0321271
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0329459   -0.0811666    0.0152749
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0557697   -0.1038887   -0.0076507
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0185127   -0.0601884    0.0972138
18-21 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0483610   -0.0283652    0.1250872
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0539479   -0.0119706    0.1198664
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0135115   -0.0441897    0.0712126
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0126330   -0.0439323    0.0691984
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0076506   -0.0696263    0.0849276
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0225721   -0.0470131    0.0018689
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0318538   -0.0611466   -0.0025610
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0368791   -0.0057025    0.0794608
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0010934   -0.0453797    0.0475665
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0969594   -0.1777933   -0.0161255
21-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0074293   -0.0303813    0.0452398
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0132365   -0.0775934    0.0511205
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0893475   -0.0111166    0.1898116
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0145049   -0.0760620    0.1050718
21-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0063741   -0.0817332    0.0944814
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0411135   -0.1353167    0.0530898
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0223785   -0.0270492    0.0718062
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0203686   -0.0649080    0.0241708
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0301886   -0.0351351    0.0955122
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0140919   -0.0129423    0.0411261
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0114320   -0.0290636    0.0519276
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0069079   -0.0751063    0.0612905
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0172725   -0.0739287    0.1084736


### Parameter: PAR


agecat         studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0009140   -0.0078973    0.0097253
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0130028   -0.0362778    0.0102721
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0062444   -0.0722448    0.0597561
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0210275   -0.0460193    0.0039643
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0215616   -0.0628437    0.0197204
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0101060   -0.0218587    0.0016468
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0014637   -0.0120503    0.0091229
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0136697   -0.0183418   -0.0089976
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0091125   -0.0341674    0.0159423
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0011401   -0.0047717    0.0070520
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0046597   -0.0184651    0.0091458
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0408564   -0.0983879    0.0166751
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0263093   -0.0501505   -0.0024682
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0099353   -0.0247263    0.0445969
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0083595   -0.0175474    0.0008284
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0010431   -0.0091312    0.0070449
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0049752   -0.0090786   -0.0008719
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0110262   -0.0116638    0.0337163
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0006791   -0.0039867    0.0053448
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0066814   -0.0175271    0.0041643
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0193326   -0.0596801    0.0210149
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0029206   -0.0218904    0.0160491
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0339667   -0.0667272   -0.0012062
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0110698   -0.0195563   -0.0025832
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0008196   -0.0088110    0.0104502
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0016046   -0.0082618    0.0114711
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0020302   -0.0053190    0.0012587
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0061674   -0.0049452    0.0172801
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0490652    0.0056854    0.0924451
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0049275   -0.0258742    0.0160192
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0487962   -0.0783972   -0.0191953
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0001493   -0.0085098    0.0082113
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0106032   -0.0191174   -0.0020890
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0024528   -0.0100721    0.0051666
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0004449   -0.0045305    0.0036408
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0037182   -0.0155799    0.0081434
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0146005   -0.0290936    0.0582946
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0059846   -0.0190941    0.0310633
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0143612   -0.0468129    0.0180904
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0015269   -0.0104164    0.0073626
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0026625   -0.0103060    0.0049809
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0030140   -0.0054041    0.0114320
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0005721   -0.0033642    0.0045084
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0053716   -0.0161823    0.0054392
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0359923   -0.0745654    0.0025807
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0060118   -0.0209780    0.0330015
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0026827   -0.0383809    0.0330154
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0094084    0.0010265    0.0177903
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0012972   -0.0081059    0.0107003
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0016732   -0.0072949    0.0106414
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0029395   -0.0077606    0.0018816
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0123318   -0.0233621   -0.0013015
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0286188   -0.0258832    0.0831209
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0092017   -0.0143753    0.0327787
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0103574   -0.0375706    0.0582854
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0095454   -0.0175885   -0.0015022
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0053441   -0.0037461    0.0144344
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0016991   -0.0059735    0.0025754
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0117114   -0.0066378    0.0300605
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0068844   -0.0576947    0.0714634
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0046471   -0.0162190    0.0255131
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0135066   -0.0508581    0.0238450
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0047055   -0.0041718    0.0135827
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0012397   -0.0150161    0.0174955
