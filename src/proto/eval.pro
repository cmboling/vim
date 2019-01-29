/* eval.c */
void eval_init(void);
void eval_clear(void);
void set_internal_string_var(char_u *name, char_u *value);
int var_redir_start(char_u *name, int append);
void var_redir_str(char_u *value, int value_len);
void var_redir_stop(void);
int eval_charconvert(char_u *enc_from, char_u *enc_to, char_u *fname_from, char_u *fname_to);
int eval_printexpr(char_u *fname, char_u *args);
void eval_diff(char_u *origfile, char_u *newfile, char_u *outfile);
void eval_patch(char_u *origfile, char_u *difffile, char_u *outfile);
int eval_to_bool(char_u *arg, int *error, char_u **nextcmd, int skip);
int eval_expr_to_bool(typval_T *expr, int *error);
char_u *eval_to_string_skip(char_u *arg, char_u **nextcmd, int skip);
int skip_expr(char_u **pp);
char_u *eval_to_string(char_u *arg, char_u **nextcmd, int convert);
char_u *eval_to_string_safe(char_u *arg, char_u **nextcmd, int use_sandbox);
varnumber_T eval_to_number(char_u *expr);
list_T *eval_spell_expr(char_u *badword, char_u *expr);
int get_spellword(list_T *list, char_u **pp);
typval_T *eval_expr(char_u *arg, char_u **nextcmd);
int call_vim_function(char_u *func, int argc, typval_T *argv, typval_T *rettv);
varnumber_T call_func_retnr(char_u *func, int argc, typval_T *argv);
void *call_func_retstr(char_u *func, int argc, typval_T *argv);
void *call_func_retlist(char_u *func, int argc, typval_T *argv);
int eval_foldexpr(char_u *arg, int *cp);
void ex_let(exarg_T *eap);
void list_hashtable_vars(hashtab_T *ht, char *prefix, int empty, int *first);
char_u *get_lval(char_u *name, typval_T *rettv, lval_T *lp, int unlet, int skip, int flags, int fne_flags);
void clear_lval(lval_T *lp);
void *eval_for_line(char_u *arg, int *errp, char_u **nextcmdp, int skip);
int next_for_item(void *fi_void, char_u *arg);
void free_for_info(void *fi_void);
void set_context_for_expression(expand_T *xp, char_u *arg, cmdidx_T cmdidx);
void ex_unlet(exarg_T *eap);
void ex_lockvar(exarg_T *eap);
int do_unlet(char_u *name, int forceit);
void del_menutrans_vars(void);
char_u *get_user_var_name(expand_T *xp, int idx);
int eval0(char_u *arg, typval_T *rettv, char_u **nextcmd, int evaluate);
int eval1(char_u **arg, typval_T *rettv, int evaluate);
int get_option_tv(char_u **arg, typval_T *rettv, int evaluate);
char_u *partial_name(partial_T *pt);
void partial_unref(partial_T *pt);
int tv_equal(typval_T *tv1, typval_T *tv2, int ic, int recursive);
int get_copyID(void);
int garbage_collect(int testing);
int set_ref_in_ht(hashtab_T *ht, int copyID, list_stack_T **list_stack);
int set_ref_in_list(list_T *l, int copyID, ht_stack_T **ht_stack);
int set_ref_in_item(typval_T *tv, int copyID, ht_stack_T **ht_stack, list_stack_T **list_stack);
char_u *echo_string_core(typval_T *tv, char_u **tofree, char_u *numbuf, int copyID, int echo_style, int restore_copyID, int composite_val);
char_u *echo_string(typval_T *tv, char_u **tofree, char_u *numbuf, int copyID);
char_u *tv2string(typval_T *tv, char_u **tofree, char_u *numbuf, int copyID);
char_u *string_quote(char_u *str, int function);
int string2float(char_u *text, float_T *value);
pos_T *var2fpos(typval_T *varp, int dollar_lnum, int *fnum);
int list2fpos(typval_T *arg, pos_T *posp, int *fnump, colnr_T *curswantp);
int get_id_len(char_u **arg);
int get_name_len(char_u **arg, char_u **alias, int evaluate, int verbose);
char_u *find_name_end(char_u *arg, char_u **expr_start, char_u **expr_end, int flags);
int eval_isnamec(int c);
int eval_isnamec1(int c);
void set_vim_var_nr(int idx, varnumber_T val);
varnumber_T get_vim_var_nr(int idx);
char_u *get_vim_var_str(int idx);
list_T *get_vim_var_list(int idx);
dict_T *get_vim_var_dict(int idx);
void set_vim_var_char(int c);
void set_vcount(long count, long count1, int set_prevcount);
void save_vimvars(vimvars_save_T *vvsave);
void restore_vimvars(vimvars_save_T *vvsave);
void set_vim_var_string(int idx, char_u *val, int len);
void set_vim_var_list(int idx, list_T *val);
void set_vim_var_dict(int idx, dict_T *val);
void set_reg_var(int c);
char_u *v_exception(char_u *oldval);
char_u *v_throwpoint(char_u *oldval);
char_u *set_cmdarg(exarg_T *eap, char_u *oldarg);
int get_var_tv(char_u *name, int len, typval_T *rettv, dictitem_T **dip, int verbose, int no_autoload);
int handle_subscript(char_u **arg, typval_T *rettv, int evaluate, int verbose);
typval_T *alloc_tv(void);
void free_tv(typval_T *varp);
void clear_tv(typval_T *varp);
void init_tv(typval_T *varp);
varnumber_T tv_get_number(typval_T *varp);
varnumber_T tv_get_number_chk(typval_T *varp, int *denote);
float_T tv_get_float(typval_T *varp);
char_u *tv_get_string(typval_T *varp);
char_u *tv_get_string_buf(typval_T *varp, char_u *buf);
char_u *tv_get_string_chk(typval_T *varp);
char_u *tv_get_string_buf_chk(typval_T *varp, char_u *buf);
char_u *tv_stringify(typval_T *varp, char_u *buf);
dictitem_T *find_var(char_u *name, hashtab_T **htp, int no_autoload);
dictitem_T *find_var_in_ht(hashtab_T *ht, int htname, char_u *varname, int no_autoload);
hashtab_T *find_var_ht(char_u *name, char_u **varname);
char_u *get_var_value(char_u *name);
void new_script_vars(scid_T id);
void init_var_dict(dict_T *dict, dictitem_T *dict_var, int scope);
void unref_var_dict(dict_T *dict);
void vars_clear(hashtab_T *ht);
void vars_clear_ext(hashtab_T *ht, int free_val);
void set_var(char_u *name, typval_T *tv, int copy);
int var_check_ro(int flags, char_u *name, int use_gettext);
int var_check_fixed(int flags, char_u *name, int use_gettext);
int var_check_func_name(char_u *name, int new_var);
int valid_varname(char_u *varname);
int tv_check_lock(int lock, char_u *name, int use_gettext);
void copy_tv(typval_T *from, typval_T *to);
int item_copy(typval_T *from, typval_T *to, int deep, int copyID);
void get_user_input(typval_T *argvars, typval_T *rettv, int inputdialog, int secret);
void ex_echo(exarg_T *eap);
void ex_echohl(exarg_T *eap);
void ex_execute(exarg_T *eap);
win_T *find_win_by_nr(typval_T *vp, tabpage_T *tp);
win_T *find_win_by_nr_or_id(typval_T *vp);
win_T *find_tabwin(typval_T *wvp, typval_T *tvp);
void getwinvar(typval_T *argvars, typval_T *rettv, int off);
void setwinvar(typval_T *argvars, typval_T *rettv, int off);
char_u *autoload_name(char_u *name);
int script_autoload(char_u *name, int reload);
int read_viminfo_varlist(vir_T *virp, int writing);
void write_viminfo_varlist(FILE *fp);
int store_session_globals(FILE *fd);
void last_set_msg(sctx_T script_ctx);
void reset_v_option_vars(void);
void prepare_assert_error(garray_T *gap);
void assert_error(garray_T *gap);
int assert_equal_common(typval_T *argvars, assert_type_T atype);
int assert_equalfile(typval_T *argvars);
int assert_match_common(typval_T *argvars, assert_type_T atype);
int assert_inrange(typval_T *argvars);
int assert_bool(typval_T *argvars, int isTrue);
int assert_report(typval_T *argvars);
int assert_exception(typval_T *argvars);
int assert_beeps(typval_T *argvars);
int assert_fails(typval_T *argvars);
void fill_assert_error(garray_T *gap, typval_T *opt_msg_tv, char_u *exp_str, typval_T *exp_tv, typval_T *got_tv, assert_type_T atype);
int typval_compare(typval_T *typ1, typval_T *typ2, exptype_T type, int type_is, int ic);
char_u *typval_tostring(typval_T *arg);
int var_exists(char_u *var);
int modify_fname(char_u *src, int tilde_file, int *usedlen, char_u **fnamep, char_u **bufp, int *fnamelen);
char_u *do_string_sub(char_u *str, char_u *pat, char_u *sub, typval_T *expr, char_u *flags);
void filter_map(typval_T *argvars, typval_T *rettv, int map);
/* vim: set ft=c : */
