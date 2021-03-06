{
	"name": "test",
	"instructions": [
	    add 80
	    set-name test_add
	    checkpoint 80

	    offset 1
	    set-name test_pos_offset

	    offset -1
	    set-name test_neg_offset

	    add-offset-range 0 21 4
	    single -1
	    set-name test_add_offset_range

	    clear
	    back-to-checkpoint 80
	    set-name test_back_to_checkpoint

	    offset 1
	    align 4
	    set-name test_align

	    clear

	    add 1
	    add 2
	    add 3
	    add 2
	    most-common
	    set-name test_most_common

	    clear

	    add 1
	    add 2
	    add 3
	    add 2
	    sort
	    single -1
	    set-name test_sort

	    clear

	    add 1
	    add 1
	    verify-single
	    set-name test_verify_single_fail

	    clear

	    add 1
	    verify-single
	    set-name test_verify_single_success

	    clear

	    run test_dep.dep

	    clear

		arm-find-all 'loop: b loop'
		set-name test_alias
		set-name test_keystone_find_opcodes

		arm-verify 'loop: b loop'
		set-name test_keystone_verify_opcodes

		clear

		add 1
		append add 2
		set-name test_append

		clear

		find-bytes 11223344
		set-name test_find_bytes

		verify-bytes 11223344
		set-name test_verify_bytes

        clear

        find-str '3DUfw'
        set-name test_find_str

        clear

        find test_find

        clear

        add 80
        or offset 0
        verify-single
        set-name test_or_80

        clear

        add 80
        or offset 1
        sort
        single -1
        set-name test_or_81

        clear

        add 80
        and offset 0
        verify-single
        set-name test_and_80

        clear

        add 80
        and offset 1
        set-name test_and_81

        clear

        add 1
        add 2
        add 3

        checkpoint a

        clear

        add 2
        add 8
        add 12

        checkpoint b

        clear

        checkpoint c

        intersect a b
        set-name test_intersect_ab

        intersect a b c
        set-name test_intersect_abc
	]
}
