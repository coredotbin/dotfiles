const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0E0E0A", /* black   */
  [1] = "#817B78", /* red     */
  [2] = "#79856A", /* green   */
  [3] = "#898976", /* yellow  */
  [4] = "#CE986E", /* blue    */
  [5] = "#8F908E", /* magenta */
  [6] = "#A7AAA9", /* cyan    */
  [7] = "#d6d6d7", /* white   */

  /* 8 bright colors */
  [8]  = "#959596",  /* black   */
  [9]  = "#817B78",  /* red     */
  [10] = "#79856A", /* green   */
  [11] = "#898976", /* yellow  */
  [12] = "#CE986E", /* blue    */
  [13] = "#8F908E", /* magenta */
  [14] = "#A7AAA9", /* cyan    */
  [15] = "#d6d6d7", /* white   */

  /* special colors */
  [256] = "#0E0E0A", /* background */
  [257] = "#d6d6d7", /* foreground */
  [258] = "#d6d6d7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
