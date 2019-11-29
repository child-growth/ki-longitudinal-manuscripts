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

**Intervention Variable:** predfeed3

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid               country                        predfeed3    n_cell       n  outcome_variable 
-------------  --------------------  -----------------------------  ----------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1               193     237  y_rate_len       
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                44     237  y_rate_len       
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                73     147  y_rate_len       
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                74     147  y_rate_len       
0-3 months     ki0047075b-MAL-ED     INDIA                          1               113     164  y_rate_len       
0-3 months     ki0047075b-MAL-ED     INDIA                          0                51     164  y_rate_len       
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                81     153  y_rate_len       
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                72     153  y_rate_len       
0-3 months     ki0047075b-MAL-ED     PERU                           1               168     262  y_rate_len       
0-3 months     ki0047075b-MAL-ED     PERU                           0                94     262  y_rate_len       
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                58     203  y_rate_len       
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               145     203  y_rate_len       
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                57     197  y_rate_len       
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               140     197  y_rate_len       
0-3 months     ki1000109-EE          PAKISTAN                       1                31      31  y_rate_len       
0-3 months     ki1000109-EE          PAKISTAN                       0                 0      31  y_rate_len       
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1               378     456  y_rate_len       
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                78     456  y_rate_len       
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1             10705   11852  y_rate_len       
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0              1147   11852  y_rate_len       
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1               145     160  y_rate_len       
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                15     160  y_rate_len       
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1               184     225  y_rate_len       
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                41     225  y_rate_len       
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                93     186  y_rate_len       
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                93     186  y_rate_len       
3-6 months     ki0047075b-MAL-ED     INDIA                          1               146     206  y_rate_len       
3-6 months     ki0047075b-MAL-ED     INDIA                          0                60     206  y_rate_len       
3-6 months     ki0047075b-MAL-ED     NEPAL                          1               112     226  y_rate_len       
3-6 months     ki0047075b-MAL-ED     NEPAL                          0               114     226  y_rate_len       
3-6 months     ki0047075b-MAL-ED     PERU                           1               174     264  y_rate_len       
3-6 months     ki0047075b-MAL-ED     PERU                           0                90     264  y_rate_len       
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                63     234  y_rate_len       
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               171     234  y_rate_len       
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                63     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               145     208  y_rate_len       
3-6 months     ki1000109-EE          PAKISTAN                       1                31      31  y_rate_len       
3-6 months     ki1000109-EE          PAKISTAN                       0                 0      31  y_rate_len       
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1               350     420  y_rate_len       
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                70     420  y_rate_len       
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1              6478    7103  y_rate_len       
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0               625    7103  y_rate_len       
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                21      21  y_rate_len       
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                 0      21  y_rate_len       
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1               177     217  y_rate_len       
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                40     217  y_rate_len       
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                90     177  y_rate_len       
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                87     177  y_rate_len       
6-9 months     ki0047075b-MAL-ED     INDIA                          1               143     205  y_rate_len       
6-9 months     ki0047075b-MAL-ED     INDIA                          0                62     205  y_rate_len       
6-9 months     ki0047075b-MAL-ED     NEPAL                          1               110     222  y_rate_len       
6-9 months     ki0047075b-MAL-ED     NEPAL                          0               112     222  y_rate_len       
6-9 months     ki0047075b-MAL-ED     PERU                           1               160     242  y_rate_len       
6-9 months     ki0047075b-MAL-ED     PERU                           0                82     242  y_rate_len       
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                62     222  y_rate_len       
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               160     222  y_rate_len       
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                59     193  y_rate_len       
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               134     193  y_rate_len       
6-9 months     ki1000109-EE          PAKISTAN                       1                36      36  y_rate_len       
6-9 months     ki1000109-EE          PAKISTAN                       0                 0      36  y_rate_len       
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1               314     378  y_rate_len       
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                64     378  y_rate_len       
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                17      18  y_rate_len       
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     0                 1      18  y_rate_len       
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1               179     218  y_rate_len       
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                39     218  y_rate_len       
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                89     175  y_rate_len       
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                86     175  y_rate_len       
9-12 months    ki0047075b-MAL-ED     INDIA                          1               139     201  y_rate_len       
9-12 months    ki0047075b-MAL-ED     INDIA                          0                62     201  y_rate_len       
9-12 months    ki0047075b-MAL-ED     NEPAL                          1               109     221  y_rate_len       
9-12 months    ki0047075b-MAL-ED     NEPAL                          0               112     221  y_rate_len       
9-12 months    ki0047075b-MAL-ED     PERU                           1               155     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED     PERU                           0                78     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                63     223  y_rate_len       
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               160     223  y_rate_len       
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                56     192  y_rate_len       
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               136     192  y_rate_len       
9-12 months    ki1000109-EE          PAKISTAN                       1                36      36  y_rate_len       
9-12 months    ki1000109-EE          PAKISTAN                       0                 0      36  y_rate_len       
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1               302     362  y_rate_len       
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                60     362  y_rate_len       
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                86      96  y_rate_len       
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                10      96  y_rate_len       
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1               168     206  y_rate_len       
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                38     206  y_rate_len       
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                86     165  y_rate_len       
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                79     165  y_rate_len       
12-15 months   ki0047075b-MAL-ED     INDIA                          1               138     200  y_rate_len       
12-15 months   ki0047075b-MAL-ED     INDIA                          0                62     200  y_rate_len       
12-15 months   ki0047075b-MAL-ED     NEPAL                          1               110     222  y_rate_len       
12-15 months   ki0047075b-MAL-ED     NEPAL                          0               112     222  y_rate_len       
12-15 months   ki0047075b-MAL-ED     PERU                           1               148     222  y_rate_len       
12-15 months   ki0047075b-MAL-ED     PERU                           0                74     222  y_rate_len       
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60     219  y_rate_len       
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               159     219  y_rate_len       
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                57     195  y_rate_len       
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               138     195  y_rate_len       
12-15 months   ki1000109-EE          PAKISTAN                       1                29      29  y_rate_len       
12-15 months   ki1000109-EE          PAKISTAN                       0                 0      29  y_rate_len       
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1               313     371  y_rate_len       
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                58     371  y_rate_len       
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                99     109  y_rate_len       
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                10     109  y_rate_len       
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1               168     206  y_rate_len       
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                38     206  y_rate_len       
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                82     157  y_rate_len       
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                75     157  y_rate_len       
15-18 months   ki0047075b-MAL-ED     INDIA                          1               138     201  y_rate_len       
15-18 months   ki0047075b-MAL-ED     INDIA                          0                63     201  y_rate_len       
15-18 months   ki0047075b-MAL-ED     NEPAL                          1               108     219  y_rate_len       
15-18 months   ki0047075b-MAL-ED     NEPAL                          0               111     219  y_rate_len       
15-18 months   ki0047075b-MAL-ED     PERU                           1               141     210  y_rate_len       
15-18 months   ki0047075b-MAL-ED     PERU                           0                69     210  y_rate_len       
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60     218  y_rate_len       
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               158     218  y_rate_len       
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                55     188  y_rate_len       
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               133     188  y_rate_len       
15-18 months   ki1000109-EE          PAKISTAN                       1                25      25  y_rate_len       
15-18 months   ki1000109-EE          PAKISTAN                       0                 0      25  y_rate_len       
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1               319     379  y_rate_len       
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                60     379  y_rate_len       
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                96     109  y_rate_len       
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                13     109  y_rate_len       
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1               166     203  y_rate_len       
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                37     203  y_rate_len       
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                79     150  y_rate_len       
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                71     150  y_rate_len       
18-21 months   ki0047075b-MAL-ED     INDIA                          1               138     201  y_rate_len       
18-21 months   ki0047075b-MAL-ED     INDIA                          0                63     201  y_rate_len       
18-21 months   ki0047075b-MAL-ED     NEPAL                          1               108     219  y_rate_len       
18-21 months   ki0047075b-MAL-ED     NEPAL                          0               111     219  y_rate_len       
18-21 months   ki0047075b-MAL-ED     PERU                           1               133     199  y_rate_len       
18-21 months   ki0047075b-MAL-ED     PERU                           0                66     199  y_rate_len       
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60     225  y_rate_len       
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               165     225  y_rate_len       
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                52     176  y_rate_len       
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               124     176  y_rate_len       
18-21 months   ki1000109-EE          PAKISTAN                       1                26      26  y_rate_len       
18-21 months   ki1000109-EE          PAKISTAN                       0                 0      26  y_rate_len       
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1               295     347  y_rate_len       
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                52     347  y_rate_len       
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1               164     201  y_rate_len       
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                37     201  y_rate_len       
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                77     149  y_rate_len       
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                72     149  y_rate_len       
21-24 months   ki0047075b-MAL-ED     INDIA                          1               138     201  y_rate_len       
21-24 months   ki0047075b-MAL-ED     INDIA                          0                63     201  y_rate_len       
21-24 months   ki0047075b-MAL-ED     NEPAL                          1               109     219  y_rate_len       
21-24 months   ki0047075b-MAL-ED     NEPAL                          0               110     219  y_rate_len       
21-24 months   ki0047075b-MAL-ED     PERU                           1               125     187  y_rate_len       
21-24 months   ki0047075b-MAL-ED     PERU                           0                62     187  y_rate_len       
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                59     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               167     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                53     175  y_rate_len       
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               122     175  y_rate_len       
21-24 months   ki1000109-EE          PAKISTAN                       1                16      16  y_rate_len       
21-24 months   ki1000109-EE          PAKISTAN                       0                 0      16  y_rate_len       
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1               237     279  y_rate_len       
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                42     279  y_rate_len       


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/dabfd5bf-b915-4484-a7cb-bdda30a58d4f/c484ac2a-8c44-4c77-8996-f1ac487ec05a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/dabfd5bf-b915-4484-a7cb-bdda30a58d4f/c484ac2a-8c44-4c77-8996-f1ac487ec05a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/dabfd5bf-b915-4484-a7cb-bdda30a58d4f/c484ac2a-8c44-4c77-8996-f1ac487ec05a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                3.3680216   3.2958544   3.4401889
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                3.1133857   2.9591300   3.2676414
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                3.8988761   3.7416247   4.0561275
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                3.7662026   3.5954242   3.9369810
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                3.3879847   3.2580591   3.5179103
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    NA                3.3161522   3.1124809   3.5198234
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                3.5046219   3.3873293   3.6219145
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                3.7495042   3.6064906   3.8925178
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                3.0845178   3.0031884   3.1658473
0-3 months     ki0047075b-MAL-ED     PERU                           0                    NA                3.0036317   2.8767031   3.1305604
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                3.1078335   2.9580105   3.2576565
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                3.2308680   3.1055195   3.3562165
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4572733   3.3047358   3.6098109
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                3.1668813   3.0691388   3.2646237
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                3.5854343   3.5266562   3.6442125
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                3.5797233   3.4397411   3.7197055
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                3.6635795   3.6504914   3.6766675
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                3.7025990   3.6693234   3.7358747
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                3.2389031   3.0593354   3.4184707
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                2.8941755   2.2478001   3.5405510
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                1.9227281   1.8670493   1.9784069
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                1.9783824   1.8669562   2.0898085
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                2.0301156   1.9190367   2.1411945
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                2.2958881   2.1759173   2.4158590
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                1.8915866   1.8102240   1.9729492
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    NA                1.8556885   1.7211973   1.9901797
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                1.8912609   1.8145015   1.9680202
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                2.0303476   1.9475668   2.1131285
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                1.9856878   1.9064063   2.0649693
3-6 months     ki0047075b-MAL-ED     PERU                           0                    NA                2.0712618   1.9530262   2.1894973
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                1.9616390   1.7796730   2.1436051
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                1.9769653   1.8791446   2.0747859
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7442163   1.6079243   1.8805083
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8790015   1.7963846   1.9616184
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                1.7254561   1.6801036   1.7708086
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                1.6710829   1.5727178   1.7694480
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                1.9194284   1.9051934   1.9336634
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                1.8885257   1.8463068   1.9307445
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                1.2469695   1.2020632   1.2918757
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                1.2414913   1.1410876   1.3418950
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                1.4956821   1.3587223   1.6326420
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                1.4534105   1.3372118   1.5696091
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                1.2214610   1.1550120   1.2879101
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    NA                1.2671730   1.1682666   1.3660794
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                1.3447714   1.2829835   1.4065593
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                1.3725358   1.3077876   1.4372841
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                1.3154167   1.2495872   1.3812462
6-9 months     ki0047075b-MAL-ED     PERU                           0                    NA                1.3345824   1.2359691   1.4331958
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                1.3630099   1.2344100   1.4916099
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                1.3938797   1.3181041   1.4696553
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2965988   1.1206448   1.4725528
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1493040   1.0676255   1.2309824
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                1.3183455   1.2631769   1.3735140
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                1.2840152   1.1977129   1.3703175
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.9904332   0.9455580   1.0353085
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                1.0045565   0.9261544   1.0829586
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                1.2894978   1.1824812   1.3965143
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                1.2861725   1.1645781   1.4077669
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                0.9198271   0.8723777   0.9672766
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    NA                1.0731635   1.0103965   1.1359306
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                1.0797868   1.0181593   1.1414143
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                1.0923826   1.0336630   1.1511021
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                1.1243420   1.0602176   1.1884664
9-12 months    ki0047075b-MAL-ED     PERU                           0                    NA                1.0380405   0.9537404   1.1223405
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.9695530   0.8068847   1.1322213
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                1.0079453   0.9359911   1.0798994
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7430586   0.5601831   0.9259340
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8664641   0.7714533   0.9614748
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.9811110   0.9360852   1.0261367
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                1.0777496   1.0049689   1.1505304
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                1.0780207   0.9849662   1.1710752
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                1.1709578   0.7840187   1.5578970
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.8951184   0.8518760   0.9383608
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                1.0300910   0.9200639   1.1401181
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                1.1488512   1.0699506   1.2277517
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                1.1586222   1.0654778   1.2517667
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.8955070   0.8423429   0.9486712
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.9167363   0.8466172   0.9868554
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.9455752   0.8882155   1.0029350
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.9562768   0.8986932   1.0138603
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.8822751   0.8282222   0.9363280
12-15 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.9034276   0.8156891   0.9911661
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.8931621   0.7638797   1.0224445
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.9353979   0.8665662   1.0042296
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8105004   0.6905869   0.9304139
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8799552   0.7942628   0.9656476
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.8729767   0.8427537   0.9031997
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.8310013   0.7504397   0.9115628
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.9835501   0.9098470   1.0572531
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                1.0274553   0.8712649   1.1836456
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.8346240   0.7925267   0.8767213
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.7561487   0.6768621   0.8354353
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.9454796   0.8555370   1.0354222
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                1.0124988   0.9242081   1.1007896
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.8281007   0.7840155   0.8721858
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.8994475   0.8272479   0.9716471
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.8285857   0.7671706   0.8900008
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.8635381   0.8042904   0.9227859
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.8438539   0.7960941   0.8916136
15-18 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.8661552   0.7777021   0.9546083
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.8502658   0.7298354   0.9706963
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.8950863   0.8354053   0.9547672
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7155498   0.5899570   0.8411425
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6736002   0.5955431   0.7516573
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.7853480   0.7432988   0.8273972
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.7051563   0.6486791   0.7616335
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.9439358   0.8646608   1.0232108
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                1.0714009   0.8708440   1.2719577
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.8028619   0.7627715   0.8429522
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.8557960   0.7825655   0.9290266
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.9095681   0.8105562   1.0085800
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.9658325   0.8627533   1.0689117
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.8445668   0.7999527   0.8891810
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.9215570   0.8527058   0.9904082
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.7932501   0.7365670   0.8499333
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.8502408   0.7964308   0.9040507
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.8694392   0.8126584   0.9262200
18-21 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.7924251   0.7207375   0.8641127
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.9108065   0.7926331   1.0289799
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.7428632   0.6824637   0.8032628
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7219809   0.5835616   0.8604003
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7263247   0.6394744   0.8131750
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.9106015   0.8639894   0.9572136
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.9680961   0.8962935   1.0398987
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.7726560   0.7313071   0.8140049
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.7278816   0.6584513   0.7973118
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.7793756   0.7200812   0.8386701
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.8143650   0.7469705   0.8817596
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.8242933   0.7845102   0.8640764
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.8347638   0.7741707   0.8953568
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.7859337   0.7313235   0.8405439
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.7874665   0.7251875   0.8497455
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.7580275   0.7009526   0.8151024
21-24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.7758068   0.6871007   0.8645129
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.7712327   0.6736023   0.8688631
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.8692412   0.8037435   0.9347390
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7757954   0.6685670   0.8830238
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6950658   0.6031370   0.7869945
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.8050799   0.7473102   0.8628496
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.6933084   0.5880319   0.7985849


