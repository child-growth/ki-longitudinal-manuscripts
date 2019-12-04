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
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                160    192
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4    192
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28    192
0-3 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  0    101
0-3 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        10    101
0-3 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure               91    101
0-3 months     ki0047075b-MAL-ED       INDIA          Food Secure                146    158
0-3 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         2    158
0-3 months     ki0047075b-MAL-ED       INDIA          Food Insecure               10    158
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 65     86
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         8     86
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               13     86
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                 27    105
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26    105
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure               52    105
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 94    177
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17    177
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               66    177
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 83    566
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       444    566
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39    566
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                428    721
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       207    721
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               86    721
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                361    493
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        71    493
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               61    493
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3190   6451
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2156   6451
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1105   6451
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                336    631
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       207    631
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure               88    631
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
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 77    523
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       407    523
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39    523
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                413    695
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       198    695
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84    695
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                335    453
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        62    453
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               56    453
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3153   6239
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2060   6239
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1026   6239
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                212    427
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       152    427
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure               63    427
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
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                416    688
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       193    688
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               79    688
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                340    466
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        64    466
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               62    466
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                387    759
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       266    759
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              106    759
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
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 74    482
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       370    482
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               38    482
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                408    674
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       189    674
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               77    674
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                330    455
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67    455
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               58    455
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                459    858
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       292    858
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              107    858
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
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                390    660
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       190    660
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               80    660
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                335    456
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        68    456
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               53    456
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                449    862
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       298    862
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              115    862
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
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                368    604
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       165    604
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               71    604
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                339    466
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67    466
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               60    466
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                468    878
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       291    878
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              119    878
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
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                341    546
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       141    546
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               64    546
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                315    430
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        61    430
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               54    430
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
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                315    490
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       120    490
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               55    490
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                245    339
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        49    339
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               45    339


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
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/4576f420-aaac-4d72-ba67-761848aafa8d/5fa9e016-fc04-4469-93ef-4833528cbc92/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4576f420-aaac-4d72-ba67-761848aafa8d/5fa9e016-fc04-4469-93ef-4833528cbc92/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4576f420-aaac-4d72-ba67-761848aafa8d/5fa9e016-fc04-4469-93ef-4833528cbc92/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                3.5248146   3.3677108   3.6819185
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                3.6202237   3.3114210   3.9290264
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                3.5269210   3.2344771   3.8193649
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                3.1080103   2.9231093   3.2929112
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                3.1181503   2.9547824   3.2815181
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                3.0405558   2.8906572   3.1904545
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                3.1996043   3.0653366   3.3338720
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                3.0831067   2.7807573   3.3854561
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                3.1518717   2.9626676   3.3410758
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                3.2161891   3.0729235   3.3594548
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                3.1001978   3.0397639   3.1606318
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                2.9957694   2.8204994   3.1710394
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                3.1240994   3.0762109   3.1719879
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                3.1554019   3.0861836   3.2246203
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                3.0918930   3.0002506   3.1835354
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                3.5902359   3.5316485   3.6488234
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                3.6346699   3.4831395   3.7862004
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                3.6058801   3.4619957   3.7497646
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                3.6793417   3.6584521   3.7002312
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                3.6529208   3.6268125   3.6790291
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                3.5989586   3.5572484   3.6406689
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                3.0684513   2.9228774   3.2140251
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                2.8867896   2.7095600   3.0640192
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                2.9974939   2.6391351   3.3558526
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                1.9057734   1.8324276   1.9791193
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                1.9760085   1.7764851   2.1755318
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                1.9164151   1.7198912   2.1129390
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                1.9537840   1.8657160   2.0418520
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                1.8747213   1.6510811   2.0983615
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                1.8858286   1.6967477   2.0749095
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                2.0103627   1.8354506   2.1852748
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                2.0439423   1.8300609   2.2578238
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                1.8941591   1.7507549   2.0375632
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                2.0077341   1.8986853   2.1167828
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.8869423   1.6664483   2.1074362
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                1.9047936   1.7497754   2.0598117
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                1.8130024   1.7008079   1.9251970
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                1.8379595   1.7819340   1.8939850
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                1.8165886   1.6629200   1.9702572
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                2.0060989   1.9612038   2.0509939
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                2.0028352   1.9343230   2.0713473
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                2.0112966   1.8848291   2.1377641
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                1.7080796   1.6604693   1.7556899
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                1.6871300   1.5909320   1.7833279
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                1.7400582   1.6375990   1.8425174
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                1.9340673   1.9128513   1.9552833
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                1.9295992   1.9075619   1.9516365
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                1.9031664   1.8688703   1.9374624
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                1.9200569   1.8340743   2.0060396
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                1.8537654   1.7612830   1.9462479
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                1.8515912   1.6437772   2.0594051
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                1.2401898   1.1819235   1.2984560
6-9 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                1.4261261   1.1284401   1.7238122
6-9 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                1.2090152   1.0476649   1.3703656
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                1.2986113   1.2364865   1.3607360
6-9 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                1.3927718   1.2277584   1.5577851
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                1.2986983   1.1479668   1.4494297
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                1.1791730   1.0425870   1.3157591
6-9 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                1.2419826   1.0934767   1.3904886
6-9 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                1.3222357   1.2008309   1.4436405
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                1.4318242   1.3445036   1.5191447
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.2041850   1.0367820   1.3715881
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                1.3778140   1.2571642   1.4984637
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                1.2950970   1.1772644   1.4129296
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                1.2610299   1.2158856   1.3061742
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                1.1261170   0.9960539   1.2561801
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                1.3534609   1.3141392   1.3927827
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                1.2992881   1.2466804   1.3518958
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                1.2664185   1.1896388   1.3431982
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                1.3138364   1.2756605   1.3520123
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                1.2862584   1.2097277   1.3627890
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                1.4288551   1.2175499   1.6401603
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                1.2922118   1.2346895   1.3497342
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                1.2915491   1.2369430   1.3461551
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                1.2540615   1.1474906   1.3606324
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.9797121   0.9374912   1.0219330
9-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.9475996   0.7621337   1.1330655
9-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.9221096   0.7717056   1.0725137
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                1.0823755   1.0187976   1.1459535
9-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                1.1073838   0.9859139   1.2288537
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.9953158   0.8603686   1.1302630
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                1.3244940   1.1501969   1.4987911
9-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.9280668   0.8108778   1.0452557
9-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                1.0400081   0.9337772   1.1462389
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                1.0075648   0.9117833   1.1033464
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.0479223   0.8762928   1.2195517
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.9879261   0.8811821   1.0946701
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                1.2452972   1.1564403   1.3341542
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                1.0635315   1.0237603   1.1033028
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                1.0272979   0.9138060   1.1407898
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                1.1308472   1.0972811   1.1644134
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                1.1424861   1.0926201   1.1923520
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                1.0377436   0.9619594   1.1135279
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                1.0439294   1.0143128   1.0735460
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.9096962   0.8363509   0.9830416
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.8252524   0.6540745   0.9964304
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                1.0602836   1.0146339   1.1059333
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                1.0569423   1.0075188   1.1063659
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                1.0318232   0.9313758   1.1322706
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.9132666   0.8696208   0.9569124
12-15 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.9077802   0.6843483   1.1312121
12-15 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.9026911   0.7911383   1.0142439
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                1.0076649   0.9479626   1.0673672
12-15 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.9518963   0.8243297   1.0794630
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                1.0091057   0.8926948   1.1255166
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.7763591   0.6565758   0.8961424
12-15 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                1.0053386   0.8307955   1.1798816
12-15 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.9217586   0.8214013   1.0221158
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.9792706   0.8858655   1.0726757
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.8239864   0.6341126   1.0138602
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.8762926   0.8009084   0.9516767
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.7998769   0.7156788   0.8840750
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.7174120   0.6634739   0.7713501
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.6437488   0.5403031   0.7471944
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.9748683   0.9428816   1.0068549
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.9435534   0.8969699   0.9901369
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                1.0184784   0.9529227   1.0840342
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.8907807   0.8565645   0.9249969
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.8541010   0.7804117   0.9277904
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.8126796   0.7226711   0.9026880
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.9355421   0.8917649   0.9793193
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.9469583   0.8919136   1.0020030
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.9602005   0.8693810   1.0510200
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.8385254   0.7989253   0.8781256
15-18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.7756646   0.6526849   0.8986442
15-18 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.8336653   0.7135056   0.9538250
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.8532925   0.7891597   0.9174253
15-18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.8487043   0.6940984   1.0033101
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.7638433   0.6681650   0.8595217
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.8900636   0.7397304   1.0403968
15-18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.8436249   0.6863202   1.0009296
15-18 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.8818686   0.8084209   0.9553164
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.8196745   0.7430873   0.8962617
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.0391817   0.8715847   1.2067787
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.9393775   0.8606254   1.0181296
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.8791615   0.7546318   1.0036911
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.7735690   0.7298283   0.8173096
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.5641755   0.4477995   0.6805516
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.9146999   0.8858191   0.9435806
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.9314769   0.8857985   0.9771553
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.9013759   0.8350150   0.9677367
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.7651773   0.7195678   0.8107869
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.7435613   0.6774711   0.8096516
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.7507612   0.6875770   0.8139454
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.8200478   0.7799108   0.8601849
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.8540038   0.7926475   0.9153602
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.8612006   0.7700067   0.9523945
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.8817637   0.8430895   0.9204379
18-21 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                1.0051203   0.8240374   1.1862031
18-21 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.8508739   0.7252066   0.9765413
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.7668824   0.7091608   0.8246039
18-21 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.8090077   0.6773479   0.9406675
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.7151020   0.6094783   0.8207258
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.8300378   0.7259442   0.9341314
18-21 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.9755963   0.8308312   1.1203614
18-21 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.8752099   0.7724471   0.9779727
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.8000186   0.7191467   0.8808906
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.7998395   0.5994917   1.0001874
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.7495311   0.6623359   0.8367263
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.7166275   0.6172635   0.8159915
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.7314652   0.6915579   0.7713725
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.7301449   0.5845864   0.8757035
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.8006241   0.7713770   0.8298711
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.7843469   0.7357344   0.8329594
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.8121832   0.7500829   0.8742834
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.9248300   0.8810026   0.9686575
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.8538976   0.7851750   0.9226203
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.8695398   0.7996081   0.9394714
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.8327563   0.7983537   0.8671590
21-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.8790545   0.7349181   1.0231910
21-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.7334250   0.6333190   0.8335311
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.8015289   0.7474963   0.8555615
21-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.7505128   0.6123864   0.8886393
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.8570991   0.6392336   1.0749645
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.7655755   0.6416611   0.8894899
21-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.8316301   0.7039226   0.9593376
21-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.7877609   0.6864993   0.8890225
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.8440772   0.7815097   0.9066447
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.7470220   0.5927508   0.9012932
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.8591004   0.7540943   0.9641064
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.7904692   0.7123044   0.8686340
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.7068402   0.6658257   0.7478547
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.6706043   0.5326395   0.8085690
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.8049198   0.7746946   0.8351450
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.7918703   0.7416779   0.8420628
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.7836390   0.7076585   0.8596196
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.7983942   0.7408479   0.8559405
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.8064779   0.7115412   0.9014147
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.8107043   0.7137214   0.9076871


