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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* hdlvry
* W_birthwt
* W_birthlen
* single
* W_nrooms
* month
* brthmon
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
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        perdiar24    n_cell      n  outcome_variable 
-------------  -------------------------  -----------------------------  ----------  -------  -----  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                8    243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        143    243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              92    243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0%               91    168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         75    168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                5    183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        146    183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%              32    183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%               11    156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]         95    156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%              50    156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           0%               10    265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]        107    265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           >5%             148    265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               73    211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        135    211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%               10    228  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        165    228  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              53    228  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       0%              204    303  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         99    303  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       >5%               0    303  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%               29    566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        340    566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             197    566  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%               21    640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        425    640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             194    640  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              135    721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             200    721  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     0%                0     43  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         19     43  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     >5%              24     43  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           0%                1     29  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           (0%, 5%]         14     29  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           >5%              14     29  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%               73   2517  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2182   2517  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             262   2517  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                6    231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        137    231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              88    231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0%              105    208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          0%                3    230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        185    230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          >5%              42    230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%               13    233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%              79    233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           0%                6    267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]        106    267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           >5%             155    267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               75    243  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    243  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    243  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        170    239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              60    239  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       0%              190    280  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         90    280  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       >5%               0    280  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%               15    523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        327    523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             181    523  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%               12    598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        405    598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             181    598  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              128    695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        377    695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             190    695  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     0%                0    185  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         90    185  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     >5%              95    185  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           0%                6    214  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]        142    214  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           >5%              66    214  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%               38   1840  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       1623   1840  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             179   1840  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                6    224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        133    224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              85    224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0%               95    198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          0%                3    230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        185    230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          >5%              42    230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%               12    230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          >5%              77    230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           0%                3    245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]         99    245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           >5%             143    245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               73    231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        156    231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                5    225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        163    225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              57    225  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       0%              208    304  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         96    304  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       >5%               0    304  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%               53    314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         36    314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >5%             225    314  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                9    498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        320    498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             169    498  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%               10    565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        383    565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             172    565  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              131    688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        372    688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             185    688  y_rate_haz       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                9    213  y_rate_haz       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         57    213  y_rate_haz       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >5%             147    213  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     0%                0    177  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         75    177  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     >5%             102    177  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           0%                6    214  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           (0%, 5%]        141    214  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           >5%              67    214  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%               91   3054  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2649   3054  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             314   3054  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                6    225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        134    225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%              85    225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0%               93    194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         99    194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >5%               2    194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          0%                3    227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          >5%              42    227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0%               12    229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          >5%              77    229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           0%                2    235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]         96    235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           >5%             137    235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%               70    233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        161    233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                5    224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        164    224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              55    224  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       0%              226    326  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       (0%, 5%]        100    326  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       >5%               0    326  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               55    311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         37    311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             219    311  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                9    482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        310    482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             163    482  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                9    566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        383    566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             174    566  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              130    674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        366    674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             178    674  y_rate_haz       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                8    186  y_rate_haz       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         49    186  y_rate_haz       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             129    186  y_rate_haz       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0%              134   1119  y_rate_haz       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        611   1119  y_rate_haz       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             374   1119  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     0%                0    160  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]         68    160  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     >5%              92    160  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           0%                6    212  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]        140    212  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           >5%              66    212  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%              124   3501  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3022   3501  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             355   3501  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        128    212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              78    212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0%               86    184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         96    184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          0%                3    226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        181    226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          >5%              42    226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0%               12    230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          >5%              77    230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           0%                1    224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         90    224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           >5%             133    224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               67    228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        160    228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        164    226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              56    226  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       0%              201    297  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         96    297  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       >5%               0    297  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%               56    303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         35    303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%             212    303  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                9    461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        299    461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             153    461  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8    532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        356    532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             168    532  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              127    660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        354    660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             179    660  y_rate_haz       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                2     97  y_rate_haz       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         31     97  y_rate_haz       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%              64     97  y_rate_haz       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%               88    978  y_rate_haz       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        548    978  y_rate_haz       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             342    978  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     0%                2    160  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         69    160  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     >5%              89    160  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           0%                5    199  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           (0%, 5%]        132    199  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           >5%              62    199  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              131   3549  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3067   3549  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             351   3549  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        127    212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              79    212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0%               79    175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         94    175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          0%                3    226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          >5%              41    226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0%               12    227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        139    227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           0%                1    213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         86    213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           >5%             126    213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               68    225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        156    225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        158    217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              53    217  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       0%              189    278  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         89    278  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       >5%               0    278  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%               56    291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         33    291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%             202    291  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                7    449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        295    449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             147    449  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8    528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        355    528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             165    528  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              125    604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        321    604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             158    604  y_rate_haz       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%               77   1021  y_rate_haz       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        581   1021  y_rate_haz       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             363   1021  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     0%                3    163  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         70    163  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     >5%              90    163  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           0%                5    189  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           (0%, 5%]        124    189  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           >5%              60    189  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              120   3550  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3079   3550  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             351   3550  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        129    209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              74    209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0%               75    167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         90    167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          0%                3    226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          >5%              41    226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0%               12    227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        139    227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           0%                1    202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         86    202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           >5%             115    202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               69    233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        163    233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        148    204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              50    204  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       0%              173    254  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         81    254  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       >5%               0    254  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        274    422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             143    422  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                7    541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        367    541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             167    541  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        290    546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             133    546  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     0%                2    165  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         72    165  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     >5%              91    165  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           0%                4    183  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           (0%, 5%]        122    183  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           >5%              57    183  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        127    207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              74    207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0%               73    165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         91    165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               1    165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          0%                3    226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          >5%              41    226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0%               11    227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           0%                1    189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         80    189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           >5%             108    189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               71    235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        163    235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        148    204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              50    204  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       0%               75    106  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         31    106  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       >5%               0    106  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        267    411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             139    411  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8    471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        320    471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             143    471  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              122    490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        260    490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             108    490  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     0%                2    133  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         61    133  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     >5%              70    133  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           0%                0     38  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]         26     38  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           >5%              12     38  y_rate_haz       


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/00d39ac7-d117-45f1-897d-60457913a2e5/73c3ad9e-b131-4dd2-a4e3-875f56a395fd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/00d39ac7-d117-45f1-897d-60457913a2e5/73c3ad9e-b131-4dd2-a4e3-875f56a395fd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/00d39ac7-d117-45f1-897d-60457913a2e5/73c3ad9e-b131-4dd2-a4e3-875f56a395fd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.1699679   -0.3891484    0.0492125
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.1217194   -0.1646292   -0.0788096
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.1189061   -0.1747720   -0.0630402
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                   NA                 0.2602543   -0.4826383    1.0031468
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                -0.0608086   -0.1096698   -0.0119474
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%                  NA                -0.1008508   -0.2309497    0.0292481
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.1751128   -0.0397107    0.3899363
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 0.0324871   -0.0237735    0.0887476
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 0.0916417    0.0202947    0.1629888
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   NA                -0.2389346   -0.3674677   -0.1104014
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -0.2706277   -0.3237009   -0.2175546
0-3 months     ki0047075b-MAL-ED          PERU                           >5%                  NA                -0.2519557   -0.2984333   -0.2054781
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0474137   -0.3003153    0.2054880
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1191519   -0.1613181   -0.0769857
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.2042453   -0.3003576   -0.1081331
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.2240104   -0.3442132   -0.1038077
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.2433515   -0.2768714   -0.2098316
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.2010753   -0.2467711   -0.1553795
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.2681452   -0.3819052   -0.1543852
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.1809359   -0.2014454   -0.1604263
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.2016977   -0.2354234   -0.1679720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.2643096   -0.2971731   -0.2314462
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.2320103   -0.2560372   -0.2079834
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.2088079   -0.2451698   -0.1724461
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.4687274   -0.7364486   -0.2010062
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.2679764   -0.2973731   -0.2385797
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.2858403   -0.3631688   -0.2085118
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0686357   -0.1895569    0.0522855
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0105436   -0.0409002    0.0198130
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.0378129   -0.0766346    0.0010089
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.0003815   -0.1235458    0.1243087
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0103967   -0.0420489    0.0212555
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.0532484   -0.1041588   -0.0023380
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   NA                -0.0244631   -0.1645792    0.1156530
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                 0.0338811   -0.0162510    0.0840133
3-6 months     ki0047075b-MAL-ED          PERU                           >5%                  NA                 0.0221263   -0.0189194    0.0631720
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1861760   -0.3660316   -0.0063204
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0689888   -0.1077479   -0.0302296
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0576089   -0.1167937    0.0015758
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.0323992   -0.1083422    0.1731406
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0444833   -0.0720320   -0.0169345
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.0643212   -0.1041125   -0.0245300
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.1079194   -0.2175336    0.0016948
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0308727   -0.0506285   -0.0111169
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.0173362   -0.0439964    0.0093240
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0740344    0.0353069    0.1127619
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 0.0208009   -0.0027587    0.0443606
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 0.0048822   -0.0238059    0.0335704
3-6 months     ki1114097-CONTENT          PERU                           0%                   NA                 0.0320500   -0.1094757    0.1735756
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]             NA                 0.0086783   -0.0174770    0.0348337
3-6 months     ki1114097-CONTENT          PERU                           >5%                  NA                 0.0197760   -0.0247381    0.0642901
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0796044   -0.0046986    0.1639075
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0129140   -0.0277683    0.0019403
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                 0.0073765   -0.0232649    0.0380179
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.1241995   -0.2070404   -0.0413586
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0792840   -0.1014059   -0.0571621
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.0517085   -0.0800878   -0.0233291
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.1081910   -0.1880346   -0.0283474
6-9 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0323782   -0.0566764   -0.0080800
6-9 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.0326134   -0.0668455    0.0016187
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1196419   -0.3177752    0.0784913
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0764083   -0.1154432   -0.0373734
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1397272   -0.2060870   -0.0733673
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.0099330   -0.0286156    0.0087496
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.1114033   -0.2098606   -0.0129459
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -0.1073858   -0.1321236   -0.0826479
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0170373   -0.0787189    0.0446443
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0472336   -0.0697009   -0.0247663
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.0851491   -0.1154029   -0.0548952
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0101333   -0.0705116    0.0502451
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0600688   -0.0729311   -0.0472064
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.0683649   -0.0891417   -0.0475881
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0337157   -0.0621392   -0.0052922
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0357704   -0.0533237   -0.0182172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.0242673   -0.0500321    0.0014974
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -0.0964868   -0.1811437   -0.0118298
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -0.0835836   -0.1168646   -0.0503026
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                -0.0995576   -0.1241789   -0.0749363
6-9 months     ki1114097-CONTENT          PERU                           0%                   NA                -0.0920051   -0.1285856   -0.0554247
6-9 months     ki1114097-CONTENT          PERU                           (0%, 5%]             NA                -0.0309735   -0.0571809   -0.0047662
6-9 months     ki1114097-CONTENT          PERU                           >5%                  NA                -0.0039663   -0.0414793    0.0335467
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0112289   -0.0717034    0.0492457
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0284104   -0.0379177   -0.0189030
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.0380802   -0.0675728   -0.0085875
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0428483   -0.1819520    0.0962554
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0862417   -0.1071220   -0.0653615
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.0918556   -0.1172131   -0.0664982
9-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0222372   -0.1026867    0.0582123
9-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0551394   -0.0765233   -0.0337554
9-12 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.0811430   -0.1105804   -0.0517056
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1405450   -0.3458944    0.0648044
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1587602   -0.1953272   -0.1221931
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1449637   -0.2260492   -0.0638783
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.2705815    0.1665339    0.3746291
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.1201749   -0.4480651    0.2077153
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -0.1679179   -0.2329232   -0.1029125
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.0046086   -0.0377590    0.0469761
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0416140   -0.0594274   -0.0238006
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.0467116   -0.0724943   -0.0209289
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.1769192   -0.2196225   -0.1342160
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0607245   -0.0740040   -0.0474449
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.0622693   -0.0820703   -0.0424683
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0274815   -0.0529469   -0.0020160
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0346637   -0.0496643   -0.0196631
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.0341068   -0.0559021   -0.0123115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -0.0472234   -0.1032246    0.0087778
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -0.0612346   -0.0884043   -0.0340648
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                -0.0584856   -0.0785781   -0.0383930
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                -0.0324467   -0.0749094    0.0100160
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                -0.0484775   -0.0611169   -0.0358382
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  NA                -0.0561684   -0.0866836   -0.0256531
9-12 months    ki1114097-CONTENT          PERU                           0%                   NA                -0.0067510   -0.1257218    0.1122197
9-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                -0.0146825   -0.0357687    0.0064037
9-12 months    ki1114097-CONTENT          PERU                           >5%                  NA                -0.0404173   -0.0670881   -0.0137465
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0726288   -0.1148764   -0.0303811
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0520331   -0.0601800   -0.0438862
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.0479056   -0.0668575   -0.0289538
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0544392   -0.0500140    0.1588925
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0681257   -0.0859838   -0.0502675
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.0438149   -0.0719969   -0.0156328
12-15 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.1205806   -0.2066783   -0.0344829
12-15 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0589692   -0.0781756   -0.0397629
12-15 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.0553298   -0.0831252   -0.0275343
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1170555   -0.2766061    0.0424950
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0644898   -0.0943649   -0.0346146
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0784977   -0.1259484   -0.0310471
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.4815427   -0.6958569   -0.2672285
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                 0.0284655   -0.0448975    0.1018284
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                 0.0283803   -0.0006875    0.0574481
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.1716576   -0.2292772   -0.1140380
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.1285232   -0.1519456   -0.1051008
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.1182591   -0.1402289   -0.0962894
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0368531   -0.0323290    0.1060351
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0453049   -0.0573064   -0.0333035
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.0353022   -0.0536547   -0.0169497
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0478535   -0.0691556   -0.0265514
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0366407   -0.0492906   -0.0239907
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.0346245   -0.0548525   -0.0143965
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                -0.0628416   -0.0989556   -0.0267277
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                -0.0333058   -0.0537658   -0.0128458
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  NA                -0.0531819   -0.0742466   -0.0321171
12-15 months   ki1114097-CONTENT          PERU                           0%                   NA                -0.1513467   -0.2123072   -0.0903861
12-15 months   ki1114097-CONTENT          PERU                           (0%, 5%]             NA                -0.0668607   -0.0887579   -0.0449636
12-15 months   ki1114097-CONTENT          PERU                           >5%                  NA                -0.0811295   -0.1047731   -0.0574859
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0284313   -0.0616436    0.0047810
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0462501   -0.0528541   -0.0396460
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.0388360   -0.0558797   -0.0217924
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0589846   -0.1714593    0.0534900
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0472410   -0.0630272   -0.0314547
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.0424669   -0.0667479   -0.0181858
15-18 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0090991   -0.0831634    0.0649652
15-18 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0484364   -0.0679547   -0.0289182
15-18 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.0695104   -0.0949809   -0.0440399
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0491855   -0.2113655    0.1129945
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0928352   -0.1185335   -0.0671369
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0682932   -0.1143161   -0.0222702
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.0257948    0.0083015    0.0432881
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.0403566   -0.1299484    0.0492353
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -0.0411297   -0.0637036   -0.0185557
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.1144186    0.0128970    0.2159403
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0584344   -0.0766934   -0.0401754
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.0643936   -0.0883060   -0.0404812
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0065762   -0.0542356    0.0410832
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0354485   -0.0460499   -0.0248470
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.0438732   -0.0595570   -0.0281894
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0122427   -0.0319790    0.0074936
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0120933   -0.0239915   -0.0001952
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.0283491   -0.0442783   -0.0124199
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                -0.0308424   -0.0528856   -0.0087992
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                -0.0130958   -0.0317740    0.0055825
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  NA                -0.0147004   -0.0397433    0.0103426
15-18 months   ki1114097-CONTENT          PERU                           0%                   NA                 0.0762675   -0.0201719    0.1727070
15-18 months   ki1114097-CONTENT          PERU                           (0%, 5%]             NA                -0.0012263   -0.0229371    0.0204844
15-18 months   ki1114097-CONTENT          PERU                           >5%                  NA                -0.0326015   -0.0584473   -0.0067557
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0197810   -0.0489888    0.0094267
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0325544   -0.0392078   -0.0259010
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.0396799   -0.0560772   -0.0232827
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0173173   -0.0820274    0.0473927
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0238155   -0.0386813   -0.0089497
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.0009184   -0.0199363    0.0180995
18-21 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0149630   -0.1076155    0.0776895
18-21 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0324258   -0.0496034   -0.0152481
18-21 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.0212281   -0.0411956   -0.0012606
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0072606   -0.2038434    0.1893221
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0179492   -0.0438659    0.0079675
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0610682   -0.1078138   -0.0143226
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.1328520   -0.1621791   -0.1035249
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0425880   -0.0575093   -0.0276667
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.0270404   -0.0496448   -0.0044361
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0194731   -0.0122865    0.0512328
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0127051   -0.0226683   -0.0027420
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.0083354   -0.0228718    0.0062010
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0237353   -0.0408877   -0.0065829
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0252539   -0.0362373   -0.0142705
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.0373534   -0.0530053   -0.0217016
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0313450   -0.0309326    0.0936227
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                 0.0306186    0.0160224    0.0452149
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                 0.0165721   -0.0057319    0.0388760
21-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0452113   -0.0872605   -0.0031622
21-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 0.0088697   -0.0098633    0.0276027
21-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 0.0036976   -0.0183238    0.0257190
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0516348   -0.1672834    0.0640137
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0047101   -0.0215964    0.0310167
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.0283203   -0.0107756    0.0674161
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.0825066    0.0285632    0.1364501
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                 0.0386224    0.0242708    0.0529740
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                 0.0431617    0.0224378    0.0638856
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0101859   -0.0303158    0.0099441
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                 0.0498413    0.0390789    0.0606037
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                 0.0413188    0.0264141    0.0562235
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0716192    0.0560622    0.0871763
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 0.0561707    0.0447643    0.0675770
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 0.0502204    0.0314987    0.0689420


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.2753025   -0.3035698   -0.2470352
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0090589   -0.0227889    0.0046710
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1052304   -0.1233192   -0.0871417
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0951531   -0.1146913   -0.0756149
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                -0.0242292   -0.0452610   -0.0031973
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0289482   -0.0379437   -0.0199527
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1462637   -0.2015231   -0.0910043
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0587254   -0.0745802   -0.0428705
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0487006   -0.0633304   -0.0340708
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0224698   -0.0391090   -0.0058306
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0521209   -0.0596089   -0.0446330
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                 0.0088746   -0.0268397    0.0445889
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0431604   -0.0596572   -0.0266637
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0734290   -0.0899048   -0.0569533
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0450644   -0.0511488   -0.0389801
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.0369125   -0.0500204   -0.0238046
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0168360   -0.0300694   -0.0036026
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0091366   -0.0260209    0.0077477
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0328742   -0.0389268   -0.0268217
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0482485   -0.1750927    0.2715898
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.0510619   -0.1751262    0.2772500
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0%                -0.3210628   -1.0655605    0.4234348
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%                  0%                -0.3611051   -1.1153033    0.3930932
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.1426257   -0.3636903    0.0784389
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0834710   -0.3092600    0.1423179
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.0316932   -0.1706793    0.1072929
0-3 months     ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.0130211   -0.1498209    0.1237787
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0717383   -0.3281878    0.1847112
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.1568317   -0.4276456    0.1139823
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.0193411   -0.1440473    0.1053652
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.0229351   -0.1054862    0.1513565
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0872093   -0.0284521    0.2028708
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.0664475   -0.0522578    0.1851527
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0322993   -0.0084406    0.0730393
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0555017    0.0064248    0.1045786
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.2007510   -0.0683887    0.4698906
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                 0.1828870   -0.0956064    0.4613804
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0580922   -0.0665812    0.1827656
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.0308229   -0.0961774    0.1578231
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0107782   -0.1385690    0.1170127
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0536299   -0.1875298    0.0802700
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                 0.0583442   -0.0904702    0.2071587
3-6 months     ki0047075b-MAL-ED          PERU                           >5%                  0%                 0.0465894   -0.0994149    0.1925937
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1171873   -0.0667973    0.3011718
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1285671   -0.0607762    0.3179104
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.0768824   -0.2204212    0.0666563
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.0967204   -0.2431819    0.0497411
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0770467   -0.0342904    0.1883838
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.0905833   -0.0222753    0.2034418
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0532334   -0.0983806   -0.0080863
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0691522   -0.1171542   -0.0211502
3-6 months     ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]             0%                -0.0233716   -0.1672938    0.1205506
3-6 months     ki1114097-CONTENT          PERU                           >5%                  0%                -0.0122739   -0.1606350    0.1360871
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0925184   -0.1781811   -0.0068557
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0722279   -0.1628588    0.0184030
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0449155   -0.0408282    0.1306593
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.0724911   -0.0150761    0.1600582
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0758128   -0.0076662    0.1592918
6-9 months     ki0047075b-MAL-ED          NEPAL                          >5%                  0%                 0.0755776   -0.0112884    0.1624436
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0432336   -0.1587082    0.2451754
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0200853   -0.2290360    0.1888655
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.1014703   -0.2017255   -0.0012151
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0974528   -0.1282509   -0.0666547
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.0301964   -0.0958424    0.0354496
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.0681118   -0.1368135    0.0005898
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0499355   -0.1116675    0.0117965
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                -0.0582317   -0.1220955    0.0056322
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0020547   -0.0354670    0.0313576
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0094484   -0.0289251    0.0478219
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                 0.0129032   -0.0780606    0.1038670
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                -0.0030708   -0.0912355    0.0850938
6-9 months     ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           (0%, 5%]             0%                 0.0610316    0.0160321    0.1060311
6-9 months     ki1114097-CONTENT          PERU                           >5%                  0%                 0.0880389    0.0356427    0.1404350
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0171815   -0.0786288    0.0442658
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0268513   -0.0940577    0.0403551
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0433934   -0.1840555    0.0972686
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.0490074   -0.1904034    0.0923887
9-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0329022   -0.1161724    0.0503680
9-12 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0589058   -0.1445992    0.0267876
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0182152   -0.2267950    0.1903646
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0044187   -0.2251974    0.2163600
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.3907564   -0.7360556   -0.0454571
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                -0.4384994   -0.5614162   -0.3155826
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.0462226   -0.0921826   -0.0002625
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.0513202   -0.1009161   -0.0017242
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.1161948    0.0714744    0.1609152
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.1146499    0.0675793    0.1617206
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0071822   -0.0367400    0.0223756
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0066254   -0.0401659    0.0269152
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                -0.0140112   -0.0762553    0.0482329
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                -0.0112621   -0.0707588    0.0482345
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0%                -0.0160308   -0.0630262    0.0309645
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0%                -0.0237217   -0.0652251    0.0177818
9-12 months    ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0%                -0.0079315   -0.1287565    0.1128934
9-12 months    ki1114097-CONTENT          PERU                           >5%                  0%                -0.0336663   -0.1555899    0.0882574
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0205956   -0.0224544    0.0636457
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                 0.0247231   -0.0213153    0.0707615
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.1225649   -0.2285338   -0.0165961
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.0982541   -0.2064424    0.0099342
12-15 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0616113   -0.0266702    0.1498929
12-15 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                 0.0652508   -0.0253097    0.1558113
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0525658   -0.1097577    0.2148892
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0385578   -0.1278992    0.2050148
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.5100082    0.2837796    0.7362367
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                 0.5099230    0.2935831    0.7262629
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.0431344   -0.0190639    0.1053327
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.0533985   -0.0082674    0.1150644
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0821580   -0.1523733   -0.0119427
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                -0.0721553   -0.1437302   -0.0005804
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0112128   -0.0135439    0.0359695
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0132290   -0.0161336    0.0425916
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0%                 0.0295358   -0.0105612    0.0696329
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0%                 0.0096598   -0.0309487    0.0502682
12-15 months   ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           (0%, 5%]             0%                 0.0844859    0.0197119    0.1492600
12-15 months   ki1114097-CONTENT          PERU                           >5%                  0%                 0.0702172    0.0048321    0.1356023
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0178188   -0.0516891    0.0160516
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0104047   -0.0476526    0.0268431
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0117437   -0.1018333    0.1253207
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.0165178   -0.0985479    0.1315835
15-18 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0393373   -0.1159607    0.0372861
15-18 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0604113   -0.1387551    0.0179326
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0436497   -0.2078531    0.1205537
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0191077   -0.1876914    0.1494760
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0661513   -0.1574225    0.0251198
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0669244   -0.0955912   -0.0382577
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.1728530   -0.2760036   -0.0697025
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.1788123   -0.2831121   -0.0745125
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0288722   -0.0776965    0.0199520
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                -0.0372970   -0.0874707    0.0128767
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0001494   -0.0229607    0.0232595
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0161064   -0.0416446    0.0094319
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0%                 0.0177466   -0.0112819    0.0467752
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0%                 0.0161421   -0.0195176    0.0518018
15-18 months   ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           (0%, 5%]             0%                -0.0774938   -0.1763469    0.0213592
15-18 months   ki1114097-CONTENT          PERU                           >5%                  0%                -0.1088690   -0.2087118   -0.0090263
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0127734   -0.0427987    0.0172519
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0198989   -0.0534880    0.0136902
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0064982   -0.0728939    0.0598975
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.0163989   -0.0510479    0.0838457
18-21 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0174628   -0.1115427    0.0766172
18-21 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0062651   -0.1007807    0.0882504
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0106886   -0.2089724    0.1875952
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0538075   -0.2558717    0.1482566
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.0902640    0.0573592    0.1231687
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.1058116    0.0687841    0.1428391
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0321783   -0.0654640    0.0011074
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                -0.0278085   -0.0627367    0.0071197
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0015186   -0.0218669    0.0188297
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0136182   -0.0368016    0.0095652
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0007264   -0.0646917    0.0632388
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.0147730   -0.0809241    0.0513781
21-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0540810    0.0083177    0.0998443
21-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                 0.0489089    0.0013464    0.0964714
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0563450   -0.0622578    0.1749477
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0799551   -0.0421230    0.2020332
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.0438842   -0.0997041    0.0119357
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.0393449   -0.0971323    0.0184424
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0600271    0.0372007    0.0828535
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.0515047    0.0264574    0.0765520
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0154485   -0.0347679    0.0038708
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0213988   -0.0457487    0.0029510


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0477252   -0.1667864    0.2622369
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.3192925   -1.0433408    0.4047557
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.1203502   -0.3254807    0.0847804
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   NA                -0.0238661   -0.1529022    0.1051700
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0901729   -0.3360546    0.1557087
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0079760   -0.1245970    0.1086449
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0801050   -0.0317237    0.1919336
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0330489    0.0012502    0.0648476
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.1934249   -0.0683749    0.4552247
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0461950   -0.0738838    0.1662737
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0234599   -0.1434307    0.0965108
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   NA                 0.0502092   -0.0898921    0.1903104
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1156312   -0.0602873    0.2915497
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0832999   -0.2223132    0.0557134
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0809569   -0.0271419    0.1890557
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0472604   -0.0821993   -0.0123214
3-6 months     ki1114097-CONTENT          PERU                           0%                   NA                -0.0192937   -0.1586222    0.1200349
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0886633   -0.1720251   -0.0053016
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0541763   -0.0282422    0.1365949
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.0736314   -0.0044492    0.1517121
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0262321   -0.1697627    0.2222268
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.0952975   -0.1167437   -0.0738512
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0425175   -0.1052337    0.0201986
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0512931   -0.1111757    0.0085894
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0023519   -0.0237501    0.0284540
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 0.0013336   -0.0819904    0.0846577
6-9 months     ki1114097-CONTENT          PERU                           0%                   NA                 0.0677760    0.0264791    0.1090729
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0177194   -0.0774270    0.0419883
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0443571   -0.1806621    0.0919479
9-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0400593   -0.1182841    0.0381655
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0144211   -0.2173992    0.1885571
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.4168452   -0.5093287   -0.3243617
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0470834   -0.0908331   -0.0033336
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.1138722    0.0708285    0.1569159
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0068180   -0.0297394    0.0161033
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -0.0115020   -0.0673386    0.0443347
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                -0.0162539   -0.0530523    0.0205445
9-12 months    ki1114097-CONTENT          PERU                           0%                   NA                -0.0157188   -0.1324652    0.1010276
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0205078   -0.0208787    0.0618943
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.1101516   -0.2127884   -0.0075147
12-15 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.0631256   -0.0205330    0.1467843
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0476992   -0.1095667    0.2049651
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.4904173    0.2883369    0.6924978
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.0456988   -0.0129577    0.1043553
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0777638   -0.1459455   -0.0095821
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0095222   -0.0098396    0.0288839
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                 0.0196812   -0.0156953    0.0550577
12-15 months   ki1114097-CONTENT          PERU                           0%                   NA                 0.0779176    0.0162662    0.1395690
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0166331   -0.0491779    0.0159116
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0131904   -0.0968828    0.1232635
15-18 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0458354   -0.1181350    0.0264641
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0364487   -0.1956563    0.1227589
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.0627073   -0.0821805   -0.0432341
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.1721092   -0.2721445   -0.0720740
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0310675   -0.0783360    0.0162010
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0046646   -0.0222956    0.0129664
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                 0.0140064   -0.0115801    0.0395929
15-18 months   ki1114097-CONTENT          PERU                           0%                   NA                -0.0854041   -0.1807643    0.0099560
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0130932   -0.0420335    0.0158470
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0017955   -0.0620961    0.0656870
18-21 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0131423   -0.1021829    0.0758983
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0209426   -0.2130272    0.1711420
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.0944630    0.0632923    0.1256337
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0304130   -0.0624255    0.0015995
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0042335   -0.0193830    0.0109161
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0057269   -0.0673835    0.0559298
21-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.0506661    0.0083892    0.0929430
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0604746   -0.0538036    0.1747528
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0418151   -0.0956901    0.0120598
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0564201    0.0349789    0.0778613
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0128571   -0.0267906    0.0010763
