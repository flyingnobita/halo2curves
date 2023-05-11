# --------------- fr.rs ----------------

# 0x73eda753299d7d483339d80809a1d80553bda402fffe5bfeffffffff00000001
SUBGROUP_SIZE_R = 52435875175126190479447740508185965837690552500527637822603658699938581184513
print(f"{SUBGROUP_SIZE_R = }")
print(f"{hex(SUBGROUP_SIZE_R) = }")

INV_q = -(SUBGROUP_SIZE_R**-1 % 2**64) % 2^64
print(f"{INV_q = }")
print(f"{hex(INV_q) = }")

R_r = 2**256 % SUBGROUP_SIZE_R
print(f"{R_r = }")
print(f"{hex(R_r) = }")

R2_r = 2**512 % SUBGROUP_SIZE_R
print(f"{R2_r = }")
print(f"{hex(R2_r) = }")

R3_r = 2**768 % SUBGROUP_SIZE_R
print(f"{R3_r = }")
print(f"{hex(R3_r) = }")

GENERATOR_r = 7 % SUBGROUP_SIZE_R
print(f"{GENERATOR_r = }")
print(f"{hex(GENERATOR_r) = }")

S_r = 32
t_r = (SUBGROUP_SIZE_R - 1) / (2**S_r)
print(f"{t_r = }")
print(f"{hex(t_r) = }")

# Following gives error OverflowError: exponent must be at most 9223372036854775807
# ROOT_OF_UNITY = GENERATOR ** ((SUBGROUP_SIZE_R - 1) / 2 ** S)
# ROOT_OF_UNITY = pow(GENERATOR,((SUBGROUP_SIZE_R - 1) / 2 ** S))
# print(f"{ROOT_OF_UNITY = }")
# print(f"{hex(ROOT_OF_UNITY) = }")

# --------------- fq.rs ----------------

# 0x1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaab
FIELD_MODULUS_Q = 4002409555221667393417789825735904156556882819939007885332058136124031650490837864442687629129015664037894272559787

print("FIELD_MODULUS_Q: ", FIELD_MODULUS_Q)
print("FIELD_MODULUS_Q (hex): ", hex(FIELD_MODULUS_Q))

INV_q = -(FIELD_MODULUS_Q**-1 % 2**64) % 2^64
print(f"{INV_q = }")
print(f"{hex(INV_q) = }")

R_q = 2**384 % FIELD_MODULUS_Q
print(f"{R_q = }")
print(f"{hex(R_q) = }")

R2_q = R_q**2 % FIELD_MODULUS_Q
print(f"{R2_q = }")
print(f"{hex(R2_q) = }")

R3_q = R_q**3 % FIELD_MODULUS_Q
print(f"{R3_q = }")
print(f"{hex(R3_q) = }")

NEGATIVE_ONE_q = -((2**384) % FIELD_MODULUS_Q) % FIELD_MODULUS_Q
print(f"{NEGATIVE_ONE_q = }")
print(f"{hex(NEGATIVE_ONE_q) = }")

TWO_INV_q = 2**(-1) % FIELD_MODULUS_Q
print(f"{TWO_INV_q = }")
print(f"{hex(TWO_INV_q) = }")

LEGENDRE = (FIELD_MODULUS_Q - 1) / 2
print(f"{LEGENDRE = }")
print(f"{hex(LEGENDRE) = }")

SQRT_Q_PLUS_1_DIV_4 = (FIELD_MODULUS_Q + 1) / 4
print(f"{SQRT_Q_PLUS_1_DIV_4 = }")
print(f"{hex(SQRT_Q_PLUS_1_DIV_4) = }")

SQRT_Q_MIN_3_DIV_4 = (FIELD_MODULUS_Q - 3) / 4
print(f"{SQRT_Q_MIN_3_DIV_4 = }")
print(f"{hex(SQRT_Q_MIN_3_DIV_4) = }")

Q_MIN_2 = (FIELD_MODULUS_Q - 2) 
print(f"{Q_MIN_2 = }")
print(f"{hex(Q_MIN_2) = }")