### Parameter: E(Y)


agecat         studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                3.5340083   3.4039569   3.6640597
0-3 months     ki0047075b-MAL-ED       PERU           NA                   NA                3.0771151   2.9798686   3.1743617
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                3.1706167   3.0660515   3.2751819
0-3 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                3.5985708   3.5472330   3.6499087
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                3.6567426   3.6399122   3.6735730
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                2.9989612   2.8903755   3.1075470
3-6 months     ki0047075b-MAL-ED       INDIA          NA                   NA                1.9082925   1.8404592   1.9761258
3-6 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                1.9342793   1.8588543   2.0097043
3-6 months     ki0047075b-MAL-ED       PERU           NA                   NA                1.9602080   1.8596335   2.0607825
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                1.9613082   1.8765646   2.0460517
3-6 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                1.7091655   1.6694794   1.7488517
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                1.9275104   1.9126078   1.9424130
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                1.8863575   1.8217809   1.9509341
6-9 months     ki0047075b-MAL-ED       INDIA          NA                   NA                1.2422416   1.1877178   1.2967654
6-9 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                1.3097456   1.2551002   1.3643910
6-9 months     ki0047075b-MAL-ED       PERU           NA                   NA                1.2666923   1.1869188   1.3464657
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                1.3946381   1.3274639   1.4618123
6-9 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                1.3253518   1.2842303   1.3664733
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                1.2866516   1.2490099   1.3242932
9-12 months    ki0047075b-MAL-ED       INDIA          NA                   NA                0.9742845   0.9342438   1.0143252
9-12 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                1.0723046   1.0192507   1.1253585
9-12 months    ki0047075b-MAL-ED       PERU           NA                   NA                1.0841807   1.0042683   1.1640932
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                1.0039681   0.9366684   1.0712678
9-12 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.9962879   0.9629862   1.0295896
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                1.0555972   1.0226472   1.0885472
12-15 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.9122799   0.8717874   0.9527724
12-15 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                1.0013434   0.9518037   1.0508831
12-15 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.9058068   0.8315771   0.9800365
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.9279589   0.8673916   0.9885262
12-15 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.8762334   0.8467723   0.9056944
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.9427785   0.9101000   0.9754569
15-18 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.8366673   0.7997118   0.8736229
15-18 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.8392579   0.7866195   0.8918963
15-18 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.8741374   0.8083662   0.9399086
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.8823933   0.8286956   0.9360911
15-18 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.7602133   0.7247460   0.7956806
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.8368797   0.8049350   0.8688244
18-21 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.8823473   0.8458552   0.9188393
18-21 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.7640891   0.7161902   0.8119880
18-21 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.8891475   0.8204255   0.9578695
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.7818920   0.7244019   0.8393822
18-21 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.9078241   0.8730360   0.9426122
21-24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.8258504   0.7935667   0.8581341
21-24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.8037991   0.7498983   0.8577000
21-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.7935057   0.7259219   0.8610894
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.8416651   0.7887272   0.8946030
21-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.8011967   0.7555462   0.8468473