### Parameter: E(Y)


agecat         studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                3.3300100   3.2632400   3.3967800
0-3 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                3.8333086   3.7172183   3.9493989
0-3 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                3.3581259   3.2511263   3.4651254
0-3 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                3.6149130   3.5218465   3.7079794
0-3 months     ki0047075b-MAL-ED     PERU                           NA                   NA                3.0514630   2.9842485   3.1186774
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                3.1964081   3.0976125   3.2952037
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2460048   3.1627741   3.3292354
0-3 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                3.5832888   3.5291425   3.6374351
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                3.6671582   3.6544756   3.6798407
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                3.2111724   3.0390342   3.3833107
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                1.9360220   1.8863911   1.9856528
3-6 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                2.1610058   2.0768189   2.2451928
3-6 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                1.8774058   1.8092128   1.9455987
3-6 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                1.9604886   1.9037186   2.0172585
3-6 months     ki0047075b-MAL-ED     PERU                           NA                   NA                2.0146923   1.9480408   2.0813438
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                1.9673270   1.8846989   2.0499551
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8384078   1.7678309   1.9089846
3-6 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                1.7175472   1.6762113   1.7588831
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                1.9166214   1.9029983   1.9302445
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                1.2426951   1.2021480   1.2832422
6-9 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                1.4793615   1.3932814   1.5654415
6-9 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                1.2410939   1.1870908   1.2950970
6-9 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                1.3593977   1.3145109   1.4042846
6-9 months     ki0047075b-MAL-ED     PERU                           NA                   NA                1.3181643   1.2633979   1.3729307
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                1.3866251   1.3204306   1.4528196
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1862735   1.1092792   1.2632679
6-9 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                1.3149164   1.2666599   1.3631729
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.9927203   0.9534705   1.0319702
9-12 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                1.2871495   1.2069822   1.3673169
9-12 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.9664571   0.9272553   1.0056589
9-12 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                1.0863279   1.0443920   1.1282637
9-12 months    ki0047075b-MAL-ED     PERU                           NA                   NA                1.0996556   1.0484043   1.1509069
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.9974431   0.9321487   1.0627375
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8135761   0.7280408   0.8991114
9-12 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.9981577   0.9587526   1.0375629
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                1.0827638   1.0008916   1.1646360
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.9168218   0.8756400   0.9580036
12-15 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                1.1479969   1.0880713   1.2079226
12-15 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.9027484   0.8605827   0.9449141
12-15 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.9510803   0.9108264   0.9913342
12-15 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.8899324   0.8436019   0.9362629
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.9200282   0.8606688   0.9793876
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8603058   0.7910045   0.9296071
12-15 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.8703223   0.8418462   0.8987983
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.9942404   0.9259295   1.0625513
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.8229575   0.7855057   0.8604093
15-18 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.9818884   0.9203285   1.0434482
15-18 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.8524809   0.8141426   0.8908193
15-18 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.8379671   0.7952249   0.8807093
15-18 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.8524194   0.8100116   0.8948273
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.8824996   0.8291590   0.9358403
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6765672   0.6111365   0.7419980
15-18 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.7714871   0.7347479   0.8082263
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.9624250   0.8894872   1.0353628
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.8119236   0.7768456   0.8470016
18-21 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.9218418   0.8499673   0.9937164
18-21 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.8718128   0.8338464   0.9097793
18-21 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.8188898   0.7796721   0.8581075
18-21 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.8436364   0.7988407   0.8884321
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.7825058   0.7256746   0.8393371
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7427314   0.6697155   0.8157473
18-21 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.9164610   0.8758269   0.9570951
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.7650086   0.7291204   0.8008969
21-24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.7910255   0.7450530   0.8369980
21-24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.8277879   0.7947160   0.8608598
21-24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.7874809   0.7457868   0.8291749
21-24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.7633557   0.7160871   0.8106244
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.8419384   0.7887410   0.8951359
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7195266   0.6482537   0.7907995
21-24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.7890401   0.7373935   0.8406867


