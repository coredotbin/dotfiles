static const char norm_fg[] = "#d6d6d7";
static const char norm_bg[] = "#0E0E0A";
static const char norm_border[] = "#959596";

static const char sel_fg[] = "#d6d6d7";
static const char sel_bg[] = "#79856A";
static const char sel_border[] = "#d6d6d7";

static const char urg_fg[] = "#d6d6d7";
static const char urg_bg[] = "#817B78";
static const char urg_border[] = "#817B78";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
