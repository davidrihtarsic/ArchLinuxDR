/* See LICENSE file for copyright and license details. */
#include <X11/XF86keysym.h>
/* appearance */
static const unsigned int borderpx  = 3;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = {"monospace:size=10"};
static const char dmenufont[]       = "monospace:size=10";
static const char col_gray1[]       = "#222222";
static const char col_gray2[]       = "#444444";
static const char col_gray3[]       = "#bbbbbb";
static const char col_gray4[]       = "#000000";
static const char col_cyan[]        = "#88881a";//"#005577";
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray4, col_cyan,  col_cyan  },
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class                       instance    title       tags mask     isfloating   monitor */
	{ "Gimp",                      NULL,       NULL,       0,            1,           -1 },
	{ "Galculator",                NULL,       NULL,       0,            1,           -1 },
	{ "floating",                  NULL,       NULL,       0,            1,           -1 },
	{ "MyPaint",                   NULL,       NULL,       0,            1,           0 },
	{ "Microsoft Teams - Preview", NULL,       NULL,       0,            1,           -1 },
	{ "firefox",                   NULL,       NULL,       1<<1,         0,           0 },
	{ "Brave-browser",             NULL,       NULL,       1<<1,         0,           0 },
	{ "thunderbird",               NULL,       NULL,       1<<2,         0,           0 },
	{ "zoom",											 NULL,       NULL,       0,						 1,           -1 },
};

/* layout(s) */
static const float mfact     = 0.61; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
};

/* key definitions */
#define ALTKEY       Mod1Mask
#define SUPER        Mod4Mask

#define TAGKEYS(KEY,TAG) \
	{ SUPER,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ SUPER|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ SUPER|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ SUPER|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
static const char *termcmd[]  = { "st", NULL };
//static const char *termcmd[]  = { "alacritty", NULL };
static const char *mail[]  = { "thunderbird", NULL };
static const char *browser[]  = { "brave", NULL };
static const char *runprog[]  = { "/home/david/bin/rofi_run", "-r",  NULL };
static const char *editor[] = { "st", "-e", "nvim", "-S", "~/.config/nvim/david_session.sav", NULL};
//static const char *bckgrimg[] = { "feh",  "--randomize",  "--bg-fill",  "~/Pictures/wallpapers/*", NULL};

static Key keys[] = {
	/* modifier           key                function        argument */
	{ SUPER,              XK_p,              spawn,          {.v = dmenucmd } },
	{ SUPER,              XK_Return,         spawn,          {.v = termcmd } },
	{0,                   XF86XK_Mail,       spawn,          {.v = mail } },
	{0,                   XF86XK_Search,     spawn,          {.v = browser } },
	{0,                   XF86XK_HomePage,   spawn,          {.v = editor } },
	{SUPER,               0,                 spawn,          {.v = runprog } },
	{ SUPER,              XK_s,              togglebar,      {0} },
	{ SUPER,              XK_j,              focusstack,     {.i = +1 } },
	{ SUPER,              XK_k,              focusstack,     {.i = -1 } },
	{ SUPER,              XK_i,              incnmaster,     {.i = +1 } },
	{ SUPER,              XK_d,              incnmaster,     {.i = -1 } },
	{ SUPER,              XK_h,              setmfact,       {.f = -0.05} },
	{ SUPER,              XK_l,              setmfact,       {.f = +0.05} },
	{ SUPER|ShiftMask,    XK_Return,         zoom,           {0} },
	{ SUPER,              XK_Tab,            view,           {0} },
	{ SUPER,              XK_q,              killclient,     {0} },
	{ SUPER|ShiftMask,    XK_t,              setlayout,      {.v = &layouts[0]} },
	{ SUPER|ShiftMask,    XK_f,              setlayout,      {.v = &layouts[1]} },
	{ SUPER|ShiftMask,    XK_m,              setlayout,      {.v = &layouts[2]} },
	{ SUPER,              XK_space,          setlayout,      {0} },
	{ SUPER|ShiftMask,    XK_space,          togglefloating, {0} },
	{ SUPER,              XK_0,              view,           {.ui = ~0 } },
	{ SUPER|ShiftMask,    XK_0,              tag,            {.ui = ~0 } },
	{ SUPER,              XK_comma,          focusmon,       {.i = -1 } },
	{ SUPER,              XK_period,         focusmon,       {.i = +1 } },
	{ SUPER|ShiftMask,    XK_comma,          tagmon,         {.i = -1 } },
	{ SUPER|ShiftMask,    XK_period,         tagmon,         {.i = +1 } },
	{ SUPER|ShiftMask,    XF86XK_Launch5,    tagmon,         {.ui = 0 } },
	{ SUPER|ShiftMask,    XF86XK_Launch6,    tagmon,         {.ui = 1 } },
	{ SUPER|ShiftMask,    XF86XK_Launch7,    tagmon,         {.ui = 2 } },
	TAGKEYS(              XK_1,                              0)
	TAGKEYS(              XK_2,                              1)
	TAGKEYS(              XK_3,                              2)
	TAGKEYS(              XK_4,                              3)
	TAGKEYS(              XK_5,                              4)
	TAGKEYS(              XK_6,                              5)
	TAGKEYS(              XK_7,                              6)
	TAGKEYS(              XK_8,                              7)
	TAGKEYS(              XK_9,                              8)
	{ SUPER|ShiftMask,    XK_q,              quit,           {0} },
        //{ SUPER,            XK_b,         spawn,          {.v = bckgrimg } },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         SUPER,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         SUPER,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         SUPER,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            SUPER,         Button1,        tag,            {0} },
	{ ClkTagBar,            SUPER,         Button3,        toggletag,      {0} },
};