### Parameter: ATE


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.2546360   -0.4247575   -0.0845144
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1326735   -0.3655173    0.1001703
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0718325   -0.3155366    0.1718716
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.2448823    0.0592937    0.4304709
0-3 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU                           0                    1                 -0.0808861   -0.2353399    0.0735677
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.1230345   -0.0725740    0.3186430
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2903921   -0.4717339   -0.1090503
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0057111   -0.1575796    0.1461575
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0390196    0.0050062    0.0730329
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.3447275   -1.0146598    0.3252048
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0556543   -0.0695526    0.1808612
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.2657725    0.1018417    0.4297033
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0358981   -0.1944052    0.1226090
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.1390867    0.0267127    0.2514607
3-6 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU                           0                    1                  0.0855739   -0.0569757    0.2281236
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0153262   -0.1913557    0.2220081
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1347852   -0.0246048    0.2941751
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0543732   -0.1619774    0.0532309
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0309027   -0.0749627    0.0131573
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0054782   -0.1164038    0.1054474
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0422717   -0.2286952    0.1441518
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    1                  0.0457120   -0.0744551    0.1658791
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0277645   -0.0612777    0.1168067
6-9 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU                           0                    1                  0.0191658   -0.0994576    0.1377892
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0308698   -0.1189335    0.1806730
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1472948   -0.3431772    0.0485875
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0343302   -0.1363133    0.0676528
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0141232   -0.0764334    0.1046798
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0033253   -0.1653630    0.1587124
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    1                  0.1533364    0.0752864    0.2313863
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0125958   -0.0727452    0.0979368
9-12 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.0863015   -0.1925689    0.0199659
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0383923   -0.1395893    0.2163738
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1234055   -0.0834072    0.3302182
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0966387    0.0107947    0.1824826
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0929372   -0.3044853    0.4903597
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.1349726    0.0164862    0.2534590
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0097711   -0.1122124    0.1317545
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0212293   -0.0671203    0.1095788
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0107015   -0.0703708    0.0917739
12-15 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0211525   -0.0817939    0.1240990
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0422359   -0.1044132    0.1888849
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0694548   -0.0781105    0.2170202
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0419755   -0.1282023    0.0442514
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0439052   -0.1272967    0.2151070
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0784753   -0.1679979    0.0110473
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0670192   -0.0613725    0.1954110
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0713468   -0.0135434    0.1562370
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0349524   -0.0510980    0.1210028
15-18 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0223013   -0.0785002    0.1231029
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0448204   -0.0898573    0.1794982
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0419496   -0.1903699    0.1064707
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0801917   -0.1504868   -0.0098967
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.1274651   -0.0893785    0.3443086
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0529342   -0.0307449    0.1366133
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0562644   -0.0882998    0.2008285
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0769902   -0.0052119    0.1591922
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0569906   -0.0214419    0.1354232
18-21 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     PERU                           0                    1                 -0.0770141   -0.1685523    0.0145242
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.1679433   -0.3016378   -0.0342487
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0043438   -0.1600736    0.1687612
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0574946   -0.0290568    0.1440459
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0447744   -0.1261126    0.0365637
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0349894   -0.0554104    0.1253892
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0104705   -0.0621810    0.0831219
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0015328   -0.0802527    0.0833183
21-24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0177793   -0.0883351    0.1238937
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0980085   -0.0191844    0.2152015
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0807296   -0.2228821    0.0614228
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.1117715   -0.2319797    0.0084367


