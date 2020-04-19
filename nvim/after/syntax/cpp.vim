" AtCoder extentions
syn keyword yatType       lint cauto mint Combination
syn keyword cppMacro      rep reps rrep rreps range_for
syn keyword cppMacro      ALL RALL
syn keyword cppMacro      pb optimize_cin
syn keyword cppMacro      len
syn keyword cppMacro      debug
syn keyword yatFunction   InRange chmax chmin ctoi GetDigit IsPrime
syn keyword yatFunction   YesNo YESNO yesno
syn keyword yatFunction   IsEven IsOdd
syn keyword cppMacro      MOD LONG_LONG_MAX LINT_MAX
syn keyword Directory     Type Integer

" C++ STL extentions
syn keyword cppSTL string basic_string wstring u16string u32string
syn keyword cppSTL vector list forward_list
syn keyword cppSTL stack deque priority_queue queue
syn keyword cppSTL set multiset unordered_set unordered_multiset
syn keyword cppSTL map multimap unordered_map unordered_multimap
syn keyword cppSTL array bitset valarray
syn keyword cppSTL pair tuple

" Intrinsic function
syn keyword cppFun time mktime localtime difftime ctime clock asctime
syn keyword cppFun strcat strcmp strlen strncat strcmp strcpy strstr strchr strrchr strtok isalnum isaplha isdigit islower isupper tolower toupper
syn keyword cppFun fopen fclose fgets fputs fputc fgetc getchar gets putc putchar puts printf remove rename sprintf scanf fscanf fread fwrite getc fprintf fgetpos fseek rewind
syn keyword cppFun malloc free calloc realloc memchr memcmp memcpy memmove memset
syn keyword cppFun rand srand
syn keyword cppFun stoll atoi atof atol atoll
syn keyword cppFun to_string

syn keyword cppFun   all_of any_of none_of for_each for_each_n find find_if find_if_not find_end find_first_of adjacent_fine
syn keyword cppFun   count count_if mismatch equal search search_n

syn keyword cppFun   copy copy_n copy_if copy_backward move move_backward swap_ranges iter_swap transform
syn keyword cppFun   replace replace_if replace_copy replace_copy_if fill fill_n generate generate_n
syn keyword cppFun   remove remove_if remove_copy unique unique_copy
syn keyword cppFun   reverse reverse_copy rotate rotate_copy
syn keyword cppFun   shift_left shift_right sample random_shuffle is_partitioned partition stable_partition partition_copy partition_point

syn keyword cppFun   min max minmax min_element max_element minmax_element clamp
syn keyword cppFun sort stable_sort partial_sort partial_sort_copy is_sorted is_sorted_until 
syn keyword cppFun lower_bound upper_bound equal_range binary_search
syn keyword cppFun next_permutation prev_permutation is_permutation

syn keyword cppFun abs labs llabs div ldiv lldiv abs fabs fabsf fabsl fmod fmodf fmodl remainder remainderf remainderl
syn keyword cppFun fma fmaf fmal fmax fmaxf fmaxl fdim fdimf fdiml nan nanf nanl
syn keyword cppFun exp expf expl exp2 exp2f exp2l expm1 expm1f expm1l log logf logl log10 log10f log10l log2 log2f log2l log1p log1pf log1pl
syn keyword cppFun pow powf powl sqrt sqrtf sqrtl cbrt cbrtf cbrtl hypot hypotf hypotl
syn keyword cppFun sin sinf sinl cos cosf cosl tan tanf tanl asin asinf asinl acos acosl acosf atanf atan atanl atan2 atan2f atan2l
syn keyword cppFun sinh sinhf sinhl cosh coshl coshf tnah tanhf tanhl asinh asinhf asinhl atanh atanhf atanhl atanh atanhf atanhl 
syn keyword cppFun erf erff erfl erfc erfcl erfcf tgamma tgammaf tgammal
syn keyword cppFun ceil ceilf ceill floor floorf floorl trunc truncf truncl round roundf roundl lround lroundf lroundl llround llroundf llroundl

syn keyword cppFun cout endl cerr cin

" Default highlighting
hi def link yatType             Type
hi def link yatClass		    Function
hi def link yatFunction		    Function
hi def link yatBuiltin		    yatFunction
hi def link cppSTL		        Function
hi def link cppFun		        Function
hi def link cppMacro	        Constant