### Parameter: ATE


agecat         studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0954091   -0.2510598    0.4418780
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0021064   -0.3298651    0.3340779
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0101400   -0.2365935    0.2568735
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0674544   -0.3054838    0.1705750
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1164976   -0.4473193    0.2143241
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0477326   -0.2797369    0.1842717
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.1159913   -0.2714818    0.0394993
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.2204197   -0.4467925    0.0059530
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0313025   -0.0528669    0.1154719
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0322064   -0.1356068    0.0711940
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0444340   -0.1180282    0.2068962
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0156442   -0.1397109    0.1709994
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0264209   -0.0599062    0.0070644
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0803830   -0.1234923   -0.0372737
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.1816617   -0.4154919    0.0521686
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0709574   -0.4534943    0.3115794
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0702350   -0.1423424    0.2828125
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0106416   -0.1991231    0.2204064
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0790627   -0.3194184    0.1612931
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0679554   -0.2765400    0.1406292
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0335796   -0.2427165    0.3098757
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.1162036   -0.3423872    0.1099799
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1207918   -0.3667780    0.1251944
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1029405   -0.2924722    0.0865912
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0249570   -0.1004482    0.1503623
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0035861   -0.1866812    0.1938535
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0032637   -0.0851751    0.0786478
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0051977   -0.1290021    0.1393975
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0209497   -0.1282846    0.0863852
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0319786   -0.0810021    0.1449592
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0044681   -0.0338659    0.0249296
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0309010   -0.0710761    0.0092742
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0662915   -0.1879344    0.0553514
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0684658   -0.2918524    0.1549209
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.1859364   -0.1173984    0.4892711
6-9 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0311745   -0.2027231    0.1403740
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0941605   -0.0821599    0.2704809
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0000870   -0.1629451    0.1631191
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0628096   -0.1389570    0.2645762
6-9 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.1430627   -0.0396800    0.3258053
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.2276391   -0.4164476   -0.0388306
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0540102   -0.2029439    0.0949235
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0340671   -0.1602516    0.0921174
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.1689800   -0.3444820    0.0065219
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0541729   -0.1198522    0.0115064
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0870425   -0.1733056   -0.0007794
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0275780   -0.1131020    0.0579459
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.1150186   -0.0997074    0.3297447
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0006628   -0.0800799    0.0787543
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0381504   -0.1584345    0.0821338
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0321125   -0.2223234    0.1580984
9-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0576025   -0.2138202    0.0986152
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0250083   -0.1120942    0.1621108
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0870597   -0.2362338    0.0621143
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.3964272   -0.6064575   -0.1863969
9-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.2844859   -0.4886047   -0.0803672
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0403574   -0.1561897    0.2369046
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0196387   -0.1630555    0.1237781
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.1817657   -0.2791172   -0.0844142
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.2179994   -0.3621381   -0.0738606
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0116388   -0.0484719    0.0717496
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0931036   -0.1759887   -0.0102185
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.1342332   -0.2133324   -0.0551340
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.2186770   -0.3923981   -0.0449559
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0033413   -0.0691799    0.0624974
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0284604   -0.1410811    0.0841604
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0054864   -0.2331414    0.2221685
12-15 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0105755   -0.1303627    0.1092117
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0557686   -0.1966146    0.0850775
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0014408   -0.1293868    0.1322684
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2289794    0.0172879    0.4406710
12-15 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.1453995   -0.0108683    0.3016672
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1552842   -0.3668890    0.0563206
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1029780   -0.2230083    0.0170523
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0824649   -0.1824580    0.0175283
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.1561281   -0.2895085   -0.0227478
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0313149   -0.0878230    0.0251933
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0436102   -0.0293330    0.1165533
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0366796   -0.1179254    0.0445661
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0781011   -0.1743937    0.0181915
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0114162   -0.0563757    0.0792081
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0246584   -0.0777498    0.1270666
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0628609   -0.1920590    0.0663373
15-18 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0048601   -0.1313770    0.1216568
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0045882   -0.1719680    0.1627915
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0894492   -0.2046332    0.0257348
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0464387   -0.2640274    0.1711500
15-18 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0081950   -0.1755109    0.1591210
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.2195072    0.0352401    0.4037742
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.1197030    0.0098508    0.2295552
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.1055925   -0.2375807    0.0263957
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.3149859   -0.4854295   -0.1445424
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0167770   -0.0372657    0.0708197
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0133240   -0.0856970    0.0590491
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0216160   -0.1019164    0.0586844
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0144161   -0.0923422    0.0635100
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0339560   -0.0399948    0.1079068
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0411528   -0.0562086    0.1385142
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.1233565   -0.0618101    0.3085232
18-21 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0308898   -0.1623736    0.1005939
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0421253   -0.1016317    0.1858824
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0517803   -0.1721471    0.0685865
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.1455585   -0.0327457    0.3238628
18-21 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0451721   -0.1011005    0.1914447
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0001791   -0.2162336    0.2158754
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0504876   -0.1694131    0.0684380
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0148377   -0.0922408    0.1219161
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0135174   -0.1627224    0.1897573
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0162771   -0.0730096    0.0404553
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0115591   -0.0570836    0.0802019
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0709324   -0.1524410    0.0105762
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0552903   -0.1378208    0.0272402
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0462982   -0.1018870    0.1944834
21-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0993313   -0.2051838    0.0065212
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0510161   -0.1993348    0.0973026
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0555702   -0.1688956    0.2800360
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0660546   -0.1118892    0.2439984
21-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0221854   -0.1378417    0.1822125
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0970552   -0.2635313    0.0694209
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0150231   -0.1072101    0.1372563
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0836290   -0.1719009    0.0046428
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.1198650   -0.2784336    0.0387037
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0130495   -0.0716400    0.0455410
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0212808   -0.1030524    0.0604909
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0080837   -0.1029323    0.1190998
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0123100   -0.1004607    0.1250808