### Parameter: PAR


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0380116   -0.0715166   -0.0045066
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0655675   -0.1833767    0.0522417
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0298588   -0.1019248    0.0422071
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.1102911    0.0215257    0.1990564
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0330549   -0.0887804    0.0226706
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0885746   -0.0521521    0.2293014
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2112685   -0.3421840   -0.0803531
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0021455   -0.0280331    0.0237420
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0035787    0.0002782    0.0068792
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0277306   -0.0843611    0.0288998
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0132939   -0.0097410    0.0363288
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1308902    0.0464842    0.2152963
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0141808   -0.0593618    0.0310002
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0692277    0.0112771    0.1271783
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0290045   -0.0197970    0.0778059
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0056880   -0.1531320    0.1645080
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0941915   -0.0178235    0.2062064
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0079090   -0.0256739    0.0098560
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0028070   -0.0066804    0.0010665
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0042744   -0.0246728    0.0161241
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0163207   -0.1083939    0.0757525
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0196328   -0.0170575    0.0563231
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0146264   -0.0302364    0.0594891
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0027477   -0.0371739    0.0426692
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0236152   -0.0875624    0.1347927
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1103253   -0.2479782    0.0273277
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0034291   -0.0209561    0.0140980
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0022871   -0.0139076    0.0184818
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0023483   -0.0825633    0.0778668
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0466299    0.0205910    0.0726689
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0065411   -0.0368002    0.0498824
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0246864   -0.0604863    0.0111136
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0278901   -0.1061336    0.1619138
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0705175   -0.0774023    0.2184373
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0170468    0.0024463    0.0316472
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0047432   -0.0301581    0.0396445
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0217034   -0.0011842    0.0445910
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0008542   -0.0592638    0.0575554
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0072414   -0.0205146    0.0349973
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0055050   -0.0356939    0.0467040
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0076573   -0.0265740    0.0418887
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0268661   -0.0832646    0.1369968
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0498054   -0.0557054    0.1553162
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0026545   -0.0161435    0.0108346
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0106903   -0.0127425    0.0341231
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0116665   -0.0284414    0.0051084
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0364088   -0.0251464    0.0979639
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0243803   -0.0027413    0.0515019
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0093814   -0.0338955    0.0526583
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0085656   -0.0233707    0.0405019
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0322338   -0.0693184    0.1337860
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0389825   -0.1446955    0.0667304
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0138609   -0.0254707   -0.0022511
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0184892   -0.0066893    0.0436676
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0090618   -0.0055235    0.0236470
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0122737   -0.0581517    0.0826992
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0272460   -0.0003862    0.0548782
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0256397   -0.0146832    0.0659626
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0258028   -0.0562265    0.0046208
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1283006   -0.2261469   -0.0304543
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0207504   -0.0971497    0.1386505
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0058595   -0.0073676    0.0190866
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0076474   -0.0224780    0.0071832
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0116499   -0.0330045    0.0563043
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0034946   -0.0189769    0.0259661
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0015472   -0.0398748    0.0429692
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0053282   -0.0295954    0.0402519
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0707057   -0.0180112    0.1594227
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0562688   -0.1554300    0.0428925
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0160398   -0.0343784    0.0022988
