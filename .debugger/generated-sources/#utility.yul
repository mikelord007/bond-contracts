{

    function allocate_unbounded() -> memPtr {
        memPtr := mload(64)
    }

    function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
        revert(0, 0)
    }

    function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
        revert(0, 0)
    }

    function cleanup_t_uint256(value) -> cleaned {
        cleaned := value
    }

    function validator_revert_t_uint256(value) {
        if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
    }

    function abi_decode_t_uint256(offset, end) -> value {
        value := calldataload(offset)
        validator_revert_t_uint256(value)
    }

    function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
        if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
        }

    }

    function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
        mstore(pos, cleanup_t_uint256(value))
    }

    function abi_encode_tuple_t_uint256__to_t_uint256__fromStack_reversed(headStart , value0) -> tail {
        tail := add(headStart, 32)

        abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

    }

    function cleanup_t_uint160(value) -> cleaned {
        cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
    }

    function cleanup_t_address(value) -> cleaned {
        cleaned := cleanup_t_uint160(value)
    }

    function validator_revert_t_address(value) {
        if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
    }

    function abi_decode_t_address(offset, end) -> value {
        value := calldataload(offset)
        validator_revert_t_address(value)
    }

    function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
        if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
        }

    }

    function cleanup_t_bool(value) -> cleaned {
        cleaned := iszero(iszero(value))
    }

    function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
        mstore(pos, cleanup_t_bool(value))
    }

    function abi_encode_tuple_t_bool__to_t_bool__fromStack_reversed(headStart , value0) -> tail {
        tail := add(headStart, 32)

        abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

    }

    function identity(value) -> ret {
        ret := value
    }

    function convert_t_uint160_to_t_uint160(value) -> converted {
        converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
    }

    function convert_t_uint160_to_t_address(value) -> converted {
        converted := convert_t_uint160_to_t_uint160(value)
    }

    function convert_t_contract$_IBondAggregator_$3103_to_t_address(value) -> converted {
        converted := convert_t_uint160_to_t_address(value)
    }

    function abi_encode_t_contract$_IBondAggregator_$3103_to_t_address_fromStack(value, pos) {
        mstore(pos, convert_t_contract$_IBondAggregator_$3103_to_t_address(value))
    }

    function abi_encode_tuple_t_contract$_IBondAggregator_$3103__to_t_address__fromStack_reversed(headStart , value0) -> tail {
        tail := add(headStart, 32)

        abi_encode_t_contract$_IBondAggregator_$3103_to_t_address_fromStack(value0,  add(headStart, 0))

    }

    function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
        revert(0, 0)
    }

    function revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() {
        revert(0, 0)
    }

    function revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() {
        revert(0, 0)
    }

    // bytes
    function abi_decode_t_bytes_calldata_ptr(offset, end) -> arrayPos, length {
        if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
        length := calldataload(offset)
        if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
        arrayPos := add(offset, 0x20)
        if gt(add(arrayPos, mul(length, 0x01)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
    }

    function abi_decode_tuple_t_bytes_calldata_ptr(headStart, dataEnd) -> value0, value1 {
        if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := calldataload(add(headStart, 0))
            if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

            value0, value1 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
        }

    }

    function validator_revert_t_bool(value) {
        if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
    }

    function abi_decode_t_bool(offset, end) -> value {
        value := calldataload(offset)
        validator_revert_t_bool(value)
    }

    function abi_decode_tuple_t_bool(headStart, dataEnd) -> value0 {
        if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_bool(add(headStart, offset), dataEnd)
        }

    }

    function abi_encode_t_address_to_t_address_fromStack(value, pos) {
        mstore(pos, cleanup_t_address(value))
    }

    function abi_encode_tuple_t_address__to_t_address__fromStack_reversed(headStart , value0) -> tail {
        tail := add(headStart, 32)

        abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

    }

    // uint32[3]
    function abi_decode_t_array$_t_uint32_$3_calldata_ptr(offset, end) -> arrayPos {
        arrayPos := offset
        if gt(add(arrayPos, mul(0x03, 0x20)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
    }

    function abi_decode_tuple_t_uint256t_array$_t_uint32_$3_calldata_ptr(headStart, dataEnd) -> value0, value1 {
        if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
        }

        {

            let offset := 32

            value1 := abi_decode_t_array$_t_uint32_$3_calldata_ptr(add(headStart, offset), dataEnd)
        }

    }

    function cleanup_t_contract$_Authority_$171(value) -> cleaned {
        cleaned := cleanup_t_address(value)
    }

    function validator_revert_t_contract$_Authority_$171(value) {
        if iszero(eq(value, cleanup_t_contract$_Authority_$171(value))) { revert(0, 0) }
    }

    function abi_decode_t_contract$_Authority_$171(offset, end) -> value {
        value := calldataload(offset)
        validator_revert_t_contract$_Authority_$171(value)
    }

    function abi_decode_tuple_t_contract$_Authority_$171(headStart, dataEnd) -> value0 {
        if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_contract$_Authority_$171(add(headStart, offset), dataEnd)
        }

    }

    function cleanup_t_uint32(value) -> cleaned {
        cleaned := and(value, 0xffffffff)
    }

    function abi_encode_t_uint32_to_t_uint32_fromStack(value, pos) {
        mstore(pos, cleanup_t_uint32(value))
    }

    function abi_encode_tuple_t_uint32__to_t_uint32__fromStack_reversed(headStart , value0) -> tail {
        tail := add(headStart, 32)

        abi_encode_t_uint32_to_t_uint32_fromStack(value0,  add(headStart, 0))

    }

    function convert_t_contract$_IBondTeller_$3535_to_t_address(value) -> converted {
        converted := convert_t_uint160_to_t_address(value)
    }

    function abi_encode_t_contract$_IBondTeller_$3535_to_t_address_fromStack(value, pos) {
        mstore(pos, convert_t_contract$_IBondTeller_$3535_to_t_address(value))
    }

    function abi_encode_tuple_t_contract$_IBondTeller_$3535__to_t_address__fromStack_reversed(headStart , value0) -> tail {
        tail := add(headStart, 32)

        abi_encode_t_contract$_IBondTeller_$3535_to_t_address_fromStack(value0,  add(headStart, 0))

    }

    function convert_t_contract$_ERC20_$559_to_t_address(value) -> converted {
        converted := convert_t_uint160_to_t_address(value)
    }

    function abi_encode_t_contract$_ERC20_$559_to_t_address_fromStack(value, pos) {
        mstore(pos, convert_t_contract$_ERC20_$559_to_t_address(value))
    }

    function cleanup_t_uint48(value) -> cleaned {
        cleaned := and(value, 0xffffffffffff)
    }

    function abi_encode_t_uint48_to_t_uint48_fromStack(value, pos) {
        mstore(pos, cleanup_t_uint48(value))
    }

    function abi_encode_tuple_t_address_t_address_t_contract$_ERC20_$559_t_contract$_ERC20_$559_t_uint48_t_uint256__to_t_address_t_address_t_address_t_address_t_uint48_t_uint256__fromStack_reversed(headStart , value5, value4, value3, value2, value1, value0) -> tail {
        tail := add(headStart, 192)

        abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

        abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

        abi_encode_t_contract$_ERC20_$559_to_t_address_fromStack(value2,  add(headStart, 64))

        abi_encode_t_contract$_ERC20_$559_to_t_address_fromStack(value3,  add(headStart, 96))

        abi_encode_t_uint48_to_t_uint48_fromStack(value4,  add(headStart, 128))

        abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 160))

    }

    function abi_encode_tuple_t_address_t_contract$_ERC20_$559_t_contract$_ERC20_$559_t_address_t_bool_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__to_t_address_t_address_t_address_t_address_t_bool_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__fromStack_reversed(headStart , value11, value10, value9, value8, value7, value6, value5, value4, value3, value2, value1, value0) -> tail {
        tail := add(headStart, 384)

        abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

        abi_encode_t_contract$_ERC20_$559_to_t_address_fromStack(value1,  add(headStart, 32))

        abi_encode_t_contract$_ERC20_$559_to_t_address_fromStack(value2,  add(headStart, 64))

        abi_encode_t_address_to_t_address_fromStack(value3,  add(headStart, 96))

        abi_encode_t_bool_to_t_bool_fromStack(value4,  add(headStart, 128))

        abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 160))

        abi_encode_t_uint256_to_t_uint256_fromStack(value6,  add(headStart, 192))

        abi_encode_t_uint256_to_t_uint256_fromStack(value7,  add(headStart, 224))

        abi_encode_t_uint256_to_t_uint256_fromStack(value8,  add(headStart, 256))

        abi_encode_t_uint256_to_t_uint256_fromStack(value9,  add(headStart, 288))

        abi_encode_t_uint256_to_t_uint256_fromStack(value10,  add(headStart, 320))

        abi_encode_t_uint256_to_t_uint256_fromStack(value11,  add(headStart, 352))

    }

    function abi_decode_tuple_t_addresst_bool(headStart, dataEnd) -> value0, value1 {
        if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
        }

        {

            let offset := 32

            value1 := abi_decode_t_bool(add(headStart, offset), dataEnd)
        }

    }

    function abi_encode_tuple_t_uint256_t_uint48_t_uint48_t_bool__to_t_uint256_t_uint48_t_uint48_t_bool__fromStack_reversed(headStart , value3, value2, value1, value0) -> tail {
        tail := add(headStart, 128)

        abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

        abi_encode_t_uint48_to_t_uint48_fromStack(value1,  add(headStart, 32))

        abi_encode_t_uint48_to_t_uint48_fromStack(value2,  add(headStart, 64))

        abi_encode_t_bool_to_t_bool_fromStack(value3,  add(headStart, 96))

    }

    function abi_decode_tuple_t_uint256t_address(headStart, dataEnd) -> value0, value1 {
        if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
        }

        {

            let offset := 32

            value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
        }

    }

    function round_up_to_mul_of_32(value) -> result {
        result := and(add(value, 31), not(31))
    }

    function panic_error_0x41() {
        mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
        mstore(4, 0x41)
        revert(0, 0x24)
    }

    function finalize_allocation(memPtr, size) {
        let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
        // protect against overflow
        if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
        mstore(64, newFreePtr)
    }

    function allocate_memory(size) -> memPtr {
        memPtr := allocate_unbounded()
        finalize_allocation(memPtr, size)
    }

    function array_allocation_size_t_array$_t_uint32_$6_memory_ptr(length) -> size {
        // Make sure we can allocate memory without overflow
        if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

        size := mul(length, 0x20)

    }

    function validator_revert_t_uint32(value) {
        if iszero(eq(value, cleanup_t_uint32(value))) { revert(0, 0) }
    }

    function abi_decode_t_uint32(offset, end) -> value {
        value := calldataload(offset)
        validator_revert_t_uint32(value)
    }

    // uint32[6]
    function abi_decode_available_length_t_array$_t_uint32_$6_memory_ptr(offset, length, end) -> array {
        array := allocate_memory(array_allocation_size_t_array$_t_uint32_$6_memory_ptr(length))
        let dst := array

        let srcEnd := add(offset, mul(length, 0x20))
        if gt(srcEnd, end) {
            revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
        }
        for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
        {

            let elementPos := src

            mstore(dst, abi_decode_t_uint32(elementPos, end))
            dst := add(dst, 0x20)
        }
    }

    // uint32[6]
    function abi_decode_t_array$_t_uint32_$6_memory_ptr(offset, end) -> array {
        if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
        let length := 0x06
        array := abi_decode_available_length_t_array$_t_uint32_$6_memory_ptr(offset, length, end)
    }

    function abi_decode_tuple_t_array$_t_uint32_$6_memory_ptr(headStart, dataEnd) -> value0 {
        if slt(sub(dataEnd, headStart), 192) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_array$_t_uint32_$6_memory_ptr(add(headStart, offset), dataEnd)
        }

    }

    function abi_decode_tuple_t_uint256t_uint256t_address(headStart, dataEnd) -> value0, value1, value2 {
        if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
        }

        {

            let offset := 32

            value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
        }

        {

            let offset := 64

            value2 := abi_decode_t_address(add(headStart, offset), dataEnd)
        }

    }

    function convert_t_contract$_Authority_$171_to_t_address(value) -> converted {
        converted := convert_t_uint160_to_t_address(value)
    }

    function abi_encode_t_contract$_Authority_$171_to_t_address_fromStack(value, pos) {
        mstore(pos, convert_t_contract$_Authority_$171_to_t_address(value))
    }

    function abi_encode_tuple_t_contract$_Authority_$171__to_t_address__fromStack_reversed(headStart , value0) -> tail {
        tail := add(headStart, 32)

        abi_encode_t_contract$_Authority_$171_to_t_address_fromStack(value0,  add(headStart, 0))

    }

    function abi_encode_tuple_t_uint256_t_uint256_t_uint48_t_uint48__to_t_uint256_t_uint256_t_uint48_t_uint48__fromStack_reversed(headStart , value3, value2, value1, value0) -> tail {
        tail := add(headStart, 128)

        abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

        abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

        abi_encode_t_uint48_to_t_uint48_fromStack(value2,  add(headStart, 64))

        abi_encode_t_uint48_to_t_uint48_fromStack(value3,  add(headStart, 96))

    }

    function abi_decode_tuple_t_uint256t_uint256t_uint256(headStart, dataEnd) -> value0, value1, value2 {
        if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
        }

        {

            let offset := 32

            value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
        }

        {

            let offset := 64

            value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
        }

    }

    function abi_encode_tuple_t_uint48_t_uint48_t_uint32_t_uint32_t_uint32_t_uint32_t_uint32_t_uint256_t_uint256_t_uint256__to_t_uint48_t_uint48_t_uint32_t_uint32_t_uint32_t_uint32_t_uint32_t_uint256_t_uint256_t_uint256__fromStack_reversed(headStart , value9, value8, value7, value6, value5, value4, value3, value2, value1, value0) -> tail {
        tail := add(headStart, 320)

        abi_encode_t_uint48_to_t_uint48_fromStack(value0,  add(headStart, 0))

        abi_encode_t_uint48_to_t_uint48_fromStack(value1,  add(headStart, 32))

        abi_encode_t_uint32_to_t_uint32_fromStack(value2,  add(headStart, 64))

        abi_encode_t_uint32_to_t_uint32_fromStack(value3,  add(headStart, 96))

        abi_encode_t_uint32_to_t_uint32_fromStack(value4,  add(headStart, 128))

        abi_encode_t_uint32_to_t_uint32_fromStack(value5,  add(headStart, 160))

        abi_encode_t_uint32_to_t_uint32_fromStack(value6,  add(headStart, 192))

        abi_encode_t_uint256_to_t_uint256_fromStack(value7,  add(headStart, 224))

        abi_encode_t_uint256_to_t_uint256_fromStack(value8,  add(headStart, 256))

        abi_encode_t_uint256_to_t_uint256_fromStack(value9,  add(headStart, 288))

    }

    function panic_error_0x11() {
        mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
        mstore(4, 0x11)
        revert(0, 0x24)
    }

    function checked_sub_t_uint256(x, y) -> diff {
        x := cleanup_t_uint256(x)
        y := cleanup_t_uint256(y)

        if lt(x, y) { panic_error_0x11() }

        diff := sub(x, y)
    }

    function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
        mstore(pos, length)
        updated_pos := add(pos, 0x20)
    }

    function store_literal_in_memory_269df367cd41cace5897a935d0e0858fe4543b5619d45e09af6b124c1bb3d528(memPtr) {

        mstore(add(memPtr, 0), "UNAUTHORIZED")

    }

    function abi_encode_t_stringliteral_269df367cd41cace5897a935d0e0858fe4543b5619d45e09af6b124c1bb3d528_to_t_string_memory_ptr_fromStack(pos) -> end {
        pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 12)
        store_literal_in_memory_269df367cd41cace5897a935d0e0858fe4543b5619d45e09af6b124c1bb3d528(pos)
        end := add(pos, 32)
    }

    function abi_encode_tuple_t_stringliteral_269df367cd41cace5897a935d0e0858fe4543b5619d45e09af6b124c1bb3d528__to_t_string_memory_ptr__fromStack_reversed(headStart ) -> tail {
        tail := add(headStart, 32)

        mstore(add(headStart, 0), sub(tail, headStart))
        tail := abi_encode_t_stringliteral_269df367cd41cace5897a935d0e0858fe4543b5619d45e09af6b124c1bb3d528_to_t_string_memory_ptr_fromStack( tail)

    }

    function revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() {
        revert(0, 0)
    }

    function revert_error_5e8f644817bc4960744f35c15999b6eff64ae702f94b1c46297cfd4e1aec2421() {
        revert(0, 0)
    }

    function cleanup_t_contract$_ERC20_$559(value) -> cleaned {
        cleaned := cleanup_t_address(value)
    }

    function validator_revert_t_contract$_ERC20_$559(value) {
        if iszero(eq(value, cleanup_t_contract$_ERC20_$559(value))) { revert(0, 0) }
    }

    function abi_decode_t_contract$_ERC20_$559(offset, end) -> value {
        value := calldataload(offset)
        validator_revert_t_contract$_ERC20_$559(value)
    }

    function validator_revert_t_uint48(value) {
        if iszero(eq(value, cleanup_t_uint48(value))) { revert(0, 0) }
    }

    function abi_decode_t_uint48(offset, end) -> value {
        value := calldataload(offset)
        validator_revert_t_uint48(value)
    }

    function cleanup_t_int8(value) -> cleaned {
        cleaned := signextend(0, value)
    }

    function validator_revert_t_int8(value) {
        if iszero(eq(value, cleanup_t_int8(value))) { revert(0, 0) }
    }

    function abi_decode_t_int8(offset, end) -> value {
        value := calldataload(offset)
        validator_revert_t_int8(value)
    }

    // struct IBondSDA.MarketParams
    function abi_decode_t_struct$_MarketParams_$3450_memory_ptr(headStart, end) -> value {
        if slt(sub(end, headStart), 0x0180) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
        value := allocate_memory(0x0180)

        {
            // payoutToken

            let offset := 0

            mstore(add(value, 0x00), abi_decode_t_contract$_ERC20_$559(add(headStart, offset), end))

        }

        {
            // quoteToken

            let offset := 32

            mstore(add(value, 0x20), abi_decode_t_contract$_ERC20_$559(add(headStart, offset), end))

        }

        {
            // callbackAddr

            let offset := 64

            mstore(add(value, 0x40), abi_decode_t_address(add(headStart, offset), end))

        }

        {
            // capacityInQuote

            let offset := 96

            mstore(add(value, 0x60), abi_decode_t_bool(add(headStart, offset), end))

        }

        {
            // capacity

            let offset := 128

            mstore(add(value, 0x80), abi_decode_t_uint256(add(headStart, offset), end))

        }

        {
            // formattedInitialPrice

            let offset := 160

            mstore(add(value, 0xa0), abi_decode_t_uint256(add(headStart, offset), end))

        }

        {
            // formattedMinimumPrice

            let offset := 192

            mstore(add(value, 0xc0), abi_decode_t_uint256(add(headStart, offset), end))

        }

        {
            // debtBuffer

            let offset := 224

            mstore(add(value, 0xe0), abi_decode_t_uint32(add(headStart, offset), end))

        }

        {
            // vesting

            let offset := 256

            mstore(add(value, 0x0100), abi_decode_t_uint48(add(headStart, offset), end))

        }

        {
            // conclusion

            let offset := 288

            mstore(add(value, 0x0120), abi_decode_t_uint48(add(headStart, offset), end))

        }

        {
            // depositInterval

            let offset := 320

            mstore(add(value, 0x0140), abi_decode_t_uint32(add(headStart, offset), end))

        }

        {
            // scaleAdjustment

            let offset := 352

            mstore(add(value, 0x0160), abi_decode_t_int8(add(headStart, offset), end))

        }

    }

    function abi_decode_tuple_t_struct$_MarketParams_$3450_memory_ptr(headStart, dataEnd) -> value0 {
        if slt(sub(dataEnd, headStart), 384) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_struct$_MarketParams_$3450_memory_ptr(add(headStart, offset), dataEnd)
        }

    }

    function panic_error_0x32() {
        mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
        mstore(4, 0x32)
        revert(0, 0x24)
    }

    function abi_decode_tuple_t_uint32(headStart, dataEnd) -> value0 {
        if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_uint32(add(headStart, offset), dataEnd)
        }

    }

    function cleanup_t_bytes4(value) -> cleaned {
        cleaned := and(value, 0xffffffff00000000000000000000000000000000000000000000000000000000)
    }

    function abi_encode_t_bytes4_to_t_bytes4_fromStack(value, pos) {
        mstore(pos, cleanup_t_bytes4(value))
    }

    function abi_encode_tuple_t_address_t_address_t_bytes4__to_t_address_t_address_t_bytes4__fromStack_reversed(headStart , value2, value1, value0) -> tail {
        tail := add(headStart, 96)

        abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

        abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

        abi_encode_t_bytes4_to_t_bytes4_fromStack(value2,  add(headStart, 64))

    }

    function abi_decode_t_bool_fromMemory(offset, end) -> value {
        value := mload(offset)
        validator_revert_t_bool(value)
    }

    function abi_decode_tuple_t_bool_fromMemory(headStart, dataEnd) -> value0 {
        if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_bool_fromMemory(add(headStart, offset), dataEnd)
        }

    }

    function checked_add_t_uint256(x, y) -> sum {
        x := cleanup_t_uint256(x)
        y := cleanup_t_uint256(y)

        // overflow, if x > (maxValue - y)
        if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { panic_error_0x11() }

        sum := add(x, y)
    }

    function checked_mul_t_uint32(x, y) -> product {
        x := cleanup_t_uint32(x)
        y := cleanup_t_uint32(y)

        // overflow, if x != 0 and y > (maxValue / x)
        if and(iszero(iszero(x)), gt(y, div(0xffffffff, x))) { panic_error_0x11() }

        product := mul(x, y)
    }

    function abi_encode_tuple_t_uint32_t_uint32_t_uint32_t_uint32_t_uint32_t_uint32__to_t_uint32_t_uint32_t_uint32_t_uint32_t_uint32_t_uint32__fromStack_reversed(headStart , value5, value4, value3, value2, value1, value0) -> tail {
        tail := add(headStart, 192)

        abi_encode_t_uint32_to_t_uint32_fromStack(value0,  add(headStart, 0))

        abi_encode_t_uint32_to_t_uint32_fromStack(value1,  add(headStart, 32))

        abi_encode_t_uint32_to_t_uint32_fromStack(value2,  add(headStart, 64))

        abi_encode_t_uint32_to_t_uint32_fromStack(value3,  add(headStart, 96))

        abi_encode_t_uint32_to_t_uint32_fromStack(value4,  add(headStart, 128))

        abi_encode_t_uint32_to_t_uint32_fromStack(value5,  add(headStart, 160))

    }

    function abi_decode_t_uint48_fromMemory(offset, end) -> value {
        value := mload(offset)
        validator_revert_t_uint48(value)
    }

    function abi_decode_tuple_t_uint48_fromMemory(headStart, dataEnd) -> value0 {
        if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_uint48_fromMemory(add(headStart, offset), dataEnd)
        }

    }

    function convert_t_uint48_to_t_uint256(value) -> converted {
        converted := cleanup_t_uint256(identity(cleanup_t_uint48(value)))
    }

    function abi_encode_t_uint48_to_t_uint256_fromStack(value, pos) {
        mstore(pos, convert_t_uint48_to_t_uint256(value))
    }

    function abi_encode_tuple_t_uint48__to_t_uint256__fromStack_reversed(headStart , value0) -> tail {
        tail := add(headStart, 32)

        abi_encode_t_uint48_to_t_uint256_fromStack(value0,  add(headStart, 0))

    }

    function checked_sub_t_uint48(x, y) -> diff {
        x := cleanup_t_uint48(x)
        y := cleanup_t_uint48(y)

        if lt(x, y) { panic_error_0x11() }

        diff := sub(x, y)
    }

    function panic_error_0x12() {
        mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
        mstore(4, 0x12)
        revert(0, 0x24)
    }

    function cleanup_t_uint8(value) -> cleaned {
        cleaned := and(value, 0xff)
    }

    function validator_revert_t_uint8(value) {
        if iszero(eq(value, cleanup_t_uint8(value))) { revert(0, 0) }
    }

    function abi_decode_t_uint8_fromMemory(offset, end) -> value {
        value := mload(offset)
        validator_revert_t_uint8(value)
    }

    function abi_decode_tuple_t_uint8_fromMemory(headStart, dataEnd) -> value0 {
        if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_uint8_fromMemory(add(headStart, offset), dataEnd)
        }

    }

    function abi_encode_tuple_t_contract$_ERC20_$559_t_contract$_ERC20_$559__to_t_address_t_address__fromStack_reversed(headStart , value1, value0) -> tail {
        tail := add(headStart, 64)

        abi_encode_t_contract$_ERC20_$559_to_t_address_fromStack(value0,  add(headStart, 0))

        abi_encode_t_contract$_ERC20_$559_to_t_address_fromStack(value1,  add(headStart, 32))

    }

    function abi_decode_t_uint256_fromMemory(offset, end) -> value {
        value := mload(offset)
        validator_revert_t_uint256(value)
    }

    function abi_decode_tuple_t_uint256_fromMemory(headStart, dataEnd) -> value0 {
        if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

        {

            let offset := 0

            value0 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
        }

    }

    function abi_encode_tuple_t_uint48_t_uint256__to_t_uint48_t_uint256__fromStack_reversed(headStart , value1, value0) -> tail {
        tail := add(headStart, 64)

        abi_encode_t_uint48_to_t_uint48_fromStack(value0,  add(headStart, 0))

        abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

    }

    function checked_add_t_uint48(x, y) -> sum {
        x := cleanup_t_uint48(x)
        y := cleanup_t_uint48(y)

        // overflow, if x > (maxValue - y)
        if gt(x, sub(0xffffffffffff, y)) { panic_error_0x11() }

        sum := add(x, y)
    }

    function abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack_reversed(headStart , value1, value0) -> tail {
        tail := add(headStart, 64)

        abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

        abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

    }

}