### Parameter: PAR


agecat         studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0091937   -0.0562706    0.0746579
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0308951   -0.1923345    0.1305442
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0289876   -0.1280508    0.0700755
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.1061776   -0.2379270    0.0255718
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0051454   -0.0247737    0.0350646
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0083349   -0.0239323    0.0406022
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0225991   -0.0378149   -0.0073832
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0694900   -0.1728560    0.0338760
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0025190   -0.0151801    0.0202181
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0195047   -0.0651748    0.0261655
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0501547   -0.2108588    0.1105493
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0464259   -0.1218024    0.0289506
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0196890   -0.0860791    0.1254572
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0003016   -0.0310666    0.0304634
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0010859   -0.0210309    0.0232028
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0065569   -0.0203538    0.0072399
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0336994   -0.0947104    0.0273116
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0020519   -0.0139755    0.0180792
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0111343   -0.0234075    0.0456761
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0875192   -0.0384223    0.2134608
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0371861   -0.0961288    0.0217567
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0395020   -0.1460148    0.0670108
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0251915   -0.0484961   -0.0018868
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0115154   -0.0204487    0.0434795
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0055603   -0.0419352    0.0308147
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0054276   -0.0193616    0.0085063
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0100710   -0.0406792    0.0205373
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.2403133   -0.3872001   -0.0934265
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0035968   -0.0623545    0.0551610
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.1567164   -0.2386050   -0.0748277
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0073728   -0.0286221    0.0138766
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0476415   -0.0743586   -0.0209244
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0046864   -0.0351866    0.0258139
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0009867   -0.0125548    0.0105813
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0063215   -0.0343105    0.0216675
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.1294477    0.0162248    0.2426706
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0513117   -0.1054193    0.0027960
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0757146   -0.1590448    0.0076155
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0037288   -0.0241523    0.0166947
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0145473   -0.0323945    0.0032999
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0072363   -0.0227742    0.0372469
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0018581   -0.0123314    0.0086152
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0140346   -0.0436573    0.0155882
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0159262   -0.1417797    0.1099272
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0627188    0.0137837    0.1116540
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.1063896   -0.2178678    0.0050887
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0030169   -0.0155429    0.0215767
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0049640   -0.0226149    0.0126869
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0168319   -0.0128766    0.0465404
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0005836   -0.0110403    0.0122074
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0027932   -0.0303727    0.0247863
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0591097   -0.0413286    0.1595480
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0181266   -0.0682589    0.0320057
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0125193   -0.0781755    0.1032142
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0028485   -0.0210612    0.0153642
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0170059   -0.0348047    0.0007929
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0069059   -0.0171772    0.0033655
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0022703   -0.0369314    0.0414719
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0279302   -0.0834049    0.1392652
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0024121   -0.0501905    0.0453662
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0732515   -0.1471928    0.0006898
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0055844   -0.0240462    0.0128773
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0028025   -0.0218735    0.0274785
