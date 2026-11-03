local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
L0_1 = require
L1_1 = "anim"
L0_1(L1_1)
L0_1 = require
L1_1 = "debugging"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "vectmath"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "animdata"
L2_1 = L2_1(L3_1)
L3_1 = L2_1.readAnimDataFile
L4_1 = L1_1.vectAngle
L5_1 = L1_1.vectNorm
L6_1 = math
L6_1 = L6_1.rad
L7_1 = math
L7_1 = L7_1.abs
L8_1 = math
L8_1 = L8_1.random
L9_1 = math
L9_1 = L9_1.randomseed
L10_1 = require
L11_1 = "bannerad"
L10_1 = L10_1(L11_1)
L11_1 = 1500
PUNCH_CRY_MIN_TIME_DELTA = L11_1
L11_1 = 2800
PUNCH_CRY_MAX_TIME_DELTA = L11_1
L11_1 = 25000
STAY_OFFENDED_MAX_TIME_DELTA = L11_1
L11_1 = 5000
INCREASE_HAPPINESS_TIME_DELTA = L11_1
L11_1 = 1
INCREASE_HAPPINESS_AMOUNT = L11_1
L11_1 = 4
WALK_STEP_SIZE = L11_1
L11_1 = 60000
MAX_EAT_TIME_DELTA = L11_1
L11_1 = 60000
MAX_SLEEP_NIGHT_TIME_DELTA = L11_1
L11_1 = 3
FINGERPRINT_CLEAN_THRESHOLD = L11_1
L11_1 = 500
STROKE_UPDATE_HAPPINESS_INTERVAL = L11_1
L11_1 = 2
STROKE_INCREASE_HAPPINESS_AMOUNT = L11_1
L11_1 = 1.3
STROKE_INCREASE_MULTIPLIER = L11_1
L11_1 = 800
COMPLAIN_AFTER_DRAG_MIN_TIME_DELTA = L11_1
L11_1 = 500
DRAG_UPDATE_HAPPINESS_INTERVAL = L11_1
L11_1 = -1
DRAG_CHANGE_HAPPINESS_AMOUNT = L11_1
L11_1 = 4
CONCERNED_REFUSE_CHANCE = L11_1
L11_1 = 2
CRITICAL_REFUSE_CHANCE = L11_1
L11_1 = 7
FALL_ON_SCREEN_STEP_SIZE = L11_1
L11_1 = 10000
YAWN_MIN_IDLE_TIME_DELTA = L11_1
L11_1 = 15000
FALL_ASLEEP_MIN_IDLE_TIME_DELTA = L11_1
L11_1 = 60000
REFUSE_MAX_TIME_DELTA = L11_1
L11_1 = REFUSE_MAX_TIME_DELTA
L11_1 = 2 / L11_1
REFUSE_COUNT_PER_MAX_TIME_DELTA_MIN_RATIO = L11_1
L11_1 = 8
SHOW_PUNCH_BANNER_AD_MIN_PUNCHES = L11_1
L11_1 = 12
SHOW_PUNCH_BANNER_AD_MIN_TIME_DELTA = L11_1
L11_1 = "anim_walk_hands_backward_side"
WALK_SIDE = L11_1
L11_1 = "anim_walk_turn_round"
WALK_TURN_ROUND = L11_1
L11_1 = "anim_take_newspaper_front"
TAKE_NEWSPAPER_FRONT = L11_1
L11_1 = "anim_read_front"
READ_FRONT = L11_1
L11_1 = "anim_put_away_newspaper_front"
PUT_AWAY_NEWSPAPER_FRONT = L11_1
L11_1 = "anim_take_gum_front"
TAKE_GUM_FRONT = L11_1
L11_1 = "anim_start_chewing_gum_front"
START_CHEW_GUM_FRONT = L11_1
L11_1 = "anim_chewing_gum_front"
CHEW_GUM_FRONT = L11_1
L11_1 = "anim_blow_bubble_front"
BLOW_BUBBLE_FRONT = L11_1
L11_1 = "anim_knock_front"
KNOCK_FRONT = L11_1
L11_1 = "anim_start_fall_front"
START_FALL_FRONT = L11_1
L11_1 = "anim_fall_front"
FALL_FRONT = L11_1
L11_1 = "anim_stand_up_front"
STAND_UP_FRONT = L11_1
L11_1 = "anim_complain_front"
COMPLAIN_FRONT = L11_1
L11_1 = "anim_complain_scream_front"
COMPLAIN_SCREAM_FRONT = L11_1
L11_1 = "anim_angry_short_front"
ANGRY_SHORT_FRONT = L11_1
L11_1 = "anim_threat_front"
ANGRY_THREAT_FRONT = L11_1
L11_1 = {}
L12_1 = COMPLAIN_FRONT
L13_1 = ANGRY_SHORT_FRONT
L14_1 = ANGRY_THREAT_FRONT
L11_1[1] = L12_1
L11_1[2] = L13_1
L11_1[3] = L14_1
ANGRY_REACTION_ANIMS = L11_1
L11_1 = "anim_breath_front"
BREATHE_FRONT = L11_1
L11_1 = "anim_breath_annoyed_front"
BREATHE_ANNOYED_FRONT = L11_1
L11_1 = "anim_breath_concerned_front"
BREATHE_CONCERNED_FRONT = L11_1
L11_1 = "anim_fall_asleep_front"
FALL_ASLEEP_FRONT = L11_1
L11_1 = "anim_sleeping_front"
SLEEPING_FRONT = L11_1
L11_1 = "anim_wake_up_front"
WAKE_UP_FRONT = L11_1
L11_1 = "anim_sad_front"
SAD_FRONT = L11_1
L11_1 = "anim_cry_loop_front"
CRY_FRONT = L11_1
L11_1 = "anim_start_cry_front"
START_CRY_FRONT = L11_1
L11_1 = "anim_whine_loop_front"
WHINE_FRONT = L11_1
L11_1 = "anim_start_whine_front"
START_WHINE_FRONT = L11_1
L11_1 = "anim_take_kendama_front"
TAKE_KENDAMA_FRONT = L11_1
L11_1 = "anim_play_kendama_front"
KENDAMA_FRONT = L11_1
L11_1 = "anim_win_kendama_front"
KENDAMA_WIN_FRONT = L11_1
L11_1 = "anim_lose_kendama_front"
KENDAMA_LOSE_FRONT = L11_1
L11_1 = "anim_put_kendama_back_front"
PUT_KENDAMA_BACK_FRONT = L11_1
L11_1 = "anim_dizzy_front"
DIZZY_FRONT = L11_1
L11_1 = "anim_nausea_front"
NAUSEA_FRONT = L11_1
L11_1 = "anim_dizzy_breath_front"
DIZZY_BREATH_FRONT = L11_1
L11_1 = "anim_transition_nausea_breath"
TRANSITION_NAUSEA_BREATH = L11_1
L11_1 = "anim_dizzy3_loop_front"
DIZZY3_LOOP_FRONT = L11_1
L11_1 = "anim_dizzy3_put_paperbag_back_front"
DIZZY3_END_FRONT = L11_1
L11_1 = "anim_dizzy3_take_paperbag_front"
DIZZY3_START_FRONT = L11_1
L11_1 = "anim_dizzy3_throw_up_front"
DIZZY3_THROW_UP_FRONT = L11_1
L11_1 = "anim_punch_face_front"
PUNCH_FACE_FRONT = L11_1
L11_1 = "anim_punch_stomach_front"
PUNCH_STOMACH_FRONT = L11_1
L11_1 = "anim_kick_foot_front"
KICK_FOOT_FRONT = L11_1
L11_1 = "anim_foot_hurt_front"
FOOT_HURT_FRONT = L11_1
L11_1 = "anim_scratch_belly_front"
SCRATCH_BELLY_FRONT = L11_1
L11_1 = "anim_transition_scratch_belly_front"
TRANSITION_SCRATCH_BELLY_FRONT = L11_1
L11_1 = "anim_fight_KO_front"
FIGHT_KO_FRONT = L11_1
L11_1 = "anim_fight_KO_loop_front"
FIGHT_KO_LOOP_FRONT = L11_1
L11_1 = "anim_fight_KO_lying_loop_front"
FIGHT_KO_LYING_LOOP_FRONT = L11_1
L11_1 = "anim_fight_angry_front"
FIGHT_BACK_START = L11_1
L11_1 = "anim_fight_back_front"
FIGHT_BACK_LOOP = L11_1
L11_1 = "anim_press_flat_part1_front"
PRESS_FLAT_START_FRONT = L11_1
L11_1 = "anim_press_flat_part2_front"
PRESS_FLAT_FRONT = L11_1
L11_1 = "anim_press_flat_loop_front"
PRESS_FLAT_LOOP_FRONT = L11_1
L11_1 = "anim_press_flat_stand_front"
PRESS_FLAT_STAND_FRONT = L11_1
L11_1 = "anim_stretch_part1_front"
STRETCH_START_FRONT = L11_1
L11_1 = "anim_stretch_part2_front"
STRETCH_FRONT = L11_1
L11_1 = "anim_stretch_loop_front"
STRETCH_LOOP_FRONT = L11_1
L11_1 = "anim_stretch_stand_front"
STRETCH_STAND_FRONT = L11_1
L11_1 = "anim_thinner_part1_front"
MAKE_THIN_START_FRONT = L11_1
L11_1 = "anim_thinner_loop_front"
MAKE_THIN_LOOP_FRONT = L11_1
L11_1 = "anim_thinner_ending_front"
MAKE_THIN_END_FRONT = L11_1
L11_1 = "anim_tumble_90_degree_front"
TUMBLE_90_DEGREE_FRONT = L11_1
L11_1 = "anim_fall_on_screen_front"
FALL_ON_SCREEN_START_FRONT = L11_1
L11_1 = "anim_fall_on_screen_loop_front"
FALL_ON_SCREEN_LOOP_FRONT = L11_1
L11_1 = "anim_fall_on_screen_moving_loop_front"
FALL_ON_SCREEN_MOVE_FRONT = L11_1
L11_1 = "anim_fall_on_screen_still_front"
FALL_ON_SCREEN_STILL_FRONT = L11_1
L11_1 = "anim_leave_screen_back_front"
FALL_ON_SCREEN_END_FRONT = L11_1
L11_1 = "anim_circle_part1_front"
CIRCLE_START_FRONT = L11_1
L11_1 = "anim_circle_loop_side"
CIRCLE_LOOP_SIDE = L11_1
L11_1 = "anim_circle_get_up_part1_front"
CIRCLE_GET_UP_PART1_FRONT = L11_1
L11_1 = "anim_circle_get_up_part2_front"
CIRCLE_GET_UP_PART2_FRONT = L11_1
L11_1 = "anim_circle_get_up_loop_front"
CIRCLE_GET_UP_LOOP_FRONT = L11_1
L11_1 = "anim_drag_from_hair_part1_front"
DRAG_FROM_HAIR_START_FRONT = L11_1
L11_1 = "anim_drag_from_hair_loop_front"
DRAG_FROM_HAIR_LOOP_FRONT = L11_1
L11_1 = "anim_drag_from_hair_part3_front"
DRAG_FROM_HAIR_END_FRONT = L11_1
L11_1 = "anim_drag_from_shirt_loop_front"
DRAG_FROM_SHIRT_LOOP_FRONT = L11_1
L11_1 = "anim_drag_from_shirt_stand_front"
DRAG_FROM_SHIRT_END_FRONT = L11_1
L11_1 = "anim_throw_out_moving_front"
THROW_OUT_MOVING_FRONT = L11_1
L11_1 = "anim_moon_walking_front"
MOON_WALKING_FRONT = L11_1
L11_1 = "anim_turned_front"
MOON_WALKING_TURN_FRONT = L11_1
L11_1 = "anim_rattan_front"
RATTAN_FRONT = L11_1
L11_1 = "anim_tarzan_part1_front"
TARZAN_PART1_FRONT = L11_1
L11_1 = "anim_tarzan_loop_front"
TARZAN_LOOP_FRONT = L11_1
L11_1 = "anim_tarzan_stand_front"
TARZAN_STAND_FRONT = L11_1
L11_1 = "anim_offended_complain_front"
OFFENDED_COMPLAIN_FRONT = L11_1
L11_1 = "anim_offended_loop"
OFFENDED_LOOP = L11_1
L11_1 = "anim_offended_turn_around1"
OFFENDED_TURN_AROUND1 = L11_1
L11_1 = "anim_offended_turn_around2"
OFFENDED_TURN_AROUND2 = L11_1
L11_1 = "anim_hang_down_fall"
HANG_DOWN_FALL = L11_1
L11_1 = "anim_hang_down_fall_loop"
HANG_DOWN_FALL_LOOP = L11_1
L11_1 = "anim_hang_down_walk_part1"
HANG_DOWN_WALK_PART1 = L11_1
L11_1 = "anim_hang_down_walk_part1_loop"
HANG_DOWN_WALK_PART1_LOOP = L11_1
L11_1 = "anim_hang_down_walk_part2"
HANG_DOWN_WALK_PART2 = L11_1
L11_1 = "anim_hang_down_walk_part2_loop"
HANG_DOWN_LOOP2 = L11_1
L11_1 = "anim_turn_off_light_front"
TURN_OFF_LIGHT_FRONT = L11_1
L11_1 = "anim_light_the_fire_front"
TURN_OFF_LIGHT_LIGHT_FIRE = L11_1
L11_1 = "anim_fire_walk_loop_side"
TURN_OFF_LIGHT_WALK_SIDE = L11_1
L11_1 = "anim_dance_fast_part1_front"
DANCE_FAST_PART1 = L11_1
L11_1 = "anim_dance_fast_part2_front"
DANCE_FAST_PART2 = L11_1
L11_1 = "anim_dance_fast_part3_front"
DANCE_FAST_PART3 = L11_1
L11_1 = "anim_dance_fast_part4_front"
DANCE_FAST_PART4 = L11_1
L11_1 = "anim_dance_fast_part5_loop_front"
DANCE_FAST_PART5 = L11_1
L11_1 = "anim_dance_fast_ending_front"
DANCE_FAST_PART6 = L11_1
L11_1 = "anim_dance_slow_part1_front"
DANCE_SLOW_PART1 = L11_1
L11_1 = "anim_dance_slow_part2_front"
DANCE_SLOW_PART2 = L11_1
L11_1 = "anim_dance_slow_part3_front"
DANCE_SLOW_PART3 = L11_1
L11_1 = "anim_dance_slow_part4_front"
DANCE_SLOW_PART4 = L11_1
L11_1 = "anim_dance_slow_part5_front"
DANCE_SLOW_PART5 = L11_1
L11_1 = "anim_hand_standing_part1_front"
HANDSTAND_START = L11_1
L11_1 = "anim_hand_standing_loop_front"
HANDSTAND_LOOP = L11_1
L11_1 = "anim_hand_standing_ending_front"
HANDSTAND_END = L11_1
L11_1 = "anim_blow2_part1_front"
MAKE_FAT_START_FRONT = L11_1
L11_1 = "anim_blow2_loop_front"
MAKE_FAT_LOOP_FRONT = L11_1
L11_1 = "anim_blow2_part3_front"
MAKE_FAT_END_FRONT = L11_1
L11_1 = "anim_kiss_part1_front"
KISS_START_FRONT = L11_1
L11_1 = "anim_kiss_part1_transition_loop_front"
KISS_TRANSITION_LOOP_FRONT = L11_1
L11_1 = "anim_kiss_loop_front"
KISS_LOOP_FRONT = L11_1
L11_1 = "anim_rain_take_umbrella_front"
RAIN_START_FRONT = L11_1
L11_1 = "anim_rain_holding_umbrella_front"
RAIN_HOLD_UMBRELLA_FRONT = L11_1
L11_1 = "anim_rain_holding_umbrella_loop_front"
RAIN_LOOP_FRONT = L11_1
L11_1 = "anim_rain_ending_front"
RAIN_END_FRONT = L11_1
L11_1 = "anim_yawning_tired_front"
YAWN_START_FRONT = L11_1
L11_1 = "anim_yawning_loop_front"
YAWN_LOOP_FRONT = L11_1
L11_1 = "anim_yawning_ending_front"
YAWN_END_FRONT = L11_1
L11_1 = "anim_eat_burp_front"
EAT_BURP_FRONT = L11_1
L11_1 = "anim_eat_grab_loop1_front"
EAT_LOOP1_FRONT = L11_1
L11_1 = "anim_eat_spit_bone_front"
EAT_LOOP1_SPIT_BONE_FRONT = L11_1
L11_1 = "anim_eat_grab_loop2_front"
EAT_LOOP2_FRONT = L11_1
L11_1 = "anim_eat_part1_front"
EAT_PART1_FRONT = L11_1
L11_1 = "anim_eat_part2_front"
EAT_PART2_FRONT = L11_1
L11_1 = "anim_eat_ending_front"
EAT_END_FRONT = L11_1
L11_1 = "anim_night_bed_appear_front"
SLEEP_NIGHT_PART1_FRONT = L11_1
L11_1 = "anim_night_go_to_the_bed_front"
SLEEP_NIGHT_PART2_FRONT = L11_1
L11_1 = "anim_night_fall_asleep_front"
SLEEP_NIGHT_PART3_FRONT = L11_1
L11_1 = "anim_night_loop_sleep_front"
SLEEP_NIGHT_LOOP_FRONT = L11_1
L11_1 = "anim_night_snore_front"
SLEEP_NIGHT_SNORE_FRONT = L11_1
L11_1 = "anim_night_wake_up_front"
SLEEP_NIGHT_WAKE_FRONT = L11_1
L11_1 = "anim_night_sleep_ending_front"
SLEEP_NIGHT_END_FRONT = L11_1
L11_1 = "anim_clean1_watch_front"
CLEAN1_PART1_FRONT = L11_1
L11_1 = "anim_clean1_take_scrubber_front"
CLEAN1_PART2_FRONT = L11_1
L11_1 = "anim_clean1_loop_front"
CLEAN1_LOOP_FRONT = L11_1
L11_1 = "anim_clean1_put_back_front"
CLEAN1_END_FRONT = L11_1
L11_1 = "anim_clean2_take_pot_front"
CLEAN2_START_FRONT = L11_1
L11_1 = "anim_clean2_front"
CLEAN2_END_FRONT = L11_1
L11_1 = "anim_fart_part1_front"
FART_PART1_FRONT = L11_1
L11_1 = "anim_fart_part2_front"
FART_PART2_FRONT = L11_1
L11_1 = "anim_bag_boom_front"
CHEEKY_BAG_BOOM_FRONT = L11_1
L11_1 = "anim_camera_pighead_front"
CHEEKY_TAKE_PIC_FRONT = L11_1
L11_1 = "anim_mischief_front"
CHEEKY_MISCHIEF_FRONT = L11_1
L11_1 = "anim_shoot_front"
CHEEKY_SHOOT_FRONT = L11_1
L11_1 = "anim_throw_egg_front"
CHEEKY_THROW_EGG_FRONT = L11_1
L11_1 = "anim_tshirt_cover_head_front"
CHEEKY_SHOW_BELLY_FRONT = L11_1
L11_1 = "anim_vuvuzela_front"
CHEEKY_VUVUZELA_FRONT = L11_1
L11_1 = {}
L12_1 = CHEEKY_BAG_BOOM_FRONT
L13_1 = CHEEKY_TAKE_PIC_FRONT
L14_1 = CHEEKY_MISCHIEF_FRONT
L15_1 = CHEEKY_SHOOT_FRONT
L16_1 = CHEEKY_THROW_EGG_FRONT
L17_1 = CHEEKY_SHOW_BELLY_FRONT
L18_1 = CHEEKY_VUVUZELA_FRONT
L11_1[1] = L12_1
L11_1[2] = L13_1
L11_1[3] = L14_1
L11_1[4] = L15_1
L11_1[5] = L16_1
L11_1[6] = L17_1
L11_1[7] = L18_1
CHEEKY_ANIMS = L11_1
L11_1 = "anim_naughty_laughter_front"
CHEEKY_END_LAUGH_FRONT = L11_1
L11_1 = "anim_refuses_front"
CHEEKY_REFUSE_FRONT = L11_1
L11_1 = -4
HAPPINESS_CHANGE_PUNCH_FACE = L11_1
L11_1 = -4
HAPPINESS_CHANGE_PUNCH_STOMACH = L11_1
L11_1 = -3
HAPPINESS_CHANGE_KICK_FOOT = L11_1
L11_1 = 11
HAPPINESS_CHANGE_STROKE_BELLY = L11_1
L11_1 = -5
HAPPINESS_CHANGE_TUMBLE = L11_1
L11_1 = -8
HAPPINESS_CHANGE_FALL_DOWN = L11_1
L11_1 = -10
HAPPINESS_CHANGE_SHORT_SHAKE = L11_1
L11_1 = -20
HAPPINESS_CHANGE_LONG_SHAKE = L11_1
L11_1 = -8
HAPPINESS_CHANGE_DRAG_THROW_OUT = L11_1
L11_1 = 5
HAPPINESS_CHANGE_TARZAN = L11_1
L11_1 = 0
HAPPINESS_CHANGE_EAT_LUNCH = L11_1
L11_1 = 0
HAPPINESS_CHANGE_EAT_BURP = L11_1
L11_1 = 0
HAPPINESS_CHANGE_SLEEP_NIGHT = L11_1
L11_1 = 5
HAPPINESS_CHANGE_CIRCLE = L11_1
L11_1 = 5
HAPPINESS_CHANGE_HANDSTAND = L11_1
L11_1 = 25
HAPPINESS_CHANGE_KISS = L11_1
L11_1 = 5
HAPPINESS_CHANGE_FAST_DANCE = L11_1
L11_1 = 5
HAPPINESS_CHANGE_SLOW_DANCE = L11_1
L11_1 = 5
HAPPINESS_CHANGE_KENDAMA = L11_1

function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2
  L7_2 = {}
  L7_2.orientationController = A1_2
  L7_2.happiness = A2_2
  L7_2.happinessBar = A3_2
  L7_2.discoveryAccountant = A4_2
  L7_2.audioController = A5_2
  L7_2.game = A6_2
  L8_2 = {}
  L7_2.timelines = L8_2
  L7_2.currentTimeline = nil
  L7_2.directionX = -1
  L7_2.directionY = 0
  L7_2.lastAnimation = nil
  L7_2.lastCheekyAnimation = nil
  L7_2.walkBorderOffset = 0
  L7_2.isRotating = false
  L7_2.isFallOnScreen = false
  L7_2.isFallOnScreenMoving = false
  L7_2.isHangFromScreen = false
  L7_2.isEating = false
  L7_2.isSleeping = false
  L7_2.isDragging = false
  L7_2.isPlayingKendama = false
  L7_2.isShaking = false
  L7_2.isMakeFat = false
  L7_2.isPlayReactionAnim = false
  L7_2.isDisableMakeFatRaising = false
  L7_2.isConcerned = false
  L7_2.isCritical = false
  L7_2.isOffended = false
  L7_2.isAboutToOffended = false
  L7_2.lastPunchFace = 2
  L7_2.startPunchTimestamp = 0
  L7_2.lastPunchTimeline = nil
  L7_2.isSamePunchTimeline = false
  L7_2.isPunchShowReaction = false
  L7_2.punchCounter = 0
  L7_2.revertOffendedTimer = nil
  L7_2.eatStartTimestamp = nil
  L7_2.sleepStartTimestamp = nil
  L7_2.offendedStartTimestamp = nil
  L7_2.dragStartTimestamp = nil
  L8_2 = {}
  L7_2.fingerprintImages = L8_2
  L7_2.happinessIncreaseTimer = nil
  L8_2 = {}
  L7_2.refusableAnimHistory = L8_2
  L7_2.turnOffLightDarkBg = nil
  if A0_2 then
    L7_2.configuration = A0_2
  else
    L8_2 = newConfiguration
    L8_2 = L8_2()
    L7_2.configuration = L8_2
    L8_2 = L7_2.configuration
    L9_2 = L8_2
    L8_2 = L8_2.loadConfiguration
    L8_2(L9_2)
  end

  function L8_2(A0_3)
    local L1_3
  end

  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L7_2
    L1_3 = L1_3.timelines
    L1_3 = L1_3[A0_3]
    if L1_3 then
      L1_3 = L7_2
      L1_3 = L1_3.timelines
      L1_3 = L1_3[A0_3]
      return L1_3
    end
    L1_3 = L3_1
    L2_3 = system
    L2_3 = L2_3.pathForFile
    L3_3 = ANIM_DATA_DIR
    L4_3 = A0_3
    L5_3 = ".data"
    L3_3 = L3_3 .. L4_3 .. L5_3
    L2_3, L3_3, L4_3, L5_3, L6_3 = L2_3(L3_3)
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L3_3 = L1_3
    L2_3 = L1_3.setAudioController
    L4_3 = L7_2
    L4_3 = L4_3.audioController
    L2_3(L3_3, L4_3)
    L3_3 = L1_3
    L2_3 = L1_3.setConfiguration
    L4_3 = L7_2
    L4_3 = L4_3.configuration
    L2_3(L3_3, L4_3)
    L2_3 = L7_2
    L2_3 = L2_3.timelines
    L2_3[A0_3] = L1_3
    L2_3 = SCREEN_ANIMEGG
    L3_3 = L2_3
    L2_3 = L2_3.insert
    L4_3 = L1_3.group
    L2_3(L3_3, L4_3)
    L2_3 = L7_2
    L2_3 = L2_3.orientationController
    L3_3 = L2_3
    L2_3 = L2_3.isPortraitUpsideDown
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L3_3 = L1_3
      L2_3 = L1_3.rotateAt
      L4_3 = 180
      L5_3 = CENTER
      L5_3 = L5_3.x
      L6_3 = CENTER
      L6_3 = L6_3.y
      L2_3(L3_3, L4_3, L5_3, L6_3)
    else
      L2_3 = L7_2
      L2_3 = L2_3.orientationController
      L3_3 = L2_3
      L2_3 = L2_3.isLandscapeLeft
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L3_3 = L1_3
        L2_3 = L1_3.rotateAt
        L4_3 = 90
        L5_3 = CENTER
        L5_3 = L5_3.x
        L6_3 = CENTER
        L6_3 = L6_3.y
        L2_3(L3_3, L4_3, L5_3, L6_3)
      else
        L2_3 = L7_2
        L2_3 = L2_3.orientationController
        L3_3 = L2_3
        L2_3 = L2_3.isLandscapeRight
        L2_3 = L2_3(L3_3)
        if L2_3 then
          L3_3 = L1_3
          L2_3 = L1_3.rotateAt
          L4_3 = 270
          L5_3 = CENTER
          L5_3 = L5_3.x
          L6_3 = CENTER
          L6_3 = L6_3.y
          L2_3(L3_3, L4_3, L5_3, L6_3)
        end
      end
    end
    return L1_3
  end

  L10_2 = nil
  L11_2 = nil
  L12_2 = nil
  L13_2 = nil
  L14_2 = nil
  L15_2 = nil
  L16_2 = nil
  L17_2 = nil
  L18_2 = nil
  L19_2 = nil
  L20_2 = nil
  L21_2 = nil
  L22_2 = nil
  L23_2 = nil
  L24_2 = nil
  L25_2 = nil
  L26_2 = nil
  L27_2 = nil
  L28_2 = nil
  L29_2 = nil
  L30_2 = nil
  L31_2 = nil
  L32_2 = nil
  L33_2 = nil
  L34_2 = nil
  L35_2 = nil
  L36_2 = nil
  L37_2 = nil
  L38_2 = nil
  L39_2 = nil
  L40_2 = nil
  L41_2 = nil
  L42_2 = nil
  L43_2 = nil
  L44_2 = nil
  L45_2 = nil
  L46_2 = nil
  L47_2 = nil
  L48_2 = nil
  L49_2 = nil
  L50_2 = nil
  L51_2 = nil
  L52_2 = nil
  L53_2 = nil
  L54_2 = nil
  L55_2 = nil
  L56_2 = nil
  L57_2 = nil
  L58_2 = nil
  L59_2 = nil
  L60_2 = nil
  L61_2 = nil
  L62_2 = nil
  L63_2 = nil
  L64_2 = nil
  L65_2 = nil
  L66_2 = nil
  L67_2 = nil
  L68_2 = nil
  L69_2 = nil
  L70_2 = nil
  L71_2 = nil
  L72_2 = nil
  L73_2 = nil
  L74_2 = nil
  L75_2 = nil
  L76_2 = nil
  L77_2 = nil
  L78_2 = nil
  L79_2 = nil
  L80_2 = nil
  L81_2 = nil
  L82_2 = nil
  L83_2 = nil
  L84_2 = nil
  L85_2 = nil
  L86_2 = nil
  L87_2 = nil
  L88_2 = nil
  L89_2 = nil
  L90_2 = nil
  L91_2 = nil
  L92_2 = nil
  L93_2 = nil
  L94_2 = nil
  L95_2 = nil
  L96_2 = nil
  L97_2 = nil
  L98_2 = nil
  L99_2 = nil
  L100_2 = nil
  L101_2 = nil
  L102_2 = nil
  L103_2 = nil
  L104_2 = nil
  L105_2 = nil
  L106_2 = nil
  L107_2 = nil
  L108_2 = nil

  function L13_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A1_3 == nil then
      A1_3 = false
    end
    L2_3 = L7_2
    L2_3 = L2_3.currentTimeline
    if L2_3 then
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L2_3 = L2_3.x
      L3_3 = L7_2
      L3_3 = L3_3.currentTimeline
      L3_3 = L3_3.y
      L4_3 = L7_2
      L4_3 = L4_3.orientationController
      L5_3 = L4_3
      L4_3 = L4_3.isPortrait
      L4_3 = L4_3(L5_3)
      if L4_3 then
        if A1_3 then
          L4_3 = WORLD_HEIGHT
          L5_3 = A0_3.height
          L4_3 = L4_3 - L5_3
          L5_3 = GROUND_LEVEL
          L3_3 = L4_3 - L5_3
        else
          L4_3 = L7_2
          L4_3 = L4_3.currentTimeline
          L4_3 = L4_3.y
          L5_3 = L7_2
          L5_3 = L5_3.currentTimeline
          L5_3 = L5_3.height
          L6_3 = A0_3.height
          L5_3 = L5_3 - L6_3
          L3_3 = L4_3 + L5_3
        end
      else
        L4_3 = L7_2
        L4_3 = L4_3.orientationController
        L5_3 = L4_3
        L4_3 = L4_3.isPortraitUpsideDown
        L4_3 = L4_3(L5_3)
        if L4_3 then
          if A1_3 then
            L4_3 = GROUND_LEVEL
            L5_3 = A0_3.height
            L3_3 = L4_3 + L5_3
          else
            L4_3 = L7_2
            L4_3 = L4_3.currentTimeline
            L4_3 = L4_3.y
            L5_3 = L7_2
            L5_3 = L5_3.currentTimeline
            L5_3 = L5_3.height
            L6_3 = A0_3.height
            L5_3 = L5_3 - L6_3
            L3_3 = L4_3 - L5_3
          end
        else
          L4_3 = L7_2
          L4_3 = L4_3.orientationController
          L5_3 = L4_3
          L4_3 = L4_3.isLandscapeLeft
          L4_3 = L4_3(L5_3)
          if L4_3 then
            if A1_3 then
              L4_3 = GROUND_LEVEL
              L5_3 = A0_3.height
              L2_3 = L4_3 + L5_3
            else
              L4_3 = L7_2
              L4_3 = L4_3.currentTimeline
              L4_3 = L4_3.x
              L5_3 = L7_2
              L5_3 = L5_3.currentTimeline
              L5_3 = L5_3.height
              L6_3 = A0_3.height
              L5_3 = L5_3 - L6_3
              L2_3 = L4_3 - L5_3
            end
          elseif A1_3 then
            L4_3 = WORLD_WIDTH
            L5_3 = GROUND_LEVEL
            L4_3 = L4_3 - L5_3
            L5_3 = A0_3.height
            L2_3 = L4_3 - L5_3
          else
            L4_3 = L7_2
            L4_3 = L4_3.currentTimeline
            L4_3 = L4_3.x
            L5_3 = L7_2
            L5_3 = L5_3.currentTimeline
            L5_3 = L5_3.height
            L6_3 = A0_3.height
            L5_3 = L5_3 - L6_3
            L2_3 = L4_3 + L5_3
          end
        end
      end
      L5_3 = A0_3
      L4_3 = A0_3.moveTo
      L6_3 = L2_3
      L7_3 = L3_3
      L4_3(L5_3, L6_3, L7_3)
    else
      L3_3 = A0_3
      L2_3 = A0_3.moveTo
      L4_3 = WORLD_WIDTH
      L4_3 = L4_3 / 2
      L5_3 = A0_3.width
      L5_3 = L5_3 / 2
      L4_3 = L4_3 - L5_3
      L5_3 = WORLD_HEIGHT
      L6_3 = A0_3.height
      L5_3 = L5_3 - L6_3
      L6_3 = GROUND_LEVEL
      L5_3 = L5_3 - L6_3
      L2_3(L3_3, L4_3, L5_3)
    end
  end

  function L10_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L7_2
    L1_3 = L1_3.happiness
    L1_3 = L1_3 + A0_3
    L2_3 = MAX_HAPPINESS
    if L1_3 > L2_3 then
      L1_3 = L7_2
      L2_3 = MAX_HAPPINESS
      L1_3.happiness = L2_3
    else
      L1_3 = L7_2
      L1_3 = L1_3.happiness
      L1_3 = L1_3 + A0_3
      if L1_3 < 0 then
        L1_3 = L7_2
        L1_3.happiness = 0
      else
        L1_3 = L7_2
        L2_3 = L7_2
        L2_3 = L2_3.happiness
        L2_3 = L2_3 + A0_3
        L1_3.happiness = L2_3
      end
    end
    L1_3 = L7_2
    L1_3 = L1_3.happinessBar
    L2_3 = L1_3
    L1_3 = L1_3.update
    L3_3 = L7_2
    L3_3 = L3_3.happiness
    L1_3(L2_3, L3_3)
    L1_3 = L7_2
    L1_3 = L1_3.happiness
    L2_3 = OFFENDED_THRESHOLD
    local __and_1 = false
    if L1_3 <= L2_3 then
      L1_3 = L7_2
      L1_3 = L1_3.isOffended
      if not L1_3 then
        __and_1 = true
        L1_3 = L7_2
        L1_3.isAboutToOffended = true
        L1_3 = L7_2
        L1_3.isCritical = false
        L1_3 = L7_2
        L1_3.isConcerned = false
      end
    end
    if not __and_1 then
      L1_3 = L7_2
      L1_3 = L1_3.isOffended
      if L1_3 then
        L1_3 = L7_2
        L1_3 = L1_3.happiness
        L2_3 = OFFENDED_CRITICAL_THRESHOLD
        if L1_3 > L2_3 then
          L1_3 = L7_2
          L1_3.isAboutToOffended = false
          L1_3 = L7_2
          L1_3.isOffended = false
          L1_3 = L11_2
          L1_3()
        end
      end
    end
    L1_3 = L7_2
    L1_3 = L1_3.happiness
    L2_3 = OFFENDED_THRESHOLD
    local __and_2 = false
    if L1_3 > L2_3 then
      L1_3 = L7_2
      L1_3 = L1_3.happiness
      L2_3 = OFFENDED_CRITICAL_THRESHOLD
      if L1_3 <= L2_3 then
        __and_2 = true
        L1_3 = L7_2
        L1_3.isCritical = true
        L1_3 = L7_2
        L1_3.isConcerned = false
        L1_3 = L7_2
        L1_3.isOffended = false
        L1_3 = L7_2
        L1_3.isAboutToOffended = false
      end
    end
    if not __and_2 then
      L1_3 = L7_2
      L1_3 = L1_3.happiness
      L2_3 = OFFENDED_CRITICAL_THRESHOLD
      local __and_3 = false
      if L1_3 > L2_3 then
        L1_3 = L7_2
        L1_3 = L1_3.happiness
        L2_3 = OFFENDED_WARN_THRESHOLD
        if L1_3 <= L2_3 then
          __and_3 = true
          L1_3 = L7_2
          L1_3.isConcerned = true
          L1_3 = L7_2
          L1_3.isCritical = false
          L1_3 = L7_2
          L1_3.isOffended = false
          L1_3 = L7_2
          L1_3.isAboutToOffended = false
        end
      end
      if not __and_3 then
        L1_3 = L7_2
        L1_3 = L1_3.happiness
        L2_3 = OFFENDED_THRESHOLD
        if L1_3 <= L2_3 then
        else
          L1_3 = L7_2
          L1_3.isConcerned = false
          L1_3 = L7_2
          L1_3.isCritical = false
          L1_3 = L7_2
          L1_3.isOffended = false
          L1_3 = L7_2
          L1_3.isAboutToOffended = false
        end
      end
    end
  end

  function L12_2()
    local L0_3, L1_3
    L0_3 = L7_2
    L0_3 = L0_3.isOffended
    if L0_3 then
    else
      L0_3 = L7_2
      L0_3 = L0_3.isAboutToOffended
      if L0_3 then
      else
        L0_3 = L7_2
        L0_3 = L0_3.isPlayReactionAnim
        local __and_4 = false
        if L0_3 then
          L0_3 = L7_2
          L0_3 = L0_3.isSleeping
          if not L0_3 then
            __and_4 = true
            L0_3 = L7_2
            L0_3 = L0_3.isEating
            if not L0_3 then
            end
          end
        end
        if not __and_4 then
          L0_3 = L7_2
          L0_3 = L0_3.isPunchShowReaction
          if L0_3 then
          else
            L0_3 = L10_2
            L1_3 = INCREASE_HAPPINESS_AMOUNT
            L0_3(L1_3)
          end
        end
      end
    end
  end

  function L14_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = L8_2
    L1_3 = "play random animation"
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.game
    L0_3 = L0_3.menuBtnEnabled
    if L0_3 then
      L0_3 = L7_2
      L0_3 = L0_3.discoveryAccountant
      L1_3 = L0_3
      L0_3 = L0_3.activateHintAnimationNotifyTimerIfNotStarted
      L0_3(L1_3)
    end
    L0_3 = L7_2
    L0_3.isPunchShowReaction = false
    L0_3 = L7_2
    L0_3.isPlayReactionAnim = false
    L0_3 = L7_2
    L0_3 = L0_3.fingerprintImages
    L0_3 = #L0_3
    L1_3 = FINGERPRINT_CLEAN_THRESHOLD
    if L0_3 >= L1_3 then
      L0_3 = L103_2
      L0_3()
      return
    end
    L0_3 = {}
    L1_3 = {}
    L2_3 = L20_2
    L1_3.anim = L2_3
    L1_3.chance = 10
    L2_3 = {}
    L3_3 = L18_2
    L2_3.anim = L3_3
    L2_3.chance = 10
    L3_3 = {}
    L4_3 = L19_2
    L3_3.anim = L4_3
    L3_3.chance = 10
    L4_3 = {}
    L5_3 = L21_2
    L4_3.anim = L5_3
    L4_3.chance = 15
    L5_3 = {}
    L6_3 = L22_2
    L5_3.anim = L6_3
    L5_3.chance = 15
    L6_3 = {}
    L7_3 = L32_2
    L6_3.anim = L7_3
    L6_3.chance = 60
    L0_3[1] = L1_3
    L0_3[2] = L2_3
    L0_3[3] = L3_3
    L0_3[4] = L4_3
    L0_3[5] = L5_3
    L0_3[6] = L6_3
    L1_3 = L7_2
    L1_3 = L1_3.isCritical
    if L1_3 then
      L1_3 = table
      L1_3 = L1_3.insert
      L2_3 = L0_3
      L3_3 = 1
      L4_3 = {}
      L5_3 = L104_2
      L4_3.anim = L5_3
      L4_3.chance = 80
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = L7_2
      L1_3 = L1_3.isConcerned
      if L1_3 then
        L1_3 = table
        L1_3 = L1_3.insert
        L2_3 = L0_3
        L3_3 = 1
        L4_3 = {}
        L5_3 = L104_2
        L4_3.anim = L5_3
        L4_3.chance = 40
        L1_3(L2_3, L3_3, L4_3)
      else
        L1_3 = table
        L1_3 = L1_3.insert
        L2_3 = L0_3
        L3_3 = {}
        L4_3 = L104_2
        L3_3.anim = L4_3
        L3_3.chance = 10
        L1_3(L2_3, L3_3)
      end
    end
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    L2_3 = L7_2
    L2_3 = L2_3.discoveryAccountant
    L2_3 = L2_3.lastDiscoverableAnimPlayTime
    L1_3 = L1_3 - L2_3
    L2_3 = YAWN_MIN_IDLE_TIME_DELTA
    if L1_3 > L2_3 then
      L1_3 = table
      L1_3 = L1_3.insert
      L2_3 = L0_3
      L3_3 = {}
      L4_3 = L96_2
      L3_3.anim = L4_3
      L3_3.chance = 8
      L1_3(L2_3, L3_3)
    end
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    L2_3 = L7_2
    L2_3 = L2_3.discoveryAccountant
    L2_3 = L2_3.lastDiscoverableAnimPlayTime
    L1_3 = L1_3 - L2_3
    L2_3 = FALL_ASLEEP_MIN_IDLE_TIME_DELTA
    if L1_3 > L2_3 then
      L1_3 = table
      L1_3 = L1_3.insert
      L2_3 = L0_3
      L3_3 = {}
      L4_3 = L48_2
      L3_3.anim = L4_3
      L3_3.chance = 8
      L1_3(L2_3, L3_3)
    end
    L1_3 = 0
    L2_3 = ipairs
    L3_3 = L0_3
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.chance
      L1_3 = L1_3 + L7_3
    end
    L2_3 = L9_1
    L3_3 = os
    L3_3 = L3_3.time
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L3_3()
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L2_3 = L8_1
    L3_3 = 1
    L4_3 = L1_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = 0
    L4_3 = nil
    L5_3 = ipairs
    L6_3 = L0_3
    L5_3, L6_3, L7_3 = L5_3(L6_3)
    for L8_3, L9_3 in L5_3, L6_3, L7_3 do
      L10_3 = L9_3.chance
      L3_3 = L3_3 + L10_3
      if L2_3 <= L3_3 then
        L4_3 = L9_3.anim
        break
      end
    end
    L5_3 = L104_2
    local __and_5 = false
    if L4_3 == L5_3 then
      L5_3 = L7_2
      L5_3 = L5_3.lastAnimation
      if L5_3 == L4_3 then
        __and_5 = true
        L5_3 = L104_2
        L5_3()
      end
    end
    if not __and_5 then
      L5_3 = L32_2
      local __and_6 = false
      if L4_3 ~= L5_3 then
        L5_3 = L7_2
        L5_3 = L5_3.lastAnimation
        if L5_3 == L4_3 then
          __and_6 = true
          L5_3 = L32_2
          L5_3()
        end
      end
      if not __and_6 then
        L5_3 = L7_2
        L5_3.lastAnimation = L4_3
        L5_3 = L4_3
        L5_3()
      end
    end
  end

  function L15_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = L9_2
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    if A1_3 == nil then
      A1_3 = true
    end
    if A2_3 == nil then
      A2_3 = true
    end
    L4_3 = L13_2
    L5_3 = L3_3
    L6_3 = A2_3
    L4_3(L5_3, L6_3)
    L4_3 = L7_2
    L4_3 = L4_3.currentTimeline
    if L4_3 then
      L4_3 = L7_2
      L4_3 = L4_3.currentTimeline
      L4_3 = L4_3.isPlaying
      if L4_3 then
        L4_3 = L7_2
        L4_3 = L4_3.currentTimeline
        L5_3 = L4_3
        L4_3 = L4_3.stop
        L4_3(L5_3)
      end
      L4_3 = L7_2
      L4_3 = L4_3.currentTimeline
      L5_3 = L4_3
      L4_3 = L4_3.hide
      L4_3(L5_3)
    end
    L4_3 = L7_2
    L4_3.currentTimeline = L3_3
    if A1_3 then
      L4_3 = L7_2
      L4_3 = L4_3.currentTimeline
      L5_3 = L4_3
      L4_3 = L4_3.show
      L4_3(L5_3)
    end
    L4_3 = L7_2
    L4_3 = L4_3.discoveryAccountant
    L5_3 = L4_3
    L4_3 = L4_3.playAnimation
    L6_3 = A0_3
    L4_3(L5_3, L6_3)
  end

  function L23_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L4_3 = A1_3.x
    L4_3 = A0_3 * L4_3
    L5_3 = A1_3.y
    L5_3 = A0_3 * L5_3

    function L6_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L0_4 = L0_4.group
      L0_4 = L0_4.xScale
      L1_4 = L15_2
      L2_4 = WALK_TURN_ROUND
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L1_4 = L1_4.group
      compat.setProp(L1_4, "xScale", L0_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = A3_3
      L5_4 = nil
      L6_4 = true
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4)
    end

    function L7_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L7_2
      L1_4 = L1_4.fingerprintImages
      L1_4 = #L1_4
      L2_4 = FINGERPRINT_CLEAN_THRESHOLD
      if L1_4 >= L2_4 then
        L1_4 = L103_2
        A3_3 = L1_4
        L1_4 = L6_3
        L1_4()
      else
        L1_4 = A2_3
        L2_4 = L4_3
        L3_4 = L5_3
        L1_4 = L1_4(L2_4, L3_4)
        if L1_4 then
          L2_4 = A0_4
          L1_4 = A0_4.translate
          L3_4 = L4_3
          L4_4 = L5_3
          L1_4(L2_4, L3_4, L4_4)
        else
          L1_4 = L6_3
          L1_4()
        end
      end
    end

    L8_3 = L15_2
    L9_3 = WALK_SIDE
    L8_3(L9_3)
    L8_3 = L7_2
    L8_3 = L8_3.currentTimeline
    L9_3 = L8_3
    L8_3 = L8_3.play
    L10_3 = L8_1
    L11_3 = 3
    L12_3 = 5
    L10_3 = L10_3(L11_3, L12_3)
    L11_3 = L6_3
    L12_3 = L7_3
    L8_3(L9_3, L10_3, L11_3, L12_3)
  end

  function L21_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L8_2
    L1_3 = "walk left"
    L0_3(L1_3)

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L0_4 = L7_2
      L0_4 = L0_4.orientationController
      L1_4 = L0_4
      L0_4 = L0_4.getMoveLeftDirection
      L0_4 = L0_4(L1_4)
      L1_4 = L9_2
      L2_4 = WALK_SIDE
      L1_4 = L1_4(L2_4)
      L2_4 = L1_4.group
      compat.setProp(L2_4, "xScale", 1)
      L2_4 = L8_1
      L3_4 = 1
      L4_4 = 3
      L2_4 = L2_4(L3_4, L4_4)
      if L2_4 == 2 then
        L2_4 = L23_2
        L3_4 = WALK_STEP_SIZE
        L4_4 = L0_4
        L5_4 = L16_2
        L6_4 = L22_2
        L2_4(L3_4, L4_4, L5_4, L6_4)
      else
        L2_4 = L23_2
        L3_4 = WALK_STEP_SIZE
        L4_4 = L0_4
        L5_4 = L16_2
        L6_4 = L32_2
        L2_4(L3_4, L4_4, L5_4, L6_4)
      end
    end

    L1_3 = L15_2
    L2_3 = WALK_TURN_ROUND
    L1_3(L2_3)
    L1_3 = L7_2
    L1_3 = L1_3.currentTimeline
    L1_3 = L1_3.group
    compat.setProp(L1_3, "xScale", 1)
    L1_3 = L7_2
    L1_3 = L1_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.play
    L3_3 = 1
    L4_3 = L0_3
    L1_3(L2_3, L3_3, L4_3)
  end

  function L22_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L8_2
    L1_3 = "walk right"
    L0_3(L1_3)

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L0_4 = L7_2
      L0_4 = L0_4.orientationController
      L1_4 = L0_4
      L0_4 = L0_4.getMoveRightDirection
      L0_4 = L0_4(L1_4)
      L1_4 = L9_2
      L2_4 = WALK_SIDE
      L1_4 = L1_4(L2_4)
      L2_4 = L1_4.group
      compat.setProp(L2_4, "xScale", -1)
      L2_4 = L8_1
      L3_4 = 1
      L4_4 = 3
      L2_4 = L2_4(L3_4, L4_4)
      if L2_4 == 2 then
        L2_4 = L23_2
        L3_4 = WALK_STEP_SIZE
        L4_4 = L0_4
        L5_4 = L17_2
        L6_4 = L21_2
        L2_4(L3_4, L4_4, L5_4, L6_4)
      else
        L2_4 = L23_2
        L3_4 = WALK_STEP_SIZE
        L4_4 = L0_4
        L5_4 = L17_2
        L6_4 = L32_2
        L2_4(L3_4, L4_4, L5_4, L6_4)
      end
    end

    L1_3 = L15_2
    L2_3 = WALK_TURN_ROUND
    L1_3(L2_3)
    L1_3 = L7_2
    L1_3 = L1_3.currentTimeline
    L1_3 = L1_3.group
    compat.setProp(L1_3, "xScale", -1)
    L1_3 = L7_2
    L1_3 = L1_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.play
    L3_3 = 1
    L4_3 = L0_3
    L1_3(L2_3, L3_3, L4_3)
  end

  function L24_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L3_3 = 0
    if not A2_3 then
      A2_3 = 0
    end
    L4_3 = L7_2
    L4_3 = L4_3.orientationController
    L5_3 = L4_3
    L4_3 = L4_3.isPortrait
    L4_3 = L4_3(L5_3)
    if L4_3 then
      L4_3 = L7_2
      L4_3 = L4_3.currentTimeline
      L4_3 = L4_3.x
      L3_3 = L4_3 - A0_3
    else
      L4_3 = L7_2
      L4_3 = L4_3.orientationController
      L5_3 = L4_3
      L4_3 = L4_3.isLandscapeLeft
      L4_3 = L4_3(L5_3)
      if L4_3 then
        L4_3 = L7_2
        L4_3 = L4_3.currentTimeline
        L4_3 = L4_3.y
        L3_3 = L4_3 - A0_3
      else
        L4_3 = L7_2
        L4_3 = L4_3.orientationController
        L5_3 = L4_3
        L4_3 = L4_3.isLandscapeRight
        L4_3 = L4_3(L5_3)
        if L4_3 then
          L4_3 = WORLD_HEIGHT
          L4_3 = L4_3 - A0_3
          L5_3 = L7_2
          L5_3 = L5_3.currentTimeline
          L5_3 = L5_3.y
          L3_3 = L4_3 - L5_3
        else
          L4_3 = WORLD_WIDTH
          L4_3 = L4_3 - A0_3
          L5_3 = L7_2
          L5_3 = L5_3.currentTimeline
          L5_3 = L5_3.x
          L3_3 = L4_3 - L5_3
        end
      end
    end

    function L4_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
      L2_4 = 0
      L3_4 = L3_3
      if 0 < L3_4 then
        L3_4 = L7_2
        L3_4 = L3_4.orientationController
        L4_4 = L3_4
        L3_4 = L3_4.getMoveLeftDirection
        L3_4 = L3_4(L4_4)
        L1_4 = L3_4
        L3_4 = WALK_STEP_SIZE
        L2_4 = -L3_4
      else
        L3_4 = L7_2
        L3_4 = L3_4.orientationController
        L4_4 = L3_4
        L3_4 = L3_4.getMoveRightDirection
        L3_4 = L3_4(L4_4)
        L1_4 = L3_4
        L2_4 = WALK_STEP_SIZE
      end
      L3_4 = L1_4.x
      L4_4 = WALK_STEP_SIZE
      L3_4 = L3_4 * L4_4
      L4_4 = L1_4.y
      L5_4 = WALK_STEP_SIZE
      L4_4 = L4_4 * L5_4
      L6_4 = A0_4
      L5_4 = A0_4.translate
      L7_4 = L3_4
      L8_4 = L4_4
      L5_4(L6_4, L7_4, L8_4)
      L5_4 = L3_3
      L5_4 = L5_4 + L2_4
      L3_3 = L5_4
      L5_4 = L7_1
      L6_4 = L3_3
      L5_4 = L5_4(L6_4)
      L6_4 = WALK_STEP_SIZE
      if L5_4 < L6_4 then
        L6_4 = A0_4
        L5_4 = A0_4.stop
        L5_4(L6_4)
        L5_4 = A1_3
        L5_4()
      end
    end

    L5_3 = L7_1
    L6_3 = L3_3
    L5_3 = L5_3(L6_3)
    if A2_3 > L5_3 then
      L5_3 = A1_3
      L5_3()
    else
      L5_3 = L15_2
      L6_3 = WALK_SIDE
      L5_3(L6_3)
      if 0 < L3_3 then
        L5_3 = L7_2
        L5_3 = L5_3.currentTimeline
        L5_3 = L5_3.group
        compat.setProp(L5_3, "xScale", 1)
        L5_3 = L7_2
        L5_3 = L5_3.currentTimeline
        L6_3 = L5_3
        L5_3 = L5_3.play
        L7_3 = 0
        L8_3 = nil
        L9_3 = L4_3
        L5_3(L6_3, L7_3, L8_3, L9_3)
      else
        L5_3 = L7_2
        L5_3 = L5_3.currentTimeline
        L5_3 = L5_3.group
        compat.setProp(L5_3, "xScale", -1)
        L5_3 = L7_2
        L5_3 = L5_3.currentTimeline
        L6_3 = L5_3
        L5_3 = L5_3.play
        L7_3 = 0
        L8_3 = nil
        L9_3 = L4_3
        L5_3(L6_3, L7_3, L8_3, L9_3)
      end
    end
  end

  function L25_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L2_3 = 30
    L3_3 = L26_2
    L4_3 = A0_3
    L3_3, L4_3 = L3_3(L4_3)
    L5_3 = L7_2
    L5_3 = L5_3.isPlayReactionAnim
    L5_3 = not L5_3

    function L6_3()
      local L0_4, L1_4
      L0_4 = L5_3
      if L0_4 then
        L0_4 = L7_2
        L0_4.isPlayReactionAnim = false
      end
      L0_4 = A1_3
      L0_4()
    end

    if not L3_3 then
      L7_3 = L8_2
      L8_3 = "walk back to left border"
      L7_3(L8_3)
      L7_3 = L7_2
      L7_3.isPlayReactionAnim = true
      L7_3 = L24_2
      L8_3 = 0
      L9_3 = L6_3
      L10_3 = L2_3
      L7_3(L8_3, L9_3, L10_3)
    elseif not L4_3 then
      L7_3 = L8_2
      L8_3 = "walk back to right border"
      L7_3(L8_3)
      L7_3 = L7_2
      L7_3.isPlayReactionAnim = true
      L7_3 = L24_2
      L8_3 = WORLD_WIDTH
      L9_3 = A0_3.width
      L8_3 = L8_3 - L9_3
      L9_3 = L6_3
      L10_3 = L2_3
      L7_3(L8_3, L9_3, L10_3)
    else
      L7_3 = L8_2
      L8_3 = "no need to walk back"
      L7_3(L8_3)
      L7_3 = A1_3
      L7_3()
    end
  end

  function L26_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = L7_2
    L1_3 = L1_3.orientationController
    L1_3 = L1_3.current
    L1_3 = L1_3.bounds
    L2_3 = L1_3.hAxis
    L2_3 = A0_3[L2_3]
    L3_3 = true
    L4_3 = true
    L5_3 = L8_2
    L6_3 = string
    L6_3 = L6_3.format
    L7_3 = "check is in visible area: axisVal=%1.2f, leftBound=%d, rightBound=%d"
    L8_3 = L2_3
    L9_3 = L1_3.left
    L10_3 = L1_3.right
    L6_3, L7_3, L8_3, L9_3, L10_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    L5_3 = L1_3.left
    if L5_3 == 0 then
      L5_3 = L1_3.left
      if L2_3 < L5_3 then
        L3_3 = false
      else
        L5_3 = L1_3.right
        L6_3 = A0_3.width
        L5_3 = L5_3 - L6_3
        if L2_3 > L5_3 then
          L4_3 = false
        end
      end
    else
      L5_3 = L1_3.left
      if L2_3 > L5_3 then
        L3_3 = false
      else
        L5_3 = L1_3.right
        L6_3 = A0_3.width
        L5_3 = L5_3 + L6_3
        if L2_3 < L5_3 then
          L4_3 = false
        end
      end
    end
    L5_3 = L3_3
    L6_3 = L4_3
    return L5_3, L6_3
  end

  function L60_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L8_2
    L2_3 = "tumble 90 degree"
    L1_3(L2_3)
    L1_3 = L9_2
    L2_3 = TUMBLE_90_DEGREE_FRONT
    L1_3 = L1_3(L2_3)
    if A0_3 then
      L2_3 = L1_3.group
      compat.setProp(L2_3, "xScale", -1)
    else
      L2_3 = L1_3.group
      compat.setProp(L2_3, "xScale", 1)
    end
    L2_3 = L15_2
    L3_3 = TUMBLE_90_DEGREE_FRONT
    L4_3 = true
    L5_3 = true
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = L7_2
    L2_3 = L2_3.currentTimeline
    L3_3 = L2_3
    L2_3 = L2_3.play
    L4_3 = 1
    L5_3 = L30_2
    L2_3(L3_3, L4_3, L5_3)
  end

  function L62_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.stop
    L0_3(L1_3)
    L0_3 = L8_2
    L1_3 = "leave after fall on screen"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = FALL_ON_SCREEN_END_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L32_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L63_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "fall on screen loop"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = FALL_ON_SCREEN_LOOP_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 0
    L3_3 = L62_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L7_2
    L0_3.isFallOnScreenMoving = false
  end

  function L61_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "fall on screen"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = FALL_ON_SCREEN_START_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L63_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L66_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3

    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = FALL_ON_SCREEN_STILL_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 10
      L4_4 = L63_2
      L1_4(L2_4, L3_4, L4_4)
    end

    function L2_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L2_4 = A0_4
      L1_4 = A0_4.translate
      L3_4 = A0_3
      L3_4 = L3_4.x
      L4_4 = FALL_ON_SCREEN_STEP_SIZE
      L3_4 = L3_4 * L4_4
      L4_4 = A0_3
      L4_4 = L4_4.y
      L5_4 = FALL_ON_SCREEN_STEP_SIZE
      L4_4 = L4_4 * L5_4
      L1_4(L2_4, L3_4, L4_4)
    end

    L3_3 = L7_2
    L3_3 = L3_3.currentTimeline
    L4_3 = L7_2
    L4_3 = L4_3.timelines
    L5_3 = FALL_ON_SCREEN_LOOP_FRONT
    L4_3 = L4_3[L5_3]
    if L3_3 == L4_3 then
      L3_3 = L7_2
      L3_3.isFallOnScreenMoving = true
      L3_3 = L15_2
      L4_3 = FALL_ON_SCREEN_MOVE_FRONT
      L3_3(L4_3)
      L3_3 = L7_2
      L3_3 = L3_3.currentTimeline
      L4_3 = L3_3
      L3_3 = L3_3.play
      L5_3 = 2
      L6_3 = L1_3
      L7_3 = L2_3
      L3_3(L4_3, L5_3, L6_3, L7_3)
    end
  end

  function L64_2()
    local L0_3, L1_3, L2_3
    L0_3 = L16_2
    L1_3 = 0
    L2_3 = 0
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 then
      L0_3 = L8_2
      L1_3 = "fall on screen move left"
      L0_3(L1_3)
      L0_3 = L66_2
      L1_3 = L7_2
      L1_3 = L1_3.orientationController
      L2_3 = L1_3
      L1_3 = L1_3.getMoveLeftDirection
      L1_3, L2_3 = L1_3(L2_3)
      L0_3(L1_3, L2_3)
    end
  end

  function L65_2()
    local L0_3, L1_3, L2_3
    L0_3 = L17_2
    L1_3 = 0
    L2_3 = 0
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 then
      L0_3 = L8_2
      L1_3 = "fall on screen move right"
      L0_3(L1_3)
      L0_3 = L66_2
      L1_3 = L7_2
      L1_3 = L1_3.orientationController
      L2_3 = L1_3
      L1_3 = L1_3.getMoveRightDirection
      L1_3, L2_3 = L1_3(L2_3)
      L0_3(L1_3, L2_3)
    end
  end

  function L68_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L0_4 = 22
      L1_4 = L15_2
      L2_4 = BREATHE_FRONT
      L3_4 = false
      L4_4 = true
      L1_4(L2_4, L3_4, L4_4)
      L1_4 = L7_2
      L1_4 = L1_4.orientationController
      L2_4 = L1_4
      L1_4 = L1_4.getMoveRightDirection
      L1_4 = L1_4(L2_4)
      L2_4 = L1_4.x
      L2_4 = L0_4 * L2_4
      L3_4 = L1_4.y
      L3_4 = L0_4 * L3_4
      L4_4 = L7_2
      L4_4 = L4_4.currentTimeline
      L5_4 = L4_4
      L4_4 = L4_4.translate
      L6_4 = L2_4
      L7_4 = L3_4
      L4_4(L5_4, L6_4, L7_4)
      L4_4 = L7_2
      L4_4 = L4_4.audioController
      L5_4 = L4_4
      L4_4 = L4_4.stopLoop
      L6_4 = "birds_chirp"
      L4_4(L5_4, L6_4)
      L4_4 = L32_2
      L4_4()
    end

    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L15_2
      L1_4 = CIRCLE_GET_UP_LOOP_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.audioController
      L1_4 = L0_4
      L0_4 = L0_4.playLoop
      L2_4 = "birds_chirp"
      L3_4 = "circle_end"
      L0_4(L1_4, L2_4, L3_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = L8_1
      L3_4 = 6
      L4_4 = 10
      L2_4 = L2_4(L3_4, L4_4)
      L3_4 = L0_3
      L0_4(L1_4, L2_4, L3_4)
    end

    function L2_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = CIRCLE_GET_UP_PART2_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L1_3
      L0_4(L1_4, L2_4, L3_4)
    end

    L3_3 = L8_2
    L4_3 = "stop circle"
    L3_3(L4_3)
    L3_3 = L7_2
    L3_3 = L3_3.audioController
    L4_3 = L3_3
    L3_3 = L3_3.stopLoop
    L5_3 = "circle_loop"
    L3_3(L4_3, L5_3)
    L3_3 = L7_2
    L3_3 = L3_3.audioController
    L4_3 = L3_3
    L3_3 = L3_3.play
    L5_3 = "circle_fall"
    L6_3 = "circle_end"
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = L15_2
    L4_3 = CIRCLE_GET_UP_PART1_FRONT
    L3_3(L4_3)
    L3_3 = L7_2
    L3_3 = L3_3.currentTimeline
    L4_3 = L3_3
    L3_3 = L3_3.play
    L5_3 = 1
    L6_3 = L2_3
    L3_3(L4_3, L5_3, L6_3)
  end

  function L67_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3

    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4
      L0_4 = 20
      L1_4 = nil
      L2_4 = nil

      function L1_4(A0_5)
        local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5
        L1_5 = L7_2
        L1_5 = L1_5.orientationController
        L2_5 = L1_5
        L1_5 = L1_5.getMoveRightDirection
        L1_5 = L1_5(L2_5)
        L2_5 = L1_5.x
        L3_5 = L0_4
        L2_5 = L2_5 * L3_5
        L3_5 = L1_5.y
        L4_5 = L0_4
        L3_5 = L3_5 * L4_5
        L4_5 = L17_2
        L5_5 = L2_5
        L6_5 = L3_5
        L4_5 = L4_5(L5_5, L6_5)
        if L4_5 then
          L5_5 = A0_5
          L4_5 = A0_5.translate
          L6_5 = L2_5
          L7_5 = L3_5
          L4_5(L5_5, L6_5, L7_5)
        else
          L4_5 = L7_2
          L4_5 = L4_5.currentTimeline
          L5_5 = L4_5
          L4_5 = L4_5.stop
          L4_5(L5_5)
          L4_5 = L7_2
          L4_5 = L4_5.currentTimeline
          L5_5 = L4_5
          L4_5 = L4_5.play
          L6_5 = 0
          L7_5 = L32_2
          L8_5 = L2_4
          L9_5 = true
          L4_5(L5_5, L6_5, L7_5, L8_5, L9_5)
        end
      end

      function L2_4(A0_5)
        local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5
        L1_5 = L7_2
        L1_5 = L1_5.orientationController
        L2_5 = L1_5
        L1_5 = L1_5.getMoveLeftDirection
        L1_5 = L1_5(L2_5)
        L2_5 = L1_5.x
        L3_5 = L0_4
        L2_5 = L2_5 * L3_5
        L3_5 = L1_5.y
        L4_5 = L0_4
        L3_5 = L3_5 * L4_5
        L4_5 = L16_2
        L5_5 = L2_5
        L6_5 = L3_5
        L4_5 = L4_5(L5_5, L6_5)
        if L4_5 then
          L5_5 = A0_5
          L4_5 = A0_5.translate
          L6_5 = L2_5
          L7_5 = L3_5
          L4_5(L5_5, L6_5, L7_5)
        else
          L4_5 = L7_2
          L4_5 = L4_5.currentTimeline
          L5_5 = L4_5
          L4_5 = L4_5.stop
          L4_5(L5_5)
          L4_5 = L7_2
          L4_5 = L4_5.currentTimeline
          L5_5 = L4_5
          L4_5 = L4_5.play
          L6_5 = 0
          L7_5 = L32_2
          L8_5 = L1_4
          L9_5 = false
          L4_5(L5_5, L6_5, L7_5, L8_5, L9_5)
        end
      end

      L3_4 = L1_4
      L4_4 = false
      L5_4 = A0_3
      if not L5_4 then
        L3_4 = L2_4
        L4_4 = true
      end
      L5_4 = L15_2
      L6_4 = CIRCLE_LOOP_SIDE
      L5_4(L6_4)
      L5_4 = L7_2
      L5_4 = L5_4.audioController
      L6_4 = L5_4
      L5_4 = L5_4.playLoop
      L7_4 = "circle_loop"
      L8_4 = "circle"
      L5_4(L6_4, L7_4, L8_4)
      L5_4 = L7_2
      L5_4 = L5_4.currentTimeline
      L6_4 = L5_4
      L5_4 = L5_4.play
      L7_4 = 0
      L8_4 = L32_2
      L9_4 = L3_4
      L10_4 = L4_4
      L5_4(L6_4, L7_4, L8_4, L9_4, L10_4)
    end

    L2_3 = L8_2
    L3_3 = "circle"
    L2_3(L3_3)
    L2_3 = L15_2
    L3_3 = CIRCLE_START_FRONT
    L2_3(L3_3)
    L2_3 = L7_2
    L2_3 = L2_3.currentTimeline
    L3_3 = L2_3
    L2_3 = L2_3.play
    L4_3 = 1
    L5_3 = L1_3
    L2_3(L3_3, L4_3, L5_3)
  end

  function L18_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L8_2
      L1_4 = "put away newspaper"
      L0_4(L1_4)
      L0_4 = L15_2
      L1_4 = PUT_AWAY_NEWSPAPER_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L32_2
      L0_4(L1_4, L2_4, L3_4)
    end

    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L8_2
      L1_4 = "read newspaper"
      L0_4(L1_4)
      L0_4 = L15_2
      L1_4 = READ_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = L8_1
      L3_4 = 3
      L4_4 = 5
      L2_4 = L2_4(L3_4, L4_4)
      L3_4 = L0_3
      L0_4(L1_4, L2_4, L3_4)
    end

    L2_3 = L8_2
    L3_3 = "take newspaper"
    L2_3(L3_3)
    L2_3 = L15_2
    L3_3 = TAKE_NEWSPAPER_FRONT
    L2_3(L3_3)
    L2_3 = L7_2
    L2_3 = L2_3.currentTimeline
    L3_3 = L2_3
    L2_3 = L2_3.play
    L4_3 = 1
    L5_3 = L1_3
    L2_3(L3_3, L4_3, L5_3)
  end

  function L19_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L8_2
      L1_4 = "blow bubble"
      L0_4(L1_4)
      L0_4 = L15_2
      L1_4 = BLOW_BUBBLE_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L32_2
      L0_4(L1_4, L2_4, L3_4)
    end

    function L1_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L8_2
      L1_4 = "chew gum"
      L0_4(L1_4)
      L0_4 = L15_2
      L1_4 = CHEW_GUM_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 8
      L3_4 = L0_3
      L0_4(L1_4, L2_4, L3_4)
    end

    function L2_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L8_2
      L1_4 = "starts chewing gum"
      L0_4(L1_4)
      L0_4 = L15_2
      L1_4 = START_CHEW_GUM_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L1_3
      L0_4(L1_4, L2_4, L3_4)
    end

    L3_3 = L8_2
    L4_3 = "take chewing gum"
    L3_3(L4_3)
    L3_3 = L15_2
    L4_3 = TAKE_GUM_FRONT
    L3_3(L4_3)
    L3_3 = L7_2
    L3_3 = L3_3.currentTimeline
    L4_3 = L3_3
    L3_3 = L3_3.play
    L5_3 = 1
    L6_3 = L2_3
    L3_3(L4_3, L5_3, L6_3)
  end

  function L20_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "play knock"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = KNOCK_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L32_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L76_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = L8_2
    L1_3 = "moon dance"
    L0_3(L1_3)
    L0_3 = 3
    L1_3 = -42
    L2_3 = L9_2
    L3_3 = WALK_SIDE
    L2_3(L3_3)
    L2_3 = L7_2
    L2_3 = L2_3.timelines
    L3_3 = WALK_SIDE
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.group
    L2_3 = L2_3.xScale
    L3_3 = L2_3 == -1
    local L4_3 = nil

    function L5_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = L15_2
      L2_4 = MOON_WALKING_TURN_FRONT
      L3_4 = false
      L4_4 = true
      L1_4(L2_4, L3_4, L4_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.translate
      L3_4 = L4_3
      L3_4 = L3_4.x
      L4_4 = L1_3
      L3_4 = L3_4 * L4_4
      L4_4 = L4_3
      L4_4 = L4_4.y
      L5_4 = L1_3
      L4_4 = L4_4 * L5_4
      L1_4(L2_4, L3_4, L4_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L1_4 = L1_4.group
      L2_4 = L2_3
      L2_4 = -L2_4
      compat.setProp(L1_4, "xScale", L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.show
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L32_2
      L1_4(L2_4, L3_4, L4_4)
    end

    function L6_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = L3_3
      if L1_4 then
        L1_4 = L7_2
        L1_4 = L1_4.orientationController
        L2_4 = L1_4
        L1_4 = L1_4.getMoveLeftDirection
        L1_4 = L1_4(L2_4)
        L4_3 = L1_4
      else
        L1_4 = L7_2
        L1_4 = L1_4.orientationController
        L2_4 = L1_4
        L1_4 = L1_4.getMoveRightDirection
        L1_4 = L1_4(L2_4)
        L4_3 = L1_4
      end
      L2_4 = A0_4
      L1_4 = A0_4.translate
      L3_4 = L4_3
      L3_4 = L3_4.x
      L4_4 = L0_3
      L3_4 = L3_4 * L4_4
      L4_4 = L4_3
      L4_4 = L4_4.y
      L5_4 = L0_3
      L4_4 = L4_4 * L5_4
      L1_4(L2_4, L3_4, L4_4)
    end

    L7_3 = L15_2
    L8_3 = MOON_WALKING_FRONT
    L7_3(L8_3)
    L7_3 = L7_2
    L7_3 = L7_3.currentTimeline
    L7_3 = L7_3.group
    L8_3 = -L2_3
    compat.setProp(L7_3, "xScale", L8_3)
    L7_3 = L7_2
    L7_3 = L7_3.currentTimeline
    L8_3 = L7_3
    L7_3 = L7_3.play
    L9_3 = 2
    L10_3 = L5_3
    L11_3 = L6_3
    L7_3(L8_3, L9_3, L10_3, L11_3)
  end

  function L45_2()
    local L0_3, L1_3
    return
  end

  function L46_2()
    local L0_3, L1_3
    return
  end

  function L43_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L8_2
    L1_3 = "fall KO"
    L0_3(L1_3)

    function L0_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = FIGHT_KO_LYING_LOOP_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 20
      L4_4 = L32_2
      L1_4(L2_4, L3_4, L4_4)
    end

    L1_3 = L15_2
    L2_3 = FIGHT_KO_FRONT
    L1_3(L2_3)
    L1_3 = L7_2
    L1_3 = L1_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.play
    L3_3 = 1
    L4_3 = L0_3
    L1_3(L2_3, L3_3, L4_3)
  end

  function L47_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L8_2
    L1_3 = "fight back"
    L0_3(L1_3)

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L15_2
      L1_4 = FIGHT_BACK_LOOP
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = L8_1
      L3_4 = 12
      L4_4 = 18
      L2_4 = L2_4(L3_4, L4_4)
      L3_4 = L32_2
      L0_4(L1_4, L2_4, L3_4)
    end

    L1_3 = L15_2
    L2_3 = FIGHT_BACK_START
    L1_3(L2_3)
    L1_3 = L7_2
    L1_3 = L1_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.play
    L3_3 = 1
    L4_3 = L0_3
    L1_3(L2_3, L3_3, L4_3)
  end

  function L44_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = L7_2
    L1_3 = L1_3.startPunchTimestamp
    if L1_3 == 0 then
      L1_3 = L7_2
      L2_3 = system
      L2_3 = L2_3.getTimer
      L2_3 = L2_3()
      L1_3.startPunchTimestamp = L2_3
    end
    L1_3 = L7_2
    L1_3 = L1_3.lastPunchTimeline
    if not L1_3 then
      L1_3 = L7_2
      L1_3.lastPunchTimeline = A0_3
      L1_3 = L7_2
      L1_3.isSamePunchTimeline = true
    else
      L1_3 = L7_2
      L1_3 = L1_3.lastPunchTimeline
      if L1_3 ~= A0_3 then
        L1_3 = L7_2
        L1_3.isSamePunchTimeline = false
      end
    end
    L1_3 = L7_2
    L2_3 = L7_2
    L2_3 = L2_3.punchCounter
    L2_3 = L2_3 + 1
    L1_3.punchCounter = L2_3
    L1_3 = L7_2
    L1_3 = L1_3.punchCounter
    L2_3 = SHOW_PUNCH_BANNER_AD_MIN_PUNCHES
    if L1_3 > L2_3 then
      L1_3 = os
      L1_3 = L1_3.date
      L2_3 = "*t"
      L1_3 = L1_3(L2_3)
      L2_3 = tonumber
      L3_3 = string
      L3_3 = L3_3.format
      L4_3 = "%04d%02d%02d%02d"
      L5_3 = L1_3.year
      L6_3 = L1_3.month
      L7_3 = L1_3.day
      L8_3 = L1_3.hour
      L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      L3_3 = L7_2
      L3_3 = L3_3.configuration
      L3_3 = L3_3.punch_banner_ad_last_show_date
      L3_3 = L2_3 - L3_3
      L4_3 = SHOW_PUNCH_BANNER_AD_MIN_TIME_DELTA
      if L3_3 >= L4_3 then
        L3_3 = L10_1
        L3_3 = L3_3.showBannerAd
        L4_3 = L10_1
        L4_3 = L4_3.BANNER_PUNCH
        L5_3 = L7_2
        L5_3 = L5_3.orientationController
        L6_3 = nil
        L3_3 = L3_3(L4_3, L5_3, L6_3)
        if L3_3 then
          L3_3 = L7_2
          L3_3 = L3_3.configuration
          L3_3.punch_banner_ad_last_show_date = L2_3
          L3_3 = L7_2
          L3_3 = L3_3.configuration
          L4_3 = L3_3
          L3_3 = L3_3.saveConfiguration
          L3_3(L4_3)
        end
      else
        L3_3 = L10_1
        L3_3 = L3_3.renewRemovalTimerForBannerAdIfShowing
        L4_3 = L10_1
        L4_3 = L4_3.BANNER_PUNCH
        L3_3(L4_3)
      end
    end
  end

  function L109_2()
    local L0_3, L1_3
    L0_3 = L7_2
    L0_3.startPunchTimestamp = 0
    L0_3 = L7_2
    L0_3.lastPunchTimeline = nil
    L0_3 = L7_2
    L0_3.isSamePunchTimeline = false
    L0_3 = L7_2
    L0_3.punchCounter = 0
  end

  resetPunchData = L109_2

  function L41_2()
    local L0_3, L1_3
    L0_3 = L8_2
    L1_3 = "react after punch"
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.isOffended
    if L0_3 then
      L0_3 = resetPunchData
      L0_3()
      L0_3 = L30_2
      L0_3()
    else
      L0_3 = L7_2
      L0_3 = L0_3.startPunchTimestamp
      if 0 < L0_3 then
        L0_3 = system
        L0_3 = L0_3.getTimer
        L0_3 = L0_3()
        L1_3 = L7_2
        L1_3 = L1_3.startPunchTimestamp
        L0_3 = L0_3 - L1_3
        L1_3 = PUNCH_CRY_MIN_TIME_DELTA
        local __and_7 = false
        if L0_3 > L1_3 then
          L1_3 = PUNCH_CRY_MAX_TIME_DELTA
          if L0_3 < L1_3 then
            __and_7 = true
            L1_3 = resetPunchData
            L1_3()
            L1_3 = L33_2
            L1_3()
          end
        end
        if not __and_7 then
          L1_3 = PUNCH_CRY_MAX_TIME_DELTA
          if L0_3 > L1_3 then
            L1_3 = L7_2
            L1_3.isPunchShowReaction = true
            L1_3 = L7_2
            L1_3 = L1_3.isSamePunchTimeline
            if L1_3 then
              L1_3 = resetPunchData
              L1_3()
              L1_3 = L47_2
              L1_3()
            else
              L1_3 = resetPunchData
              L1_3()
              L1_3 = L43_2
              L1_3()
            end
          else
            L1_3 = resetPunchData
            L1_3()
            L1_3 = L7_2
            L1_3.isPunchShowReaction = false
            L1_3 = L32_2
            L1_3()
          end
        end
      else
        L0_3 = resetPunchData
        L0_3()
        L0_3 = L7_2
        L0_3.isPunchShowReaction = false
        L0_3 = L32_2
        L0_3()
      end
    end
  end

  function L38_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L8_2
    L1_3 = "punch face"
    L0_3(L1_3)
    L0_3 = L9_2
    L1_3 = PUNCH_FACE_FRONT
    L0_3 = L0_3(L1_3)
    L1_3 = L7_2
    L1_3 = L1_3.lastPunchFace
    if L1_3 == 2 then
      L1_3 = L0_3.group
      compat.setProp(L1_3, "xScale", -1)
      L1_3 = L7_2
      L1_3.lastPunchFace = 1
    else
      L1_3 = L0_3.group
      compat.setProp(L1_3, "xScale", 1)
      L1_3 = L7_2
      L1_3.lastPunchFace = 2
    end
    L1_3 = L44_2
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = L15_2
    L2_3 = PUNCH_FACE_FRONT
    L1_3(L2_3)
    L1_3 = L7_2
    L1_3 = L1_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.play
    L3_3 = 1
    L4_3 = L41_2
    L1_3(L2_3, L3_3, L4_3)
  end

  function L39_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L8_2
    L1_3 = "punch stomach"
    L0_3(L1_3)
    L0_3 = L9_2
    L1_3 = PUNCH_STOMACH_FRONT
    L0_3 = L0_3(L1_3)
    L1_3 = L44_2
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = L15_2
    L2_3 = PUNCH_STOMACH_FRONT
    L1_3(L2_3)
    L1_3 = L7_2
    L1_3 = L1_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.play
    L3_3 = 1
    L4_3 = L41_2
    L1_3(L2_3, L3_3, L4_3)
  end

  function L40_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = 1
    if A0_3 == false then
      L1_3 = -1
    end

    function L2_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L8_2
      L1_4 = "kick foot"
      L0_4(L1_4)
      L0_4 = L15_2
      L1_4 = FOOT_HURT_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L0_4 = L0_4.group
      L1_4 = L1_3
      compat.setProp(L0_4, "xScale", L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 2
      L3_4 = L41_2
      L0_4(L1_4, L2_4, L3_4)
    end

    L3_3 = L8_2
    L4_3 = "kick foot"
    L3_3(L4_3)
    L3_3 = L9_2
    L4_3 = KICK_FOOT_FRONT
    L3_3 = L3_3(L4_3)
    L4_3 = L44_2
    L5_3 = L3_3
    L4_3(L5_3)
    L4_3 = L15_2
    L5_3 = KICK_FOOT_FRONT
    L4_3(L5_3)
    L4_3 = L7_2
    L4_3 = L4_3.currentTimeline
    L4_3 = L4_3.group
    compat.setProp(L4_3, "xScale", L1_3)
    L4_3 = L7_2
    L4_3 = L4_3.currentTimeline
    L5_3 = L4_3
    L4_3 = L4_3.play
    L6_3 = 1
    L7_3 = L2_3
    L4_3(L5_3, L6_3, L7_3)
  end

  function L42_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = system
    L0_3 = L0_3.getTimer
    L0_3 = L0_3()
    L1_3 = STROKE_INCREASE_MULTIPLIER

    function L2_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = system
      L1_4 = L1_4.getTimer
      L1_4 = L1_4()
      L2_4 = L0_3
      L2_4 = L1_4 - L2_4
      L3_4 = STROKE_UPDATE_HAPPINESS_INTERVAL
      if L2_4 > L3_4 then
        L2_4 = L10_2
        L3_4 = STROKE_INCREASE_HAPPINESS_AMOUNT
        L4_4 = L1_3
        L3_4 = L3_4 + L4_4
        L2_4(L3_4)
        L0_3 = L1_4
        L2_4 = L1_3
        L3_4 = STROKE_INCREASE_MULTIPLIER
        L2_4 = L2_4 * L3_4
        L1_3 = L2_4
      end
    end

    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L8_2
      L1_4 = "stroke belly"
      L0_4(L1_4)
      L0_4 = L15_2
      L1_4 = SCRATCH_BELLY_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 0
      L3_4 = L32_2
      L4_4 = L2_3
      L0_4(L1_4, L2_4, L3_4, L4_4)
    end

    L4_3 = L8_2
    L5_3 = "start stroke belly"
    L4_3(L5_3)
    L4_3 = L15_2
    L5_3 = TRANSITION_SCRATCH_BELLY_FRONT
    L4_3(L5_3)
    L4_3 = L7_2
    L4_3 = L4_3.currentTimeline
    L5_3 = L4_3
    L4_3 = L4_3.play
    L6_3 = 1
    L7_3 = L3_3
    L4_3(L5_3, L6_3, L7_3)
  end

  function L51_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "stand up after press flat"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = PRESS_FLAT_STAND_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L32_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L50_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L8_2
    L2_3 = "start press flat"
    L1_3(L2_3)
    L1_3 = L15_2
    L2_3 = PRESS_FLAT_START_FRONT
    L1_3(L2_3)
    if A0_3 then
      L1_3 = L7_2
      L1_3 = L1_3.currentTimeline
      L2_3 = L1_3
      L1_3 = L1_3.play
      L3_3 = 1
      L4_3 = L32_2
      L5_3 = nil
      L6_3 = true
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    else
      L1_3 = L7_2
      L1_3 = L1_3.currentTimeline
      L2_3 = L1_3
      L1_3 = L1_3.play
      L3_3 = 1
      L1_3(L2_3, L3_3)
    end
  end

  function L49_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L8_2
    L1_3 = "press flat"
    L0_3(L1_3)

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = PRESS_FLAT_LOOP_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 0
      L3_4 = L51_2
      L0_4(L1_4, L2_4, L3_4)
    end

    L1_3 = L15_2
    L2_3 = PRESS_FLAT_FRONT
    L1_3(L2_3)
    L1_3 = L7_2
    L1_3 = L1_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.play
    L3_3 = 1
    L4_3 = L0_3
    L1_3(L2_3, L3_3, L4_3)
  end

  function L53_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L8_2
    L2_3 = "start stretch"
    L1_3(L2_3)
    L1_3 = L15_2
    L2_3 = STRETCH_START_FRONT
    L1_3(L2_3)
    if A0_3 then
      L1_3 = L7_2
      L1_3 = L1_3.currentTimeline
      L2_3 = L1_3
      L1_3 = L1_3.play
      L3_3 = 1
      L4_3 = L32_2
      L5_3 = nil
      L6_3 = true
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    else
      L1_3 = L7_2
      L1_3 = L1_3.currentTimeline
      L2_3 = L1_3
      L1_3 = L1_3.play
      L3_3 = 1
      L1_3(L2_3, L3_3)
    end
  end

  function L54_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "stand up after stretch"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = STRETCH_STAND_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L32_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L55_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "stretch loop"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = STRETCH_LOOP_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 0
    L3_3 = L54_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L52_2()
    local L0_3, L1_3, L2_3
    L0_3 = L8_2
    L1_3 = "stretch"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = STRETCH_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L0_3(L1_3, L2_3)
  end

  function L57_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "end make thin"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = MAKE_THIN_END_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L32_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L56_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L8_2
    L1_3 = "make thin"
    L0_3(L1_3)

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = MAKE_THIN_LOOP_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 0
      L3_4 = L57_2
      L0_4(L1_4, L2_4, L3_4)
    end

    L1_3 = L15_2
    L2_3 = MAKE_THIN_START_FRONT
    L1_3(L2_3)
    L1_3 = L7_2
    L1_3 = L1_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.play
    L3_3 = 1
    L4_3 = L0_3
    L1_3(L2_3, L3_3, L4_3)
  end

  function L59_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "end make fat"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = MAKE_FAT_END_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3.isMakeFat = false
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L32_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L58_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = L8_2
    L1_3 = "make thin"
    L0_3(L1_3)
    L0_3 = 1.1
    L1_3 = 1.4
    L2_3 = -0.6
    L3_3 = 12
    L4_3 = 1
    L5_3 = 1
    L6_3 = 1
    L7_3 = 0

    function L8_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L1_4 = L7_2
      L1_4 = L1_4.isDisableMakeFatRaising
      if L1_4 then
        L1_4 = 1
        L5_3 = L1_4
        return
      end
      L1_4 = L7_2
      L1_4 = L1_4.orientationController
      L1_4 = L1_4.current
      L1_4 = L1_4.x
      L2_4 = L7_2
      L2_4 = L2_4.orientationController
      L2_4 = L2_4.current
      L2_4 = L2_4.y
      L3_4 = L7_2
      L3_4 = L3_4.orientationController
      L3_4 = L3_4.current
      L3_4 = L3_4.t
      if L3_4 == "landscape" then
        L1_4 = -L1_4
        L2_4 = -L2_4
      end
      L3_4 = L5_3
      L1_4 = L3_4 * L1_4
      L3_4 = L5_3
      L2_4 = L3_4 * L2_4
      L3_4 = L5_3
      if 0 < L3_4 then
        L3_4 = L0_3
        L4_4 = L5_3
        L3_4 = L3_4 * L4_4
        L5_3 = L3_4
      else
        L3_4 = L5_3
        L4_4 = L1_3
        L3_4 = L3_4 / L4_4
        L5_3 = L3_4
      end
      L3_4 = L5_3
      if 0 < L3_4 then
        L3_4 = L7_2
        L3_4 = L3_4.orientationController
        L4_4 = L3_4
        L3_4 = L3_4.isPortrait
        L3_4 = L3_4(L4_4)
        if L3_4 then
          L3_4 = A0_4.y
          if L3_4 < 0 then
            L3_4 = L5_3
            L3_4 = -L3_4
            L5_3 = L3_4
          end
        else
          L3_4 = L7_2
          L3_4 = L3_4.orientationController
          L4_4 = L3_4
          L3_4 = L3_4.isLandscapeLeft
          L3_4 = L3_4(L4_4)
          if L3_4 then
            L3_4 = A0_4.x
            L4_4 = WORLD_WIDTH
            if L3_4 > L4_4 then
              L3_4 = L5_3
              L3_4 = -L3_4
              L5_3 = L3_4
            end
          else
            L3_4 = L7_2
            L3_4 = L3_4.orientationController
            L4_4 = L3_4
            L3_4 = L3_4.isLandscapeRight
            L3_4 = L3_4(L4_4)
            if L3_4 then
              L3_4 = A0_4.x
              if L3_4 < 0 then
                L3_4 = L5_3
                L3_4 = -L3_4
                L5_3 = L3_4
              end
            else
              L3_4 = A0_4.y
              L4_4 = WORLD_HEIGHT
              if L3_4 > L4_4 then
                L3_4 = L5_3
                L3_4 = -L3_4
                L5_3 = L3_4
              end
            end
          end
        end
      else
        L3_4 = L5_3
        L4_4 = L2_3
        if L3_4 > L4_4 then
          L3_4 = L5_3
          L3_4 = -L3_4
          L5_3 = L3_4
        end
      end
      L3_4 = A0_4.group
      L4_4 = L3_4
      L3_4 = L3_4.rotate
      L5_4 = L6_3
      L6_4 = L4_3
      L5_4 = L5_4 * L6_4
      L3_4(L4_4, L5_4)
      L3_4 = L7_3
      L4_4 = L6_3
      L5_4 = L4_3
      L4_4 = L4_4 * L5_4
      L3_4 = L3_4 + L4_4
      L7_3 = L3_4
      L3_4 = L7_1
      L4_4 = L7_3
      L3_4 = L3_4(L4_4)
      L4_4 = L3_3
      if L3_4 >= L4_4 then
        L3_4 = L6_3
        L3_4 = -L3_4
        L6_3 = L3_4
      end
      L4_4 = A0_4
      L3_4 = A0_4.translate
      L5_4 = L1_4
      L6_4 = L2_4
      L3_4(L4_4, L5_4, L6_4)
    end

    function L9_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L15_2
      L1_4 = MAKE_FAT_LOOP_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L0_4 = L0_4.group
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L1_4 = L1_4.normRotation
      compat.setProp(L0_4, "rotation", L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 0
      L3_4 = L59_2
      L4_4 = L8_3
      L0_4(L1_4, L2_4, L3_4, L4_4)
    end

    L10_3 = L15_2
    L11_3 = MAKE_FAT_START_FRONT
    L10_3(L11_3)
    L10_3 = L7_2
    L10_3.isMakeFat = true
    L10_3 = L7_2
    L10_3.isDisableMakeFatRaising = false
    L10_3 = L7_2
    L10_3 = L10_3.currentTimeline
    L11_3 = L10_3
    L10_3 = L10_3.play
    L12_3 = 1
    L13_3 = L9_3
    L10_3(L11_3, L12_3, L13_3)
  end

  function L32_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L7_2
    L0_3 = L0_3.isAboutToOffended
    if L0_3 then
      L0_3 = L30_2
      L0_3()
      return
    else
      L0_3 = L7_2
      L0_3 = L0_3.fingerprintImages
      L0_3 = #L0_3
      L1_3 = FINGERPRINT_CLEAN_THRESHOLD
      if L0_3 >= L1_3 then
        L0_3 = L103_2
        L0_3()
        return
      end
    end
    L0_3 = L8_2
    L1_3 = "breathe"
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.isCritical
    if L0_3 then
      L0_3 = L15_2
      L1_3 = BREATHE_ANNOYED_FRONT
      L0_3(L1_3)
    else
      L0_3 = L7_2
      L0_3 = L0_3.isConcerned
      if L0_3 then
        L0_3 = L15_2
        L1_3 = BREATHE_CONCERNED_FRONT
        L0_3(L1_3)
      else
        L0_3 = L15_2
        L1_3 = BREATHE_FRONT
        L0_3(L1_3)
      end
    end
    L0_3 = L7_2
    L0_3.isPunchShowReaction = false
    L0_3 = L7_2
    L0_3.isPlayReactionAnim = false
    L0_3 = L7_2
    L0_3.isEating = false
    L0_3 = L7_2
    L0_3.isSleeping = false
    L0_3 = L7_2
    L0_3.isShaking = false
    L0_3 = L7_2
    L0_3.isMakeFat = false
    L0_3 = resetPunchData
    L0_3()
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = L8_1
    L3_3 = 3
    L4_3 = 6
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = L14_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L48_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L8_2
      L1_4 = "wake up"
      L0_4(L1_4)
      L0_4 = L15_2
      L1_4 = WAKE_UP_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L32_2
      L0_4(L1_4, L2_4, L3_4)
    end

    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L8_2
      L1_4 = "loop sleeping"
      L0_4(L1_4)
      L0_4 = L15_2
      L1_4 = SLEEPING_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = L8_1
      L3_4 = 4
      L4_4 = 10
      L2_4 = L2_4(L3_4, L4_4)
      L3_4 = L0_3
      L0_4(L1_4, L2_4, L3_4)
    end

    L2_3 = L8_2
    L3_3 = "play fall asleep"
    L2_3(L3_3)
    L2_3 = L15_2
    L3_3 = FALL_ASLEEP_FRONT
    L2_3(L3_3)
    L2_3 = L7_2
    L2_3 = L2_3.currentTimeline
    L3_3 = L2_3
    L2_3 = L2_3.play
    L4_3 = 1
    L5_3 = L1_3
    L2_3(L3_3, L4_3, L5_3)
  end

  function L33_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3

    function L2_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L8_2
      L1_4 = "loop cry"
      L0_4(L1_4)
      L0_4 = L15_2
      L1_4 = L1_3
      L0_4(L1_4)
      L0_4 = L1_3
      L1_4 = CRY_FRONT
      if L0_4 == L1_4 then
        L0_4 = L7_2
        L0_4 = L0_4.audioController
        L1_4 = L0_4
        L0_4 = L0_4.play
        L2_4 = "cry_with_hands"
        L3_4 = "cry"
        L0_4(L1_4, L2_4, L3_4)
        L0_4 = L7_2
        L0_4 = L0_4.currentTimeline
        L1_4 = L0_4
        L0_4 = L0_4.play
        L2_4 = 20
        L3_4 = L32_2
        L0_4(L1_4, L2_4, L3_4)
      else
        L0_4 = L7_2
        L0_4 = L0_4.audioController
        L1_4 = L0_4
        L0_4 = L0_4.play
        L2_4 = "cry_no_hands"
        L3_4 = "cry"
        L0_4(L1_4, L2_4, L3_4)
        L0_4 = L7_2
        L0_4 = L0_4.currentTimeline
        L1_4 = L0_4
        L0_4 = L0_4.play
        L2_4 = 9
        L3_4 = L32_2
        L0_4(L1_4, L2_4, L3_4)
      end
    end

    function L3_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L8_2
      L1_4 = "start cry"
      L0_4(L1_4)
      L0_4 = L15_2
      L1_4 = L0_3
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L2_3
      L0_4(L1_4, L2_4, L3_4)
    end

    L4_3 = L8_2
    L5_3 = "is sad"
    L4_3(L5_3)
    L4_3 = L8_1
    L5_3 = 1
    L6_3 = 2
    L4_3 = L4_3(L5_3, L6_3)
    if L4_3 == 1 then
      L0_3 = START_CRY_FRONT
      L1_3 = CRY_FRONT
    else
      L0_3 = START_WHINE_FRONT
      L1_3 = WHINE_FRONT
    end
    L4_3 = L15_2
    L5_3 = SAD_FRONT
    L4_3(L5_3)
    L4_3 = L7_2
    L4_3 = L4_3.currentTimeline
    L5_3 = L4_3
    L4_3 = L4_3.play
    L6_3 = L8_1
    L7_3 = 2
    L8_3 = 3
    L6_3 = L6_3(L7_3, L8_3)
    L7_3 = L3_3
    L4_3(L5_3, L6_3, L7_3)
  end

  function L34_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3

    function L0_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L8_2
      L2_4 = "put kendama back"
      L1_4(L2_4)
      L1_4 = L15_2
      L2_4 = PUT_KENDAMA_BACK_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L1_4 = L1_4.group
      L2_4 = A0_4.group
      L2_4 = L2_4.xScale
      compat.setProp(L1_4, "xScale", L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L32_2
      L1_4(L2_4, L3_4, L4_4)
    end

    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = L8_2
      L2_4 = "win or lose kendama"
      L1_4(L2_4)
      L1_4 = L9_1
      L2_4 = os
      L2_4 = L2_4.time
      L2_4, L3_4, L4_4, L5_4 = L2_4()
      L1_4(L2_4, L3_4, L4_4, L5_4)
      L1_4 = L8_1
      L2_4 = 1
      L3_4 = 2
      L1_4 = L1_4(L2_4, L3_4)
      if L1_4 == 1 then
        L2_4 = L15_2
        L3_4 = KENDAMA_WIN_FRONT
        L2_4(L3_4)
      else
        L2_4 = L15_2
        L3_4 = KENDAMA_LOSE_FRONT
        L2_4(L3_4)
      end
      L2_4 = L7_2
      L2_4 = L2_4.currentTimeline
      L2_4 = L2_4.group
      L3_4 = A0_4.group
      L3_4 = L3_4.xScale
      compat.setProp(L2_4, "xScale", L3_4)
      L2_4 = L7_2
      L2_4 = L2_4.currentTimeline
      L3_4 = L2_4
      L2_4 = L2_4.play
      L4_4 = 1
      L5_4 = L0_3
      L2_4(L3_4, L4_4, L5_4)
    end

    function L2_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = L8_2
      L2_4 = "play kendama"
      L1_4(L2_4)
      L1_4 = L15_2
      L2_4 = KENDAMA_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L1_4 = L1_4.group
      L2_4 = A0_4.group
      L2_4 = L2_4.xScale
      compat.setProp(L1_4, "xScale", L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = L8_1
      L4_4 = 6
      L5_4 = 10
      L3_4 = L3_4(L4_4, L5_4)
      L4_4 = L1_3
      L1_4(L2_4, L3_4, L4_4)
    end

    L3_3 = L8_2
    L4_3 = "take kendama"
    L3_3(L4_3)
    L3_3 = L7_2
    L3_3.isPlayingKendama = true
    L3_3 = L15_2
    L4_3 = TAKE_KENDAMA_FRONT
    L3_3(L4_3)
    L3_3 = L7_2
    L3_3 = L3_3.orientationController
    L4_3 = L3_3
    L3_3 = L3_3.getMoveLeftDirection
    L3_3 = L3_3(L4_3)
    L4_3 = L3_3.x
    L4_3 = L4_3 * 90
    L5_3 = L3_3.y
    L5_3 = L5_3 * 90
    L6_3 = L16_2
    L7_3 = L4_3
    L8_3 = L5_3
    L6_3 = L6_3(L7_3, L8_3)
    if not L6_3 then
      L6_3 = L7_2
      L6_3 = L6_3.currentTimeline
      L6_3 = L6_3.group
      compat.setProp(L6_3, "xScale", -1)
    else
      L6_3 = L7_2
      L6_3 = L6_3.currentTimeline
      L6_3 = L6_3.group
      compat.setProp(L6_3, "xScale", 1)
    end
    L6_3 = L7_2
    L6_3 = L6_3.currentTimeline
    L7_3 = L6_3
    L6_3 = L6_3.play
    L8_3 = 1
    L9_3 = L2_3
    L6_3(L7_3, L8_3, L9_3)
  end

  function L35_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = 3
    L1_3 = 5
    L2_3 = 1
    local L3_3 = L0_3
    L4_3 = 10

    function L5_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L1_4 = L7_2
      L1_4 = L1_4.orientationController
      L2_4 = L1_4
      L1_4 = L1_4.getMoveLeftDirection
      L1_4 = L1_4(L2_4)
      L2_4 = L1_4.x
      L3_4 = L3_3
      L2_4 = L2_4 * L3_4
      L3_4 = L1_4.y
      L4_4 = L3_3
      L3_4 = L3_4 * L4_4
      L5_4 = A0_4
      L4_4 = A0_4.translate
      L6_4 = L2_4
      L7_4 = L3_4
      L4_4(L5_4, L6_4, L7_4)
      L4_4 = L2_3
      L5_4 = L4_3
      if L4_4 <= L5_4 then
        L4_4 = L2_3
        L4_4 = L4_4 + 1
        L2_3 = L4_4
        L4_4 = L2_3
        L5_4 = L1_3
        if L4_4 == L5_4 then
          L4_4 = L3_3
          L4_4 = -L4_4
          L3_3 = L4_4
        else
          L4_4 = L2_3
          L5_4 = L4_3
          if L4_4 > L5_4 then
            L4_4 = L3_3
            L4_4 = -L4_4
            L3_3 = L4_4
            L4_4 = 1
            L2_3 = L4_4
          end
        end
      end
    end

    L6_3 = nil

    function L7_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L15_2
      L1_4 = DIZZY_FRONT
      L0_4(L1_4)
      L0_4 = L0_3
      L3_3 = L0_4
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L0_4 = L0_4.group
      compat.setProp(L0_4, "xScale", 1)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L6_3
      L4_4 = L5_3
      L0_4(L1_4, L2_4, L3_4, L4_4)
    end

    function L6_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L15_2
      L1_4 = DIZZY_FRONT
      L0_4(L1_4)
      L0_4 = L0_3
      L0_4 = -L0_4
      L3_3 = L0_4
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L0_4 = L0_4.group
      compat.setProp(L0_4, "xScale", -1)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L7_3
      L4_4 = L5_3
      L0_4(L1_4, L2_4, L3_4, L4_4)
    end

    L8_3 = L7_3
    L8_3()
  end

  function L36_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L8_2
    L1_3 = "play feel dizzy"
    L0_3(L1_3)

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = DIZZY3_END_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.isOffended
      if not L0_4 then
        L0_4 = L7_2
        L0_4 = L0_4.currentTimeline
        L1_4 = L0_4
        L0_4 = L0_4.play
        L2_4 = 1
        L3_4 = L32_2
        L0_4(L1_4, L2_4, L3_4)
      else
        L0_4 = L7_2
        L0_4 = L0_4.currentTimeline
        L1_4 = L0_4
        L0_4 = L0_4.play
        L2_4 = 1
        L3_4 = L80_2
        L0_4(L1_4, L2_4, L3_4)
      end
    end

    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L15_2
      L1_4 = DIZZY3_THROW_UP_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = L8_1
      L3_4 = 2
      L4_4 = 3
      L2_4 = L2_4(L3_4, L4_4)
      L3_4 = L0_3
      L0_4(L1_4, L2_4, L3_4)
    end

    function L2_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = DIZZY3_START_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L1_3
      L0_4(L1_4, L2_4, L3_4)
    end

    L3_3 = L15_2
    L4_3 = DIZZY3_LOOP_FRONT
    L3_3(L4_3)
    L3_3 = L7_2
    L3_3 = L3_3.currentTimeline
    L4_3 = L3_3
    L3_3 = L3_3.play
    L5_3 = L8_1
    L6_3 = 4
    L7_3 = 6
    L5_3 = L5_3(L6_3, L7_3)
    L6_3 = L2_3
    L3_3(L4_3, L5_3, L6_3)
  end

  function L37_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L8_2
    L1_3 = "play feel nausea"
    L0_3(L1_3)
    L0_3 = 4

    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = DIZZY_BREATH_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.isOffended
      if not L1_4 then
        L1_4 = L7_2
        L1_4 = L1_4.currentTimeline
        L2_4 = L1_4
        L1_4 = L1_4.play
        L3_4 = 1
        L4_4 = L32_2
        L1_4(L2_4, L3_4, L4_4)
      else
        L1_4 = L7_2
        L1_4 = L1_4.currentTimeline
        L2_4 = L1_4
        L1_4 = L1_4.play
        L3_4 = 1
        L4_4 = L80_2
        L1_4(L2_4, L3_4, L4_4)
      end
    end

    function L2_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = TRANSITION_NAUSEA_BREATH
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L1_3
      L1_4(L2_4, L3_4, L4_4)
    end

    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L0_3
      if 0 < L1_4 then
        L1_4 = L0_3
        L1_4 = L1_4 - 1
        L0_3 = L1_4
        L1_4 = A0_4.group
        L2_4 = A0_4.group
        L2_4 = L2_4.xScale
        L2_4 = -L2_4
        compat.setProp(L1_4, "xScale", L2_4)
        L2_4 = A0_4
        L1_4 = A0_4.play
        L3_4 = 1
        L4_4 = L3_3
        L1_4(L2_4, L3_4, L4_4)
      else
        L1_4 = L2_3
        L1_4()
      end
    end

    L4_3 = L15_2
    L5_3 = NAUSEA_FRONT
    L4_3(L5_3)
    L4_3 = L7_2
    L4_3 = L4_3.currentTimeline
    L4_3 = L4_3.group
    compat.setProp(L4_3, "xScale", 1)
    L4_3 = L7_2
    L4_3 = L4_3.currentTimeline
    L5_3 = L4_3
    L4_3 = L4_3.play
    L6_3 = 1
    L7_3 = L3_3
    L4_3(L5_3, L6_3, L7_3)
  end

  function L30_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L8_2
    L1_3 = "complain short"
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.isAboutToOffended
    if L0_3 then
      L0_3 = L15_2
      L1_3 = COMPLAIN_FRONT
      L0_3(L1_3)
      L0_3 = L7_2
      L0_3 = L0_3.currentTimeline
      L1_3 = L0_3
      L0_3 = L0_3.play
      L2_3 = 1
      L3_3 = L80_2
      L0_3(L1_3, L2_3, L3_3)
    else
      L0_3 = L7_2
      L0_3 = L0_3.isOffended
      if not L0_3 then
        L0_3 = L9_1
        L1_3 = os
        L1_3 = L1_3.time
        L1_3, L2_3, L3_3, L4_3 = L1_3()
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = L15_2
        L1_3 = ANGRY_REACTION_ANIMS
        L2_3 = L8_1
        L3_3 = 1
        L4_3 = ANGRY_REACTION_ANIMS
        L4_3 = #L4_3
        L2_3 = L2_3(L3_3, L4_3)
        L1_3 = L1_3[L2_3]
        L0_3(L1_3)
        L0_3 = L7_2
        L0_3 = L0_3.currentTimeline
        L1_3 = L0_3
        L0_3 = L0_3.play
        L2_3 = 1
        L3_3 = L32_2
        L0_3(L1_3, L2_3, L3_3)
      end
    end
  end

  function L31_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L8_2
    L1_3 = "complain long"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = COMPLAIN_FRONT
    L0_3(L1_3)

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L8_2
      L1_4 = "complain scream"
      L0_4(L1_4)
      L0_4 = L15_2
      L1_4 = COMPLAIN_SCREAM_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L32_2
      L0_4(L1_4, L2_4, L3_4)
    end

    L1_3 = L7_2
    L1_3 = L1_3.isAboutToOffended
    if L1_3 then
      L1_3 = L7_2
      L1_3 = L1_3.currentTimeline
      L2_3 = L1_3
      L1_3 = L1_3.play
      L3_3 = 1
      L4_3 = L80_2
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = L7_2
      L1_3 = L1_3.currentTimeline
      L2_3 = L1_3
      L1_3 = L1_3.play
      L3_3 = 1
      L4_3 = L0_3
      L1_3(L2_3, L3_3, L4_3)
    end
  end

  function L29_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "play standUpAfterFall"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = STAND_UP_FRONT
    L2_3 = true
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L31_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L28_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "play fallDown"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = FALL_FRONT
    L2_3 = true
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L29_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L27_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L8_2
    L1_3 = "play startFallDown"
    L0_3(L1_3)
    L0_3 = 0
    L1_3 = 0
    L2_3 = L15_2
    L3_3 = START_FALL_FRONT
    L4_3 = false
    L2_3(L3_3, L4_3)
    L2_3 = L7_2
    L2_3 = L2_3.orientationController
    L3_3 = L2_3
    L2_3 = L2_3.isPortraitUpsideDown
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L0_3 = L2_3.x
      L1_3 = WORLD_HEIGHT
    else
      L2_3 = L7_2
      L2_3 = L2_3.orientationController
      L3_3 = L2_3
      L2_3 = L2_3.isPortrait
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L2_3 = L7_2
        L2_3 = L2_3.currentTimeline
        L0_3 = L2_3.x
        L1_3 = 0
      else
        L2_3 = L7_2
        L2_3 = L2_3.orientationController
        L3_3 = L2_3
        L2_3 = L2_3.isLandscapeLeft
        L2_3 = L2_3(L3_3)
        if L2_3 then
          L0_3 = WORLD_WIDTH
          L2_3 = L7_2
          L2_3 = L2_3.currentTimeline
          L1_3 = L2_3.y
        else
          L2_3 = L7_2
          L2_3 = L2_3.orientationController
          L3_3 = L2_3
          L2_3 = L2_3.isLandscapeRight
          L2_3 = L2_3(L3_3)
          if L2_3 then
            L0_3 = 0
            L2_3 = L7_2
            L2_3 = L2_3.currentTimeline
            L1_3 = L2_3.y
          end
        end
      end
    end
    L2_3 = L7_2
    L2_3 = L2_3.currentTimeline
    L3_3 = L2_3
    L2_3 = L2_3.moveTo
    L4_3 = L0_3
    L5_3 = L1_3
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = L7_2
    L2_3 = L2_3.currentTimeline
    L3_3 = L2_3
    L2_3 = L2_3.show
    L2_3(L3_3)
    L2_3 = L7_2
    L2_3 = L2_3.currentTimeline
    L3_3 = L2_3
    L2_3 = L2_3.play
    L4_3 = 1
    L5_3 = L28_2
    L2_3(L3_3, L4_3, L5_3)
  end

  function L71_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L8_2
    L1_3 = "stop drag from hair"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = DRAG_FROM_HAIR_END_FRONT
    L2_3 = true
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L7_2
    L0_3.isPlayReactionAnim = false

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L9_2
      L1_4 = COMPLAIN_FRONT
      L0_4 = L0_4(L1_4)
      L1_4 = L25_2
      L2_4 = L7_2
      L2_4 = L2_4.currentTimeline
      L3_4 = L30_2
      L1_4(L2_4, L3_4)
    end

    function L1_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L9_2
      L1_4 = BREATHE_FRONT
      L0_4 = L0_4(L1_4)
      L1_4 = L25_2
      L2_4 = L7_2
      L2_4 = L2_4.currentTimeline
      L3_4 = L32_2
      L1_4(L2_4, L3_4)
    end

    L2_3 = L7_2
    L2_3 = L2_3.isOffended
    local __lbl_41 = false
    if not L2_3 then
      L2_3 = system
      L2_3 = L2_3.getTimer
      L2_3 = L2_3()
      L3_3 = L7_2
      L3_3 = L3_3.dragStartTimestamp
      L2_3 = L2_3 - L3_3
      L3_3 = COMPLAIN_AFTER_DRAG_MIN_TIME_DELTA
      if not (L2_3 > L3_3) then
        __lbl_41 = true
      end
    end
    local __lbl_47 = false
    if not __lbl_41 then
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L3_3 = L2_3
      L2_3 = L2_3.play
      L4_3 = 1
      L5_3 = L0_3
      L2_3(L3_3, L4_3, L5_3)
      __lbl_47 = true
    end
    if not __lbl_47 then
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L3_3 = L2_3
      L2_3 = L2_3.play
      L4_3 = 1
      L5_3 = L1_3
      L2_3(L3_3, L4_3, L5_3)
    end
  end

  function L70_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = system
    L0_3 = L0_3.getTimer
    L0_3 = L0_3()

    function L1_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = system
      L1_4 = L1_4.getTimer
      L1_4 = L1_4()
      L2_4 = L0_3
      L2_4 = L1_4 - L2_4
      L3_4 = DRAG_UPDATE_HAPPINESS_INTERVAL
      if L2_4 > L3_4 then
        L2_4 = L10_2
        L3_4 = DRAG_CHANGE_HAPPINESS_AMOUNT
        L2_4(L3_4)
        L0_3 = L1_4
      end
    end

    L2_3 = L8_2
    L3_3 = "drag from hair"
    L2_3(L3_3)
    L2_3 = L15_2
    L3_3 = DRAG_FROM_HAIR_LOOP_FRONT
    L4_3 = true
    L5_3 = false
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = L7_2
    L3_3 = system
    L3_3 = L3_3.getTimer
    L3_3 = L3_3()
    L2_3.dragStartTimestamp = L3_3
    L2_3 = L7_2
    L2_3 = L2_3.currentTimeline
    L3_3 = L2_3
    L2_3 = L2_3.play
    L4_3 = 0
    L5_3 = L71_2
    L6_3 = L1_3
    L2_3(L3_3, L4_3, L5_3, L6_3)
  end

  function L74_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L8_2
    L1_3 = "stop drag from shirt"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = DRAG_FROM_SHIRT_END_FRONT
    L2_3 = true
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L0_3 = L0_3.group
    L1_3 = L7_2
    L1_3 = L1_3.timelines
    L2_3 = DRAG_FROM_SHIRT_LOOP_FRONT
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.group
    L1_3 = L1_3.xScale
    compat.setProp(L0_3, "xScale", L1_3)
    L0_3 = L7_2
    L0_3.isPlayReactionAnim = false

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L9_2
      L1_4 = COMPLAIN_FRONT
      L0_4 = L0_4(L1_4)
      L1_4 = L25_2
      L2_4 = L7_2
      L2_4 = L2_4.currentTimeline
      L3_4 = L30_2
      L1_4(L2_4, L3_4)
    end

    function L1_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L9_2
      L1_4 = BREATHE_FRONT
      L0_4 = L0_4(L1_4)
      L1_4 = L25_2
      L2_4 = L7_2
      L2_4 = L2_4.currentTimeline
      L3_4 = L32_2
      L1_4(L2_4, L3_4)
    end

    L2_3 = L7_2
    L2_3 = L2_3.isOffended
    local __lbl_51 = false
    if not L2_3 then
      L2_3 = system
      L2_3 = L2_3.getTimer
      L2_3 = L2_3()
      L3_3 = L7_2
      L3_3 = L3_3.dragStartTimestamp
      L2_3 = L2_3 - L3_3
      L3_3 = COMPLAIN_AFTER_DRAG_MIN_TIME_DELTA
      if not (L2_3 > L3_3) then
        __lbl_51 = true
      end
    end
    local __lbl_57 = false
    if not __lbl_51 then
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L3_3 = L2_3
      L2_3 = L2_3.play
      L4_3 = 1
      L5_3 = L0_3
      L2_3(L3_3, L4_3, L5_3)
      __lbl_57 = true
    end
    if not __lbl_57 then
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L3_3 = L2_3
      L2_3 = L2_3.play
      L4_3 = 1
      L5_3 = L1_3
      L2_3(L3_3, L4_3, L5_3)
    end
  end

  function L73_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()

    function L2_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = system
      L1_4 = L1_4.getTimer
      L1_4 = L1_4()
      L2_4 = L1_3
      L2_4 = L1_4 - L2_4
      L3_4 = DRAG_UPDATE_HAPPINESS_INTERVAL
      if L2_4 > L3_4 then
        L2_4 = L10_2
        L3_4 = DRAG_CHANGE_HAPPINESS_AMOUNT
        L2_4(L3_4)
        L1_3 = L1_4
      end
    end

    L3_3 = L8_2
    L4_3 = "drag from shirt"
    L3_3(L4_3)
    L3_3 = L15_2
    L4_3 = DRAG_FROM_SHIRT_LOOP_FRONT
    L5_3 = true
    L6_3 = false
    L3_3(L4_3, L5_3, L6_3)
    if A0_3 then
      L3_3 = L7_2
      L3_3 = L3_3.currentTimeline
      L3_3 = L3_3.group
      compat.setProp(L3_3, "xScale", 1)
    else
      L3_3 = L7_2
      L3_3 = L3_3.currentTimeline
      L3_3 = L3_3.group
      compat.setProp(L3_3, "xScale", -1)
    end
    L3_3 = L7_2
    L4_3 = system
    L4_3 = L4_3.getTimer
    L4_3 = L4_3()
    L3_3.dragStartTimestamp = L4_3
    L3_3 = L7_2
    L3_3 = L3_3.currentTimeline
    L4_3 = L3_3
    L3_3 = L3_3.play
    L5_3 = 0
    L6_3 = L74_2
    L7_3 = L2_3
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end

  function L69_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L2_3 = 700
    L3_3 = 80
    local L4_3 = 0
    L5_3 = false
    L6_3 = false

    function L7_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4.x
      L2_4 = L4_3
      L2_4 = -L2_4
      local __lbl_28 = false
      if not (L1_4 < L2_4) then
        L1_4 = L0_4.x
        L2_4 = WORLD_WIDTH
        L3_4 = L4_3
        L2_4 = L2_4 + L3_4
        if not (L1_4 > L2_4) then
          L1_4 = L0_4.y
          L2_4 = L4_3
          L2_4 = -L2_4
          if not (L1_4 < L2_4) then
            L1_4 = L0_4.y
            L2_4 = WORLD_HEIGHT
            L3_4 = L4_3
            L2_4 = L2_4 + L3_4
            if not (L1_4 > L2_4) then
              __lbl_28 = true
            end
          end
        end
      end
      local __lbl_30 = false
      if not __lbl_28 then
        L1_4 = true
        do return L1_4 end
        __lbl_30 = true
      end
      if not __lbl_30 then
        L1_4 = false
        do return L1_4 end
      end
    end

    function L8_3()
      local L0_4, L1_4
      L0_4 = L7_2
      L0_4.isPlayReactionAnim = false
      L0_4 = L7_2
      L0_4.isDragging = false
      L0_4 = L31_2
      L0_4()
    end

    function L9_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L0_4 = L8_2
      L1_4 = "walk back"
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.hide
      L0_4(L1_4)
      L0_4 = L9_2
      L1_4 = COMPLAIN_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.timelines
      L1_4 = COMPLAIN_FRONT
      L0_4 = L0_4[L1_4]
      L0_4 = L0_4.width
      L1_4 = L15_2
      L2_4 = WALK_SIDE
      L3_4 = false
      L4_4 = true
      L1_4(L2_4, L3_4, L4_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L1_4 = L1_4.width
      L1_4 = L1_4 + 20
      L2_4 = L7_2
      L2_4 = L2_4.orientationController
      L2_4 = L2_4.current
      L2_4 = L2_4.bounds
      L3_4 = L8_1
      L4_4 = 1
      L5_4 = 4
      L3_4 = L3_4(L4_4, L5_4)
      if L3_4 <= 2 then
        L3_4 = L8_2
        L4_4 = "walk in from left side"
        L3_4(L4_4)
        L3_4 = L2_4.left
        if L3_4 == 0 then
          L3_4 = L7_2
          L3_4 = L3_4.currentTimeline
          L4_4 = L3_4
          L3_4 = L3_4.moveTo
          L5_4 = L2_4.left
          L5_4 = L5_4 - L1_4
          L6_4 = L2_4.left
          L6_4 = L6_4 - L1_4
          L3_4(L4_4, L5_4, L6_4)
        else
          L3_4 = L7_2
          L3_4 = L3_4.currentTimeline
          L4_4 = L3_4
          L3_4 = L3_4.moveTo
          L5_4 = L2_4.left
          L5_4 = L5_4 + L1_4
          L6_4 = L2_4.left
          L6_4 = L6_4 + L1_4
          L3_4(L4_4, L5_4, L6_4)
        end
        L3_4 = L24_2
        L4_4 = 0
        L5_4 = L8_3
        L3_4(L4_4, L5_4)
      else
        L3_4 = L8_2
        L4_4 = "walk in from right side"
        L3_4(L4_4)
        L3_4 = L2_4.left
        if L3_4 == 0 then
          L3_4 = L7_2
          L3_4 = L3_4.currentTimeline
          L4_4 = L3_4
          L3_4 = L3_4.moveTo
          L5_4 = L2_4.right
          L6_4 = L2_4.right
          L3_4(L4_4, L5_4, L6_4)
        else
          L3_4 = L7_2
          L3_4 = L3_4.currentTimeline
          L4_4 = L3_4
          L3_4 = L3_4.moveTo
          L5_4 = L2_4.right
          L5_4 = L5_4 - L1_4
          L6_4 = L2_4.right
          L6_4 = L6_4 - L1_4
          L3_4(L4_4, L5_4, L6_4)
        end
        L3_4 = L24_2
        L4_4 = WORLD_WIDTH
        L4_4 = L4_4 - L0_4
        L5_4 = L8_3
        L3_4(L4_4, L5_4)
      end
    end

    function L10_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L15_2
      L1_4 = THROW_OUT_MOVING_FRONT
      L2_4 = true
      L3_4 = false
      L0_4(L1_4, L2_4, L3_4)
      L0_4 = L7_2
      L0_4 = L0_4.orientationController
      L1_4 = L0_4
      L0_4 = L0_4.isPortrait
      L0_4 = L0_4(L1_4)
      if L0_4 then
        L0_4 = L7_2
        L0_4 = L0_4.currentTimeline
        L1_4 = L0_4
        L0_4 = L0_4.moveTo
        L2_4 = 0
        L3_4 = 0
        L0_4(L1_4, L2_4, L3_4)
      else
        L0_4 = L7_2
        L0_4 = L0_4.orientationController
        L1_4 = L0_4
        L0_4 = L0_4.isLandscapeLeft
        L0_4 = L0_4(L1_4)
        if L0_4 then
          L0_4 = L7_2
          L0_4 = L0_4.currentTimeline
          L1_4 = L0_4
          L0_4 = L0_4.moveTo
          L2_4 = WORLD_WIDTH
          L3_4 = 0
          L0_4(L1_4, L2_4, L3_4)
        else
          L0_4 = L7_2
          L0_4 = L0_4.orientationController
          L1_4 = L0_4
          L0_4 = L0_4.isLandscapeRight
          L0_4 = L0_4(L1_4)
          if L0_4 then
            L0_4 = L7_2
            L0_4 = L0_4.currentTimeline
            L1_4 = L0_4
            L0_4 = L0_4.moveTo
            L2_4 = 0
            L3_4 = WORLD_HEIGHT
            L0_4(L1_4, L2_4, L3_4)
          else
            L0_4 = L7_2
            L0_4 = L0_4.orientationController
            L1_4 = L0_4
            L0_4 = L0_4.isPortraitUpsideDown
            L0_4 = L0_4(L1_4)
            if L0_4 then
              L0_4 = L7_2
              L0_4 = L0_4.currentTimeline
              L1_4 = L0_4
              L0_4 = L0_4.moveTo
              L2_4 = WORLD_WIDTH
              L3_4 = WORLD_HEIGHT
              L0_4(L1_4, L2_4, L3_4)
            end
          end
        end
      end
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L0_4 = L0_4.group
      L1_4 = L0_4
      L0_4 = L0_4.rotate
      L2_4 = L8_1
      L3_4 = 0
      L4_4 = 360
      L2_4, L3_4, L4_4 = L2_4(L3_4, L4_4)
      L0_4(L1_4, L2_4, L3_4, L4_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L9_3
      L0_4(L1_4, L2_4, L3_4)
    end

    function L11_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L7_3
      L1_4 = L1_4()
      if L1_4 then
        L2_4 = A0_4
        L1_4 = A0_4.stop
        L1_4(L2_4)
        L2_4 = A0_4
        L1_4 = A0_4.hide
        L1_4(L2_4)
        L1_4 = L8_2
        L2_4 = "stop throwing"
        L1_4(L2_4)
        L1_4 = timer
        L1_4 = L1_4.performWithDelay
        L2_4 = L2_3
        L3_4 = L10_3
        L4_4 = 1
        L1_4(L2_4, L3_4, L4_4)
      else
        L2_4 = A0_4
        L1_4 = A0_4.translate
        L3_4 = A1_3
        L3_4 = L3_4.x
        L4_4 = A1_3
        L4_4 = L4_4.y
        L1_4(L2_4, L3_4, L4_4)
      end
    end

    L12_3 = L7_2
    L12_3 = L12_3.currentTimeline
    L12_3 = L12_3.height
    L13_3 = L7_2
    L13_3 = L13_3.currentTimeline
    L13_3 = L13_3.width
    if L12_3 > L13_3 then
      L12_3 = L7_2
      L12_3 = L12_3.currentTimeline
      L4_3 = L12_3.height
    else
      L12_3 = L7_2
      L12_3 = L12_3.currentTimeline
      L4_3 = L12_3.width
    end
    L12_3 = L7_2
    L12_3 = L12_3.currentTimeline
    L13_3 = L12_3
    L12_3 = L12_3.play
    L14_3 = 0
    L15_3 = nil
    L16_3 = L11_3
    L12_3(L13_3, L14_3, L15_3, L16_3)
  end

  function L72_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = L8_2
    L3_3 = "throw drag from hair"
    L2_3(L3_3)
    L2_3 = L15_2
    L3_3 = DRAG_FROM_HAIR_LOOP_FRONT
    L4_3 = true
    L5_3 = false
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = L69_2
    L3_3 = A0_3
    L4_3 = A1_3
    L2_3(L3_3, L4_3)
  end

  function L75_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = L8_2
    L3_3 = "throw drag from shirt"
    L2_3(L3_3)
    L2_3 = L15_2
    L3_3 = DRAG_FROM_SHIRT_LOOP_FRONT
    L4_3 = true
    L5_3 = false
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = L69_2
    L3_3 = A0_3
    L4_3 = A1_3
    L2_3(L3_3, L4_3)
  end

  function L16_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = true
    L3_3 = L7_2
    L3_3 = L3_3.orientationController
    L4_3 = L3_3
    L3_3 = L3_3.isPortrait
    L3_3 = L3_3(L4_3)
    if L3_3 then
      L3_3 = L7_2
      L3_3 = L3_3.currentTimeline
      L3_3 = L3_3.x
      L3_3 = L3_3 + A0_3
      if L3_3 < 0 then
        L2_3 = false
      end
    else
      L3_3 = L7_2
      L3_3 = L3_3.orientationController
      L4_3 = L3_3
      L3_3 = L3_3.isPortraitUpsideDown
      L3_3 = L3_3(L4_3)
      if L3_3 then
        L3_3 = L7_2
        L3_3 = L3_3.currentTimeline
        L3_3 = L3_3.x
        L3_3 = L3_3 + A0_3
        L4_3 = display
        L4_3 = L4_3.contentWidth
        if L3_3 > L4_3 then
          L2_3 = false
        end
      else
        L3_3 = L7_2
        L3_3 = L3_3.orientationController
        L4_3 = L3_3
        L3_3 = L3_3.isLandscapeLeft
        L3_3 = L3_3(L4_3)
        if L3_3 then
          L3_3 = L7_2
          L3_3 = L3_3.currentTimeline
          L3_3 = L3_3.y
          L3_3 = L3_3 + A1_3
          if L3_3 < 0 then
            L2_3 = false
          end
        else
          L3_3 = L7_2
          L3_3 = L3_3.orientationController
          L4_3 = L3_3
          L3_3 = L3_3.isLandscapeRight
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L3_3 = L7_2
            L3_3 = L3_3.currentTimeline
            L3_3 = L3_3.y
            L3_3 = L3_3 + A1_3
            L4_3 = display
            L4_3 = L4_3.contentWidth
            if L3_3 > L4_3 then
              L2_3 = false
            end
          end
        end
      end
    end
    return L2_3
  end

  function L17_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = true
    L3_3 = L7_2
    L3_3 = L3_3.orientationController
    L4_3 = L3_3
    L3_3 = L3_3.isPortrait
    L3_3 = L3_3(L4_3)
    if L3_3 then
      L3_3 = L7_2
      L3_3 = L3_3.currentTimeline
      L3_3 = L3_3.x
      L4_3 = L7_2
      L4_3 = L4_3.currentTimeline
      L4_3 = L4_3.width
      L3_3 = L3_3 + L4_3
      L3_3 = L3_3 + A0_3
      L4_3 = display
      L4_3 = L4_3.contentWidth
      if L3_3 > L4_3 then
        L2_3 = false
      end
    else
      L3_3 = L7_2
      L3_3 = L3_3.orientationController
      L4_3 = L3_3
      L3_3 = L3_3.isPortraitUpsideDown
      L3_3 = L3_3(L4_3)
      if L3_3 then
        L3_3 = L7_2
        L3_3 = L3_3.currentTimeline
        L3_3 = L3_3.x
        L4_3 = L7_2
        L4_3 = L4_3.currentTimeline
        L4_3 = L4_3.width
        L3_3 = L3_3 - L4_3
        L3_3 = L3_3 + A0_3
        if L3_3 < 0 then
          L2_3 = false
        end
      else
        L3_3 = L7_2
        L3_3 = L3_3.orientationController
        L4_3 = L3_3
        L3_3 = L3_3.isLandscapeLeft
        L3_3 = L3_3(L4_3)
        if L3_3 then
          L3_3 = L7_2
          L3_3 = L3_3.currentTimeline
          L3_3 = L3_3.y
          L4_3 = L7_2
          L4_3 = L4_3.currentTimeline
          L4_3 = L4_3.width
          L3_3 = L3_3 + L4_3
          L3_3 = L3_3 + A1_3
          L4_3 = display
          L4_3 = L4_3.contentWidth
          if L3_3 > L4_3 then
            L2_3 = false
          end
        else
          L3_3 = L7_2
          L3_3 = L3_3.orientationController
          L4_3 = L3_3
          L3_3 = L3_3.isLandscapeRight
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L3_3 = L7_2
            L3_3 = L3_3.currentTimeline
            L3_3 = L3_3.y
            L4_3 = L7_2
            L4_3 = L4_3.currentTimeline
            L4_3 = L4_3.width
            L3_3 = L3_3 - L4_3
            L3_3 = L3_3 + A1_3
            if L3_3 < 0 then
              L2_3 = false
            end
          end
        end
      end
    end
    return L2_3
  end

  function L77_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L8_2
    L1_3 = "start tarzan"
    L0_3(L1_3)

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L8_2
      L1_4 = "tarzan jump and hold rattan"
      L0_4(L1_4)
      L0_4 = L15_2
      L1_4 = TARZAN_PART1_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L78_2
      L0_4(L1_4, L2_4, L3_4)
    end

    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = RATTAN_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L0_3
      L1_4(L2_4, L3_4, L4_4)
    end

    L2_3 = L24_2
    L3_3 = WORLD_WIDTH
    L3_3 = L3_3 / 2
    L3_3 = L3_3 - 45
    L4_3 = L1_3
    L5_3 = 15
    L2_3(L3_3, L4_3, L5_3)
  end

  function L78_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = L7_2
    L0_3 = L0_3.orientationController
    L0_3.orientationLocked = true
    L0_3 = L8_2
    L1_3 = "tarzan swing"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = TARZAN_LOOP_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L0_3 = L0_3.group
    compat.setProp(L0_3, "xScale", 1)
    L0_3 = L7_2
    L0_3 = L0_3.audioController
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = "tarzan"
    L3_3 = "tarzan"
    L4_3 = 1
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L0_3 = L0_3.group
    L0_3 = L0_3.rotation
    L1_3 = 35
    L2_3 = 5
    L3_3 = 1
    L4_3 = 2
    L5_3 = false

    function L6_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L5_3
      if L1_4 then
        L1_4 = A0_4.group
        L1_4 = L1_4.rotation
        L2_4 = L0_3
        L2_4 = L2_4 + 10
        if L1_4 == L2_4 then
          L1_4 = A0_4.group
          L2_4 = L0_3
          compat.setProp(L1_4, "rotation", L2_4)
          L1_4 = L7_2
          L1_4 = L1_4.orientationController
          L1_4.orientationLocked = false
          L1_4 = L79_2
          L1_4()
        else
          L1_4 = A0_4.group
          L2_4 = L1_4
          L1_4 = L1_4.rotate
          L3_4 = L3_3
          L4_4 = L2_3
          L3_4 = L3_4 * L4_4
          L1_4(L2_4, L3_4)
        end
      else
        L1_4 = L3_3
        local __and_8 = false
        if L1_4 == 1 then
          L1_4 = A0_4.group
          L1_4 = L1_4.rotation
          L2_4 = L0_3
          L3_4 = L1_3
          L2_4 = L2_4 + L3_4
          if L1_4 < L2_4 then
            __and_8 = true
            L1_4 = A0_4.group
            L2_4 = L1_4
            L1_4 = L1_4.rotate
            L3_4 = L3_3
            L4_4 = L2_3
            L3_4 = L3_4 * L4_4
            L1_4(L2_4, L3_4)
          end
        end
        if not __and_8 then
          L1_4 = L3_3
          local __and_9 = false
          if L1_4 == -1 then
            L1_4 = A0_4.group
            L1_4 = L1_4.rotation
            L2_4 = L0_3
            L3_4 = L1_3
            L2_4 = L2_4 - L3_4
            if L1_4 > L2_4 then
              __and_9 = true
              L1_4 = A0_4.group
              L2_4 = L1_4
              L1_4 = L1_4.rotate
              L3_4 = L3_3
              L4_4 = L2_3
              L3_4 = L3_4 * L4_4
              L1_4(L2_4, L3_4)
            end
          end
          if not __and_9 then
            L1_4 = A0_4.group
            L1_4 = L1_4.rotation
            L2_4 = A0_4.group
            L3_4 = A0_4.group
            L3_4 = L3_4.rotation
            L4_4 = L0_3
            L4_4 = L1_4 - L4_4
            L3_4 = L3_4 + L4_4
            compat.setProp(L2_4, "rotation", L3_4)
            L2_4 = L3_3
            L2_4 = -L2_4
            L3_3 = L2_4
            L2_4 = L4_3
            if 0 < L2_4 then
              L2_4 = A0_4.group
              L3_4 = A0_4.group
              L3_4 = L3_4.xScale
              L3_4 = -L3_4
              compat.setProp(L2_4, "xScale", L3_4)
              L2_4 = L4_3
              L2_4 = L2_4 - 1
              L4_3 = L2_4
            else
              L2_4 = true
              L5_3 = L2_4
            end
          end
        end
      end
    end

    L7_3 = L7_2
    L7_3 = L7_3.currentTimeline
    L8_3 = L7_3
    L7_3 = L7_3.play
    L9_3 = 0
    L10_3 = nil
    L11_3 = L6_3
    L7_3(L8_3, L9_3, L10_3, L11_3)
  end

  function L79_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "stand after tarzan"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = TARZAN_STAND_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L32_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L80_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L8_2
    L1_3 = "start offended"
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3.isOffended = true
    L0_3 = L7_2
    L0_3.isAboutToOffended = false
    L0_3 = L9_2
    L1_3 = OFFENDED_LOOP
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = OFFENDED_TURN_AROUND1
    L0_3(L1_3)
    L0_3 = L7_2
    L1_3 = timer
    L1_3 = L1_3.performWithDelay
    L2_3 = STAY_OFFENDED_MAX_TIME_DELTA
    L3_3 = L11_2
    L4_3 = 1
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L0_3.revertOffendedTimer = L1_3
    L0_3 = L7_2
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    L0_3.offendedStartTimestamp = L1_3
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L82_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L81_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "offended complain"
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L7_2
    L1_3 = L1_3.timelines
    L2_3 = OFFENDED_LOOP
    L1_3 = L1_3[L2_3]
    if L0_3 == L1_3 then
      L0_3 = L15_2
      L1_3 = OFFENDED_COMPLAIN_FRONT
      L0_3(L1_3)
      L0_3 = L7_2
      L0_3 = L0_3.currentTimeline
      L1_3 = L0_3
      L0_3 = L0_3.play
      L2_3 = 1
      L3_3 = L82_2
      L0_3(L1_3, L2_3, L3_3)
    end
  end

  function L82_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "offended loop"
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3.isPlayReactionAnim = false
    L0_3 = L15_2
    L1_3 = OFFENDED_LOOP
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 0
    L3_3 = L83_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L83_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if not A0_3 then
      A0_3 = L32_2
    end
    L1_3 = L8_2
    L2_3 = "offended turn around"
    L1_3(L2_3)
    L1_3 = L15_2
    L2_3 = OFFENDED_TURN_AROUND2
    L1_3(L2_3)
    L1_3 = L7_2
    L1_3 = L1_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.play
    L3_3 = 1
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end

  function L11_2()
    local L0_3, L1_3, L2_3
    L0_3 = L8_2
    L1_3 = "revert offended"
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.isOffended
    if L0_3 then
      L0_3 = L7_2
      L0_3.isOffended = false
      L0_3 = L10_2
      L1_3 = OFFENDED_CRITICAL_THRESHOLD
      L2_3 = L7_2
      L2_3 = L2_3.happiness
      L1_3 = L1_3 - L2_3
      L1_3 = L1_3 + 1
      L0_3(L1_3)
      L0_3 = L83_2
      L1_3 = L32_2
      L0_3(L1_3)
    end
  end

  function L84_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = HANG_DOWN_FALL_LOOP
      L2_4 = true
      L3_4 = false
      L0_4(L1_4, L2_4, L3_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 0
      L0_4(L1_4, L2_4)
    end

    L1_3 = L8_2
    L2_3 = "hang from screen fall"
    L1_3(L2_3)
    L1_3 = L15_2
    L2_3 = HANG_DOWN_FALL
    L3_3 = true
    L4_3 = false
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L7_2
    L1_3 = L1_3.orientationController
    L2_3 = L1_3
    L1_3 = L1_3.isPortrait
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = L7_2
      L1_3 = L1_3.currentTimeline
      L2_3 = L1_3
      L1_3 = L1_3.moveTo
      L3_3 = 0
      L4_3 = 0
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = L7_2
      L1_3 = L1_3.orientationController
      L2_3 = L1_3
      L1_3 = L1_3.isLandscapeLeft
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = L7_2
        L1_3 = L1_3.currentTimeline
        L2_3 = L1_3
        L1_3 = L1_3.moveTo
        L3_3 = WORLD_WIDTH
        L4_3 = 0
        L1_3(L2_3, L3_3, L4_3)
      else
        L1_3 = L7_2
        L1_3 = L1_3.orientationController
        L2_3 = L1_3
        L1_3 = L1_3.isLandscapeRight
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L1_3 = L7_2
          L1_3 = L1_3.currentTimeline
          L2_3 = L1_3
          L1_3 = L1_3.moveTo
          L3_3 = 0
          L4_3 = WORLD_HEIGHT
          L1_3(L2_3, L3_3, L4_3)
        else
          L1_3 = L7_2
          L1_3 = L1_3.orientationController
          L2_3 = L1_3
          L1_3 = L1_3.isPortraitUpsideDown
          L1_3 = L1_3(L2_3)
          if L1_3 then
            L1_3 = L7_2
            L1_3 = L1_3.currentTimeline
            L2_3 = L1_3
            L1_3 = L1_3.moveTo
            L3_3 = WORLD_WIDTH
            L4_3 = WORLD_HEIGHT
            L1_3(L2_3, L3_3, L4_3)
          end
        end
      end
    end
    L1_3 = L7_2
    L1_3 = L1_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.play
    L3_3 = 1
    L4_3 = L0_3
    L1_3(L2_3, L3_3, L4_3)
  end

  function L88_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3

    function L0_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = HANG_DOWN_FALL_LOOP
      L3_4 = true
      L4_4 = false
      L1_4(L2_4, L3_4, L4_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 0
      L1_4(L2_4, L3_4)
    end

    L1_3 = L15_2
    L2_3 = HANG_DOWN_LOOP2
    L3_3 = true
    L4_3 = false
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L7_2
    L1_3 = L1_3.currentTimeline
    L1_3 = L1_3.group
    L2_3 = L7_2
    L2_3 = L2_3.timelines
    L3_3 = HANG_DOWN_FALL_LOOP
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.group
    L2_3 = L2_3.xScale
    compat.setProp(L1_3, "xScale", L2_3)
    L1_3 = L7_2
    L1_3 = L1_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.play
    L3_3 = 1
    L4_3 = L0_3
    L1_3(L2_3, L3_3, L4_3)
  end

  function L85_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.stop
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = BREATHE_FRONT
    L2_3 = false
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L7_2
    L1_3 = L1_3.orientationController
    L2_3 = L1_3
    L1_3 = L1_3.getMoveRightDirection
    L1_3 = L1_3(L2_3)
    L2_3 = L1_3.x
    L3_3 = WORLD_WIDTH
    L3_3 = L3_3 / 2
    L4_3 = L0_3.x
    L3_3 = L3_3 - L4_3
    L4_3 = L0_3.width
    L4_3 = L4_3 / 2
    L3_3 = L3_3 - L4_3
    L2_3 = L2_3 * L3_3
    L3_3 = L1_3.y
    L4_3 = WORLD_HEIGHT
    L4_3 = L4_3 / 2
    L5_3 = L0_3.y
    L4_3 = L4_3 - L5_3
    L5_3 = L0_3.width
    L5_3 = L5_3 / 2
    L4_3 = L4_3 - L5_3
    L3_3 = L3_3 * L4_3
    L4_3 = L7_2
    L4_3 = L4_3.orientationController
    L5_3 = L4_3
    L4_3 = L4_3.isPortraitUpsideDown
    L4_3 = L4_3(L5_3)
    local __lbl_69 = false
    if not L4_3 then
      L4_3 = L7_2
      L4_3 = L4_3.orientationController
      L5_3 = L4_3
      L4_3 = L4_3.isLandscapeRight
      L4_3 = L4_3(L5_3)
      if not L4_3 then
        __lbl_69 = true
      end
    end
    if not __lbl_69 then
      L4_3 = L7_2
      L4_3 = L4_3.orientationController
      L5_3 = L4_3
      L4_3 = L4_3.getMoveLeftDirection
      L4_3 = L4_3(L5_3)
      L1_3 = L4_3
      L4_3 = L1_3.x
      L5_3 = WORLD_WIDTH
      L5_3 = L5_3 / 2
      L6_3 = L0_3.x
      L5_3 = L5_3 - L6_3
      L6_3 = L0_3.width
      L6_3 = L6_3 / 2
      L5_3 = L5_3 + L6_3
      L2_3 = L4_3 * L5_3
      L4_3 = L1_3.y
      L5_3 = WORLD_HEIGHT
      L5_3 = L5_3 / 2
      L6_3 = L0_3.y
      L5_3 = L5_3 - L6_3
      L6_3 = L0_3.width
      L6_3 = L6_3 / 2
      L5_3 = L5_3 + L6_3
      L3_3 = L4_3 * L5_3
    end
    L5_3 = L0_3
    L4_3 = L0_3.translate
    L6_3 = L2_3
    L7_3 = L3_3
    L4_3(L5_3, L6_3, L7_3)
    L4_3 = L32_2
    L4_3()
  end

  function L86_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = HANG_DOWN_WALK_PART1_LOOP
      L2_4 = true
      L3_4 = false
      L0_4(L1_4, L2_4, L3_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L0_4 = L0_4.group
      compat.setProp(L0_4, "xScale", 1)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 0
      L0_4(L1_4, L2_4)
    end

    function L1_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = HANG_DOWN_FALL_LOOP
      L2_4 = true
      L3_4 = false
      L0_4(L1_4, L2_4, L3_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L0_4 = L0_4.group
      compat.setProp(L0_4, "xScale", -1)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 0
      L0_4(L1_4, L2_4)
    end

    L2_3 = L7_2
    L2_3 = L2_3.currentTimeline
    L3_3 = L7_2
    L3_3 = L3_3.timelines
    L4_3 = HANG_DOWN_FALL_LOOP
    L3_3 = L3_3[L4_3]
    local __lbl_39 = false
    if L2_3 ~= L3_3 then
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L3_3 = L7_2
      L3_3 = L3_3.timelines
      L4_3 = HANG_DOWN_LOOP2
      L3_3 = L3_3[L4_3]
      if L2_3 ~= L3_3 then
        __lbl_39 = true
      end
    end
    local __lbl_68 = false
    if not __lbl_39 then
      L2_3 = L15_2
      L3_3 = HANG_DOWN_WALK_PART1
      L4_3 = true
      L5_3 = false
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L2_3 = L2_3.group
      compat.setProp(L2_3, "xScale", 1)
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L3_3 = L2_3
      L2_3 = L2_3.play
      L4_3 = 1
      L5_3 = L0_3
      L2_3(L3_3, L4_3, L5_3)
      __lbl_68 = true
    end
    if not __lbl_68 then
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L3_3 = L7_2
      L3_3 = L3_3.timelines
      L4_3 = HANG_DOWN_WALK_PART1_LOOP
      L3_3 = L3_3[L4_3]
      if L2_3 == L3_3 then
        L2_3 = L7_2
        L2_3 = L2_3.currentTimeline
        L2_3 = L2_3.group
        L2_3 = L2_3.xScale
        if L2_3 == -1 then
          L2_3 = L15_2
          L3_3 = HANG_DOWN_WALK_PART2
          L4_3 = true
          L5_3 = false
          L2_3(L3_3, L4_3, L5_3)
          L2_3 = L7_2
          L2_3 = L2_3.currentTimeline
          L2_3 = L2_3.group
          compat.setProp(L2_3, "xScale", -1)
          L2_3 = L7_2
          L2_3 = L2_3.currentTimeline
          L3_3 = L2_3
          L2_3 = L2_3.play
          L4_3 = 1
          L5_3 = L1_3
          L2_3(L3_3, L4_3, L5_3)
        end
      end
    end
  end

  function L87_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = HANG_DOWN_WALK_PART1_LOOP
      L2_4 = true
      L3_4 = false
      L0_4(L1_4, L2_4, L3_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L0_4 = L0_4.group
      compat.setProp(L0_4, "xScale", -1)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 0
      L0_4(L1_4, L2_4)
    end

    function L1_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = HANG_DOWN_FALL_LOOP
      L2_4 = true
      L3_4 = false
      L0_4(L1_4, L2_4, L3_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L0_4 = L0_4.group
      compat.setProp(L0_4, "xScale", 1)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 0
      L0_4(L1_4, L2_4)
    end

    L2_3 = L7_2
    L2_3 = L2_3.currentTimeline
    L3_3 = L7_2
    L3_3 = L3_3.timelines
    L4_3 = HANG_DOWN_FALL_LOOP
    L3_3 = L3_3[L4_3]
    local __lbl_39 = false
    if L2_3 ~= L3_3 then
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L3_3 = L7_2
      L3_3 = L3_3.timelines
      L4_3 = HANG_DOWN_LOOP2
      L3_3 = L3_3[L4_3]
      if L2_3 ~= L3_3 then
        __lbl_39 = true
      end
    end
    local __lbl_68 = false
    if not __lbl_39 then
      L2_3 = L15_2
      L3_3 = HANG_DOWN_WALK_PART1
      L4_3 = true
      L5_3 = false
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L2_3 = L2_3.group
      compat.setProp(L2_3, "xScale", -1)
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L3_3 = L2_3
      L2_3 = L2_3.play
      L4_3 = 1
      L5_3 = L0_3
      L2_3(L3_3, L4_3, L5_3)
      __lbl_68 = true
    end
    if not __lbl_68 then
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L3_3 = L7_2
      L3_3 = L3_3.timelines
      L4_3 = HANG_DOWN_WALK_PART1_LOOP
      L3_3 = L3_3[L4_3]
      if L2_3 == L3_3 then
        L2_3 = L7_2
        L2_3 = L2_3.currentTimeline
        L2_3 = L2_3.group
        L2_3 = L2_3.xScale
        if L2_3 == 1 then
          L2_3 = L15_2
          L3_3 = HANG_DOWN_WALK_PART2
          L4_3 = true
          L5_3 = false
          L2_3(L3_3, L4_3, L5_3)
          L2_3 = L7_2
          L2_3 = L2_3.currentTimeline
          L2_3 = L2_3.group
          compat.setProp(L2_3, "xScale", 1)
          L2_3 = L7_2
          L2_3 = L2_3.currentTimeline
          L3_3 = L2_3
          L2_3 = L2_3.play
          L4_3 = 1
          L5_3 = L1_3
          L2_3(L3_3, L4_3, L5_3)
        end
      end
    end
  end

  function L90_2()
    local L0_3, L1_3
    L0_3 = L7_2
    L0_3 = L0_3.turnOffLightDarkBg
    if L0_3 then
      L0_3 = L7_2
      L0_3 = L0_3.turnOffLightDarkBg
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = L7_2
      L0_3.turnOffLightDarkBg = nil
    end
    L0_3 = L32_2
    L0_3()
  end

  function L89_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = 4
    L1_3 = L7_2
    L2_3 = display
    L2_3 = L2_3.newRect
    L3_3 = 0
    L4_3 = 0
    L5_3 = WORLD_WIDTH
    L6_3 = WORLD_HEIGHT
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    L1_3.turnOffLightDarkBg = L2_3
    L1_3 = L7_2
    L1_3 = L1_3.turnOffLightDarkBg
    L2_3 = L1_3
    L1_3 = L1_3.setFillColor
    L3_3 = 0
    L4_3 = 0
    L5_3 = 0
    L6_3 = 255
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L1_3 = SCREEN_BACKGROUND
    L2_3 = L1_3
    L1_3 = L1_3.insert
    L3_3 = L7_2
    L3_3 = L3_3.turnOffLightDarkBg
    L1_3(L2_3, L3_3)

    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L1_4 = A0_4.group
      L1_4 = L1_4.xScale
      if L1_4 == 1 then
        L1_4 = L7_2
        L1_4 = L1_4.orientationController
        L2_4 = L1_4
        L1_4 = L1_4.getMoveRightDirection
        L1_4 = L1_4(L2_4)
        L2_4 = L1_4.x
        L3_4 = WALK_STEP_SIZE
        L2_4 = L2_4 * L3_4
        L3_4 = L1_4.y
        L4_4 = WALK_STEP_SIZE
        L3_4 = L3_4 * L4_4
        L4_4 = L17_2
        L5_4 = L2_4
        L6_4 = L3_4
        L4_4 = L4_4(L5_4, L6_4)
        if L4_4 then
          L5_4 = A0_4
          L4_4 = A0_4.translate
          L6_4 = L2_4
          L7_4 = L3_4
          L4_4(L5_4, L6_4, L7_4)
        else
          L4_4 = A0_4.group
          compat.setProp(L4_4, "xScale", -1)
        end
      else
        L1_4 = L7_2
        L1_4 = L1_4.orientationController
        L2_4 = L1_4
        L1_4 = L1_4.getMoveLeftDirection
        L1_4 = L1_4(L2_4)
        L2_4 = L1_4.x
        L3_4 = WALK_STEP_SIZE
        L2_4 = L2_4 * L3_4
        L3_4 = L1_4.y
        L4_4 = WALK_STEP_SIZE
        L3_4 = L3_4 * L4_4
        L4_4 = L16_2
        L5_4 = L2_4
        L6_4 = L3_4
        L4_4 = L4_4(L5_4, L6_4)
        if L4_4 then
          L5_4 = A0_4
          L4_4 = A0_4.translate
          L6_4 = L2_4
          L7_4 = L3_4
          L4_4(L5_4, L6_4, L7_4)
        else
          L4_4 = A0_4.group
          compat.setProp(L4_4, "xScale", 1)
        end
      end
    end

    function L2_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L15_2
      L1_4 = TURN_OFF_LIGHT_WALK_SIDE
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 8
      L3_4 = L90_2
      L4_4 = L1_3
      L0_4(L1_4, L2_4, L3_4, L4_4)
    end

    function L3_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = TURN_OFF_LIGHT_LIGHT_FIRE
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L2_3
      L0_4(L1_4, L2_4, L3_4)
    end

    function L4_3()
      local L0_4, L1_4
      L0_4 = L0_3
      if 0 < L0_4 then
        L0_4 = L7_2
        L0_4 = L0_4.turnOffLightDarkBg
        L0_4 = L0_4.alpha
        if L0_4 == 0 then
          L0_4 = L7_2
          L0_4 = L0_4.turnOffLightDarkBg
          L0_4.alpha = 1
        else
          L0_4 = L7_2
          L0_4 = L0_4.turnOffLightDarkBg
          L0_4.alpha = 0
        end
        L0_4 = L0_3
        L0_4 = L0_4 - 1
        L0_3 = L0_4
      end
    end

    L5_3 = L15_2
    L6_3 = TURN_OFF_LIGHT_FRONT
    L5_3(L6_3)
    L5_3 = L7_2
    L5_3 = L5_3.currentTimeline
    L6_3 = L5_3
    L5_3 = L5_3.play
    L7_3 = 1
    L8_3 = L3_3
    L9_3 = L4_3
    L5_3(L6_3, L7_3, L8_3, L9_3)
  end

  function L91_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = DANCE_FAST_PART6
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L32_2
      L0_4(L1_4, L2_4, L3_4)
    end

    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
      L0_4 = L15_2
      L1_4 = DANCE_FAST_PART5
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L0_3
      L4_4 = nil
      L5_4 = true
      L0_4(L1_4, L2_4, L3_4, L4_4, L5_4)
    end

    function L2_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = DANCE_FAST_PART5
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 3
      L3_4 = L1_3
      L0_4(L1_4, L2_4, L3_4)
    end

    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
      L0_4 = L15_2
      L1_4 = DANCE_FAST_PART4
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L2_3
      L4_4 = nil
      L5_4 = true
      L0_4(L1_4, L2_4, L3_4, L4_4, L5_4)
    end

    function L4_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = DANCE_FAST_PART4
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L3_3
      L0_4(L1_4, L2_4, L3_4)
    end

    function L5_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
      L0_4 = L15_2
      L1_4 = DANCE_FAST_PART3
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L4_3
      L4_4 = nil
      L5_4 = true
      L0_4(L1_4, L2_4, L3_4, L4_4, L5_4)
    end

    function L6_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = DANCE_FAST_PART3
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L5_3
      L0_4(L1_4, L2_4, L3_4)
    end

    function L7_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = DANCE_FAST_PART2
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L6_3
      L0_4(L1_4, L2_4, L3_4)
    end

    L8_3 = L15_2
    L9_3 = DANCE_FAST_PART1
    L8_3(L9_3)
    L8_3 = L7_2
    L8_3 = L8_3.currentTimeline
    L9_3 = L8_3
    L8_3 = L8_3.play
    L10_3 = 1
    L11_3 = L7_3
    L8_3(L9_3, L10_3, L11_3)
  end

  function L92_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = DANCE_SLOW_PART5
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L32_2
      L0_4(L1_4, L2_4, L3_4)
    end

    function L1_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = DANCE_SLOW_PART4
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L0_4 = L0_4.group
      compat.setProp(L0_4, "xScale", -1)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L0_3
      L0_4(L1_4, L2_4, L3_4)
    end

    function L2_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = DANCE_SLOW_PART4
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L0_4 = L0_4.group
      compat.setProp(L0_4, "xScale", 1)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L1_3
      L0_4(L1_4, L2_4, L3_4)
    end

    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L15_2
      L1_4 = DANCE_SLOW_PART3
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = L8_1
      L3_4 = 2
      L4_4 = 3
      L2_4 = L2_4(L3_4, L4_4)
      L3_4 = L2_3
      L0_4(L1_4, L2_4, L3_4)
    end

    function L4_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = DANCE_SLOW_PART2
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L3_3
      L0_4(L1_4, L2_4, L3_4)
    end

    L5_3 = L15_2
    L6_3 = DANCE_SLOW_PART1
    L5_3(L6_3)
    L5_3 = L7_2
    L5_3 = L5_3.currentTimeline
    L6_3 = L5_3
    L5_3 = L5_3.play
    L7_3 = 1
    L8_3 = L4_3
    L5_3(L6_3, L7_3, L8_3)
  end

  function L93_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = 1
    if not A0_3 then
      L1_3 = -1
    end

    function L2_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = HANDSTAND_END
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L0_4 = L0_4.group
      L1_4 = L1_3
      compat.setProp(L0_4, "xScale", L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L32_2
      L0_4(L1_4, L2_4, L3_4)
    end

    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L15_2
      L1_4 = HANDSTAND_LOOP
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L0_4 = L0_4.group
      L1_4 = L1_3
      compat.setProp(L0_4, "xScale", L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = L8_1
      L3_4 = 3
      L4_4 = 5
      L2_4 = L2_4(L3_4, L4_4)
      L3_4 = L2_3
      L0_4(L1_4, L2_4, L3_4)
    end

    L4_3 = L15_2
    L5_3 = HANDSTAND_START
    L4_3(L5_3)
    L4_3 = L7_2
    L4_3 = L4_3.currentTimeline
    L4_3 = L4_3.group
    compat.setProp(L4_3, "xScale", L1_3)
    L4_3 = L7_2
    L4_3 = L4_3.currentTimeline
    L5_3 = L4_3
    L4_3 = L4_3.play
    L6_3 = 1
    L7_3 = L3_3
    L4_3(L5_3, L6_3, L7_3)
  end

  function L94_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L8_2
    L1_3 = "gets kissed"
    L0_3(L1_3)

    function L0_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = L15_2
      L2_4 = KISS_LOOP_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = L8_1
      L4_4 = 7
      L5_4 = 10
      L3_4 = L3_4(L4_4, L5_4)
      L4_4 = L32_2
      L1_4(L2_4, L3_4, L4_4)
    end

    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = KISS_TRANSITION_LOOP_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L0_3
      L1_4(L2_4, L3_4, L4_4)
    end

    function L2_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = KISS_START_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L1_3
      L0_4(L1_4, L2_4, L3_4)
    end

    L3_3 = L24_2
    L4_3 = WORLD_WIDTH
    L4_3 = L4_3 / 2
    L4_3 = L4_3 - 20
    L5_3 = L2_3
    L6_3 = 50
    L3_3(L4_3, L5_3, L6_3)
  end

  function L95_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L8_2
    L1_3 = "raining"
    L0_3(L1_3)

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L7_2
      L0_4 = L0_4.audioController
      L1_4 = L0_4
      L0_4 = L0_4.stopLoop
      L2_4 = "rain"
      L0_4(L1_4, L2_4)
      L0_4 = L15_2
      L1_4 = RAIN_END_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L32_2
      L0_4(L1_4, L2_4, L3_4)
    end

    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L15_2
      L1_4 = RAIN_LOOP_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = L8_1
      L3_4 = 8
      L4_4 = 12
      L2_4 = L2_4(L3_4, L4_4)
      L3_4 = L0_3
      L0_4(L1_4, L2_4, L3_4)
    end

    function L2_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = RAIN_HOLD_UMBRELLA_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L1_3
      L0_4(L1_4, L2_4, L3_4)
    end

    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4

      function L0_4(A0_5)
        local L1_5, L2_5, L3_5, L4_5
        L1_5 = A0_5.currentFrame
        if L1_5 == 11 then
          L1_5 = L7_2
          L1_5 = L1_5.audioController
          L2_5 = L1_5
          L1_5 = L1_5.playLoop
          L3_5 = "rain"
          L4_5 = "rain_holding_umbrella_front"
          L1_5(L2_5, L3_5, L4_5)
        end
      end

      L1_4 = L7_2
      L1_4 = L1_4.audioController
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = "rain_thunder"
      L4_4 = "rain_holding_umbrella_front"
      L1_4(L2_4, L3_4, L4_4)
      L1_4 = L15_2
      L2_4 = RAIN_START_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L2_3
      L5_4 = L0_4
      L1_4(L2_4, L3_4, L4_4, L5_4)
    end

    L4_3 = L24_2
    L5_3 = WORLD_WIDTH
    L5_3 = L5_3 / 2
    L5_3 = L5_3 - 55
    L6_3 = L3_3
    L4_3(L5_3, L6_3)
  end

  function L96_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L8_2
    L1_3 = "yawns"
    L0_3(L1_3)

    function L0_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = YAWN_END_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L32_2
      L1_4(L2_4, L3_4, L4_4)
    end

    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = L15_2
      L2_4 = YAWN_LOOP_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = L8_1
      L4_4 = 2
      L5_4 = 3
      L3_4 = L3_4(L4_4, L5_4)
      L4_4 = L0_3
      L1_4(L2_4, L3_4, L4_4)
    end

    L2_3 = L15_2
    L3_3 = YAWN_START_FRONT
    L2_3(L3_3)
    L2_3 = L7_2
    L2_3 = L2_3.currentTimeline
    L3_3 = L2_3
    L2_3 = L2_3.play
    L4_3 = 1
    L5_3 = L1_3
    L2_3(L3_3, L4_3, L5_3)
  end

  function L99_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L8_2
    L1_3 = "eat"
    L0_3(L1_3)
    L0_3 = system
    L0_3 = L0_3.getTimer
    L0_3 = L0_3()
    L1_3 = L7_2
    L1_3 = L1_3.eatStartTimestamp
    L1_3 = L0_3 - L1_3
    L2_3 = MAX_EAT_TIME_DELTA
    if L1_3 > L2_3 then
      L1_3 = L7_2
      L1_3.isEating = false
      L1_3 = L7_2
      L1_3.eatStartTimestamp = 0
      L1_3 = L8_2
      L2_3 = "finish eating"
      L1_3(L2_3)
      L1_3 = L15_2
      L2_3 = EAT_END_FRONT
      L1_3(L2_3)
      L1_3 = L7_2
      L1_3 = L1_3.currentTimeline
      L2_3 = L1_3
      L1_3 = L1_3.play
      L3_3 = 1
      L4_3 = L32_2
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = L9_1
      L2_3 = os
      L2_3 = L2_3.time
      L2_3, L3_3, L4_3, L5_3 = L2_3()
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = L8_1
      L2_3 = 1
      L3_3 = 2
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L3_3 = L7_2
      L3_3 = L3_3.timelines
      L4_3 = EAT_LOOP1_FRONT
      L3_3 = L3_3[L4_3]
      if L2_3 == L3_3 then
        L2_3 = L8_1
        L3_3 = 1
        L4_3 = 3
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 == 1 then
          L2_3 = L15_2
          L3_3 = EAT_LOOP1_SPIT_BONE_FRONT
          L2_3(L3_3)
        elseif L1_3 == 1 then
          L2_3 = L15_2
          L3_3 = EAT_LOOP2_FRONT
          L2_3(L3_3)
        else
          L2_3 = L15_2
          L3_3 = EAT_LOOP1_FRONT
          L2_3(L3_3)
        end
      elseif L1_3 == 1 then
        L2_3 = L15_2
        L3_3 = EAT_LOOP2_FRONT
        L2_3(L3_3)
      else
        L2_3 = L15_2
        L3_3 = EAT_LOOP1_FRONT
        L2_3(L3_3)
      end
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L3_3 = L2_3
      L2_3 = L2_3.play
      L4_3 = 1
      L5_3 = L99_2
      L2_3(L3_3, L4_3, L5_3)
    end
  end

  function L97_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L8_2
    L1_3 = "start eating"
    L0_3(L1_3)
    L0_3 = L7_2
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    L0_3.eatStartTimestamp = L1_3

    function L0_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = EAT_PART2_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L99_2
      L0_4(L1_4, L2_4, L3_4)
    end

    function L1_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L15_2
      L1_4 = EAT_PART1_FRONT
      L0_4(L1_4)
      L0_4 = L7_2
      L0_4 = L0_4.currentTimeline
      L1_4 = L0_4
      L0_4 = L0_4.play
      L2_4 = 1
      L3_4 = L0_3
      L0_4(L1_4, L2_4, L3_4)
    end

    L2_3 = L24_2
    L3_3 = WORLD_WIDTH
    L3_3 = L3_3 / 2
    L3_3 = L3_3 - 50
    L4_3 = L1_3
    L5_3 = 60
    L2_3(L3_3, L4_3, L5_3)
  end

  function L98_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "burp"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = EAT_BURP_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L99_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L100_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L8_2
    L1_3 = "go to bed"
    L0_3(L1_3)
    L0_3 = L7_2
    L1_3 = system
    L1_3 = L1_3.getTimer
    L1_3 = L1_3()
    L0_3.sleepStartTimestamp = L1_3

    function L0_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = SLEEP_NIGHT_PART3_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L101_2
      L1_4(L2_4, L3_4, L4_4)
    end

    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = SLEEP_NIGHT_PART2_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L0_3
      L1_4(L2_4, L3_4, L4_4)
    end

    function L2_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = SLEEP_NIGHT_PART1_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L1_3
      L1_4(L2_4, L3_4, L4_4)
    end

    L3_3 = L24_2
    L4_3 = WORLD_WIDTH
    L4_3 = L4_3 / 2
    L4_3 = L4_3 - 34
    L5_3 = L2_3
    L6_3 = 40
    L3_3(L4_3, L5_3, L6_3)
  end

  function L101_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L8_2
    L1_3 = "sleep"
    L0_3(L1_3)
    L0_3 = system
    L0_3 = L0_3.getTimer
    L0_3 = L0_3()

    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = SLEEP_NIGHT_END_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L32_2
      L1_4(L2_4, L3_4, L4_4)
    end

    L2_3 = L7_2
    L2_3 = L2_3.sleepStartTimestamp
    L2_3 = L0_3 - L2_3
    L3_3 = MAX_SLEEP_NIGHT_TIME_DELTA
    if L2_3 > L3_3 then
      L2_3 = L15_2
      L3_3 = SLEEP_NIGHT_WAKE_FRONT
      L2_3(L3_3)
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L3_3 = L2_3
      L2_3 = L2_3.play
      L4_3 = 1
      L5_3 = L1_3
      L2_3(L3_3, L4_3, L5_3)
    else
      L2_3 = L15_2
      L3_3 = SLEEP_NIGHT_LOOP_FRONT
      L2_3(L3_3)
      L2_3 = L7_2
      L2_3 = L2_3.currentTimeline
      L3_3 = L2_3
      L2_3 = L2_3.play
      L4_3 = 1
      L5_3 = L101_2
      L2_3(L3_3, L4_3, L5_3)
    end
  end

  function L102_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "snore"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = SLEEP_NIGHT_SNORE_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L101_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L103_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = L8_2
    L1_3 = "clean the screen"
    L0_3(L1_3)

    function L0_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = CLEAN2_END_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L32_2
      L1_4(L2_4, L3_4, L4_4)
    end

    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = CLEAN2_START_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L0_3
      L1_4(L2_4, L3_4, L4_4)
    end

    function L2_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = CLEAN1_END_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L1_3
      L1_4(L2_4, L3_4, L4_4)
    end

    L3_3 = nil
    L4_3 = nil

    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L1_4 = L7_2
      L1_4 = L1_4.fingerprintImages
      L1_4 = #L1_4
      if 6 < L1_4 then
        L2_4 = L1_4
        L3_4 = L1_4 - 3
        L4_4 = -1
        for L5_4 = L2_4, L3_4, L4_4 do
          L6_4 = L7_2
          L6_4 = L6_4.fingerprintImages
          L6_4 = L6_4[L5_4]
          L7_4 = L6_4
          L6_4 = L6_4.removeSelf
          L6_4(L7_4)
          L6_4 = L7_2
          L6_4 = L6_4.fingerprintImages
          L6_4[L5_4] = nil
        end
        L2_4 = L4_3
        L2_4()
      elseif 2 < L1_4 then
        L2_4 = L1_4
        L3_4 = L1_4 - 1
        L4_4 = -1
        for L5_4 = L2_4, L3_4, L4_4 do
          L6_4 = L7_2
          L6_4 = L6_4.fingerprintImages
          L6_4 = L6_4[L5_4]
          L7_4 = L6_4
          L6_4 = L6_4.removeSelf
          L6_4(L7_4)
          L6_4 = L7_2
          L6_4 = L6_4.fingerprintImages
          L6_4[L5_4] = nil
        end
        L2_4 = L4_3
        L2_4()
      elseif 0 < L1_4 then
        L2_4 = L7_2
        L2_4 = L2_4.fingerprintImages
        L2_4 = L2_4[L1_4]
        L3_4 = L2_4
        L2_4 = L2_4.removeSelf
        L2_4(L3_4)
        L2_4 = L7_2
        L2_4 = L2_4.fingerprintImages
        L2_4[L1_4] = nil
        L2_4 = L4_3
        L2_4()
      else
        L2_4 = L7_2
        L3_4 = {}
        L2_4.fingerprintImages = L3_4
        L2_4 = L2_3
        L2_4()
      end
    end

    function L4_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = CLEAN1_LOOP_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L3_3
      L1_4(L2_4, L3_4, L4_4)
    end

    function L5_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L15_2
      L2_4 = CLEAN1_PART2_FRONT
      L1_4(L2_4)
      L1_4 = L7_2
      L1_4 = L1_4.currentTimeline
      L2_4 = L1_4
      L1_4 = L1_4.play
      L3_4 = 1
      L4_4 = L4_3
      L1_4(L2_4, L3_4, L4_4)
    end

    function L6_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = L24_2
      L2_4 = WORLD_WIDTH
      L2_4 = L2_4 / 2
      L2_4 = L2_4 - 45
      L3_4 = L5_3
      L4_4 = 10
      L1_4(L2_4, L3_4, L4_4)
    end

    L7_3 = L7_2
    L7_3.isPlayReactionAnim = true
    L7_3 = L15_2
    L8_3 = CLEAN1_PART1_FRONT
    L7_3(L8_3)
    L7_3 = L7_2
    L7_3 = L7_3.currentTimeline
    L8_3 = L7_3
    L7_3 = L7_3.play
    L9_3 = 35
    L10_3 = L6_3
    L7_3(L8_3, L9_3, L10_3)
  end

  function L107_2()
    local L0_3, L1_3, L2_3
    L0_3 = L8_2
    L1_3 = "start fart"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = FART_PART1_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 0
    L0_3(L1_3, L2_3)
  end

  function L108_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "fart"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = FART_PART2_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L32_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L104_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L8_2
    L1_3 = "cheeky"
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.lastCheekyAnimation
    while true do
      L1_3 = L7_2
      L1_3 = L1_3.lastCheekyAnimation
      if L0_3 ~= L1_3 then
        break
      end
      L1_3 = L8_1
      L2_3 = 1
      L3_3 = CHEEKY_ANIMS
      L3_3 = #L3_3
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = CHEEKY_ANIMS
      L0_3 = L2_3[L1_3]
    end
    L1_3 = L15_2
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = CHEEKY_VUVUZELA_FRONT
    if L0_3 == L1_3 then
      L1_3 = L7_2
      L1_3 = L1_3.orientationController
      L2_3 = L1_3
      L1_3 = L1_3.getMoveRightDirection
      L1_3 = L1_3(L2_3)
      L2_3 = L1_3.x
      L2_3 = L2_3 * 100
      L3_3 = L1_3.y
      L3_3 = L3_3 * 100
      L4_3 = L17_2
      L5_3 = L2_3
      L6_3 = L3_3
      L4_3 = L4_3(L5_3, L6_3)
      if not L4_3 then
        L4_3 = L7_2
        L4_3 = L4_3.currentTimeline
        L4_3 = L4_3.group
        compat.setProp(L4_3, "xScale", -1)
      else
        L4_3 = L7_2
        L4_3 = L4_3.currentTimeline
        L4_3 = L4_3.group
        compat.setProp(L4_3, "xScale", 1)
      end
    end
    L1_3 = L7_2
    L1_3.lastCheekyAnimation = L0_3
    L1_3 = CHEEKY_TAKE_PIC_FRONT
    if L0_3 ~= L1_3 then
      L1_3 = L7_2
      L1_3 = L1_3.currentTimeline
      L2_3 = L1_3
      L1_3 = L1_3.play
      L3_3 = 1
      L4_3 = L105_2
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = L7_2
      L1_3 = L1_3.currentTimeline
      L2_3 = L1_3
      L1_3 = L1_3.play
      L3_3 = 1
      L4_3 = L32_2
      L1_3(L2_3, L3_3, L4_3)
    end
  end

  function L105_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "cheeky laugh"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = CHEEKY_END_LAUGH_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L32_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L106_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_2
    L1_3 = "cheeky refuse"
    L0_3(L1_3)
    L0_3 = L15_2
    L1_3 = CHEEKY_REFUSE_FRONT
    L0_3(L1_3)
    L0_3 = L7_2
    L0_3 = L0_3.currentTimeline
    L1_3 = L0_3
    L0_3 = L0_3.play
    L2_3 = 1
    L3_3 = L32_2
    L0_3(L1_3, L2_3, L3_3)
  end

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.currentTimeline
    L1_3 = L1_3.x
    L2_3 = A0_3.currentTimeline
    L2_3 = L2_3.y
    return L1_3, L2_3
  end

  L7_2.getCurrentPosition = L109_2

  function L109_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = A0_3.currentTimeline
    L4_3 = L3_3
    L3_3 = L3_3.containsPoint
    L5_3 = A1_3
    L6_3 = A2_3
    return L3_3(L4_3, L5_3, L6_3)
  end

  L7_2.containsPoint = L109_2

  function L109_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L5_3 = A0_3.currentTimeline
    L6_3 = L5_3
    L5_3 = L5_3.containsPointAt
    L7_3 = A1_3
    L8_3 = A2_3
    L9_3 = A3_3
    L10_3 = A4_3
    return L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
  end

  L7_2.containsPointAt = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.currentTimeline
    L2_3 = A0_3.timelines
    L3_3 = SCRATCH_BELLY_FRONT
    L2_3 = L2_3[L3_3]
    L1_3 = L1_3 == L2_3
    return L1_3
  end

  L7_2.isStrokingBelly = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.currentTimeline
    L2_3 = A0_3.timelines
    L3_3 = START_FALL_FRONT
    L2_3 = L2_3[L3_3]
    L1_3 = L1_3 == L2_3
    if not L1_3 then
      L2_3 = A0_3.currentTimeline
      L3_3 = A0_3.timelines
      L4_3 = FALL_FRONT
      L3_3 = L3_3[L4_3]
      L1_3 = L2_3 == L3_3
    end
    return L1_3
  end

  L7_2.isFallingDown = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.currentTimeline
    L2_3 = A0_3.timelines
    L3_3 = PRESS_FLAT_LOOP_FRONT
    L2_3 = L2_3[L3_3]
    if L1_3 == L2_3 then
      L1_3 = true
      return L1_3
    else
      L1_3 = A0_3.currentTimeline
      L2_3 = A0_3.timelines
      L3_3 = STRETCH_LOOP_FRONT
      L2_3 = L2_3[L3_3]
      if L1_3 == L2_3 then
        L1_3 = true
        return L1_3
      else
        L1_3 = A0_3.currentTimeline
        L2_3 = A0_3.timelines
        L3_3 = CIRCLE_LOOP_SIDE
        L2_3 = L2_3[L3_3]
        if L1_3 == L2_3 then
          L1_3 = true
          return L1_3
        else
          L1_3 = A0_3.currentTimeline
          L2_3 = A0_3.timelines
          L3_3 = MAKE_THIN_LOOP_FRONT
          L2_3 = L2_3[L3_3]
          if L1_3 == L2_3 then
            L1_3 = true
            return L1_3
          else
            L1_3 = A0_3.currentTimeline
            L2_3 = A0_3.timelines
            L3_3 = MAKE_FAT_LOOP_FRONT
            L2_3 = L2_3[L3_3]
            if L1_3 == L2_3 then
              L1_3 = true
              return L1_3
            else
              L1_3 = A0_3.currentTimeline
              L2_3 = A0_3.timelines
              L3_3 = TURN_OFF_LIGHT_WALK_SIDE
              L2_3 = L2_3[L3_3]
              if L1_3 == L2_3 then
                L1_3 = true
                return L1_3
              end
            end
          end
        end
      end
    end
    L1_3 = false
    return L1_3
  end

  L7_2.isInLoopState = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.currentTimeline
    L2_3 = A0_3.timelines
    L3_3 = WALK_SIDE
    L2_3 = L2_3[L3_3]
    if L1_3 == L2_3 then
      L1_3 = true
      L2_3 = A0_3.timelines
      L3_3 = WALK_SIDE
      L2_3 = L2_3[L3_3]
      L2_3 = L2_3.group
      L2_3 = L2_3.xScale
      L2_3 = L2_3 == 1
      return L1_3, L2_3
    end
    L1_3 = false
    return L1_3
  end

  L7_2.isWalking = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = not A0_3.isPunchShowReaction and not A0_3:isInLoopState() and not A0_3:isFallingDown()
    return L1_3
  end

  L7_2.allowPunch = L109_2
  do local f = L7_2.allowPunch; L7_2.allowPunch = function(self, ...) local r = f(self, ...); if TOUCH_DEBUG then print("[animegg] allowPunch -> " .. tostring(r) .. " offended=" .. tostring(self.isOffended) .. " tl=" .. tostring(self.currentTimeline and self.currentTimeline.name)) end; return r end end

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.currentTimeline
    L2_3 = A0_3.timelines
    L3_3 = PRESS_FLAT_LOOP_FRONT
    L2_3 = L2_3[L3_3]
    if L1_3 == L2_3 then
      L1_3 = L51_2
      L1_3()
    else
      L1_3 = A0_3.currentTimeline
      L2_3 = A0_3.timelines
      L3_3 = STRETCH_LOOP_FRONT
      L2_3 = L2_3[L3_3]
      if L1_3 == L2_3 then
        L1_3 = L54_2
        L1_3()
      else
        L1_3 = A0_3.currentTimeline
        L2_3 = A0_3.timelines
        L3_3 = CIRCLE_LOOP_SIDE
        L2_3 = L2_3[L3_3]
        if L1_3 == L2_3 then
          L1_3 = L68_2
          L1_3()
        else
          L1_3 = A0_3.currentTimeline
          L2_3 = A0_3.timelines
          L3_3 = MAKE_THIN_LOOP_FRONT
          L2_3 = L2_3[L3_3]
          if L1_3 == L2_3 then
            L1_3 = L57_2
            L1_3()
          else
            L1_3 = A0_3.currentTimeline
            L2_3 = A0_3.timelines
            L3_3 = MAKE_FAT_LOOP_FRONT
            L2_3 = L2_3[L3_3]
            if L1_3 == L2_3 then
              L1_3 = L59_2
              L1_3()
            else
              L1_3 = A0_3.currentTimeline
              L2_3 = A0_3.timelines
              L3_3 = TURN_OFF_LIGHT_WALK_SIDE
              L2_3 = L2_3[L3_3]
              if L1_3 == L2_3 then
                L1_3 = L90_2
                L1_3()
              end
            end
          end
        end
      end
    end
  end

  L7_2.recoverFromLoopState = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.currentTimeline
    L2_3 = A0_3.timelines
    L3_3 = BREATHE_FRONT
    L2_3 = L2_3[L3_3]
    L1_3 = L1_3 == L2_3
    if not L1_3 then
      L2_3 = A0_3.currentTimeline
      L3_3 = A0_3.timelines
      L4_3 = BREATHE_CONCERNED_FRONT
      L3_3 = L3_3[L4_3]
      L1_3 = L2_3 == L3_3
    end
    if not L1_3 then
      L2_3 = A0_3.currentTimeline
      L3_3 = A0_3.timelines
      L4_3 = BREATHE_ANNOYED_FRONT
      L3_3 = L3_3[L4_3]
      L1_3 = L2_3 == L3_3
    end
    if not L1_3 then
      L2_3 = A0_3.currentTimeline
      L3_3 = A0_3.timelines
      L4_3 = CHEW_GUM_FRONT
      L3_3 = L3_3[L4_3]
      L1_3 = L2_3 == L3_3
    end
    if not L1_3 then
      L2_3 = A0_3.currentTimeline
      L3_3 = A0_3.timelines
      L4_3 = YAWN_LOOP_FRONT
      L3_3 = L3_3[L4_3]
      L1_3 = L2_3 == L3_3
    end
    return L1_3
  end

  L7_2.allowForceWalk = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L2_3 = A0_3
    L1_3 = A0_3.allowForceWalk
    return L1_3(L2_3)
  end

  L7_2.allowCleanScreen = L109_2

  function L109_2(A0_3, A1_3)
    local L2_3
    if A1_3 then
      L2_3 = L21_2
      L2_3()
    else
      L2_3 = L22_2
      L2_3()
    end
  end

  L7_2.stopAndPlayWalk = L109_2

  function L109_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L3_3 = pairs
    L4_3 = A0_3.timelines
    L3_3, L4_3, L5_3 = L3_3(L4_3)
    for L6_3, L7_3 in L3_3, L4_3, L5_3 do
      L9_3 = L7_3
      L8_3 = L7_3.translate
      L10_3 = A1_3
      L11_3 = A2_3
      L8_3(L9_3, L10_3, L11_3)
    end
    L3_3 = A0_3.walkBorderOffset
    L3_3 = L3_3 + A1_3
    A0_3.walkBorderOffset = L3_3
  end

  L7_2.translate = L109_2

  function L109_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    A0_3.isRotating = true
    L3_3 = A0_3
    L2_3 = A0_3.rotateAt
    L4_3 = A1_3
    L5_3 = CENTER
    L5_3 = L5_3.x
    L6_3 = CENTER
    L6_3 = L6_3.y
    L2_3(L3_3, L4_3, L5_3, L6_3)
    A0_3.isRotating = false
  end

  L7_2.rotate = L109_2

  function L109_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    A0_3.isRotating = true
    L4_3 = pairs
    L5_3 = A0_3.timelines
    L4_3, L5_3, L6_3 = L4_3(L5_3)
    for L7_3, L8_3 in L4_3, L5_3, L6_3 do
      L10_3 = L8_3
      L9_3 = L8_3.rotateAt
      L11_3 = A1_3
      L12_3 = A2_3
      L13_3 = A3_3
      L9_3(L10_3, L11_3, L12_3, L13_3)
    end
    L4_3 = math
    L4_3 = L4_3.rad
    L5_3 = A1_3
    L4_3 = L4_3(L5_3)
    L5_3 = A0_3.directionX
    L6_3 = math
    L6_3 = L6_3.cos
    L7_3 = L4_3
    L6_3 = L6_3(L7_3)
    L5_3 = L5_3 * L6_3
    L6_3 = A0_3.directionY
    L7_3 = math
    L7_3 = L7_3.sin
    L8_3 = L4_3
    L7_3 = L7_3(L8_3)
    L6_3 = L6_3 * L7_3
    L5_3 = L5_3 - L6_3
    L6_3 = A0_3.directionX
    L7_3 = math
    L7_3 = L7_3.sin
    L8_3 = L4_3
    L7_3 = L7_3(L8_3)
    L6_3 = L6_3 * L7_3
    L7_3 = A0_3.directionY
    L8_3 = math
    L8_3 = L8_3.cos
    L9_3 = L4_3
    L8_3 = L8_3(L9_3)
    L7_3 = L7_3 * L8_3
    L6_3 = L6_3 + L7_3
    A0_3.directionX = L5_3
    A0_3.directionY = L6_3
    A0_3.isRotating = false
  end

  L7_2.rotateAt = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.happinessIncreaseTimer
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = A0_3.happinessIncreaseTimer
      L1_3(L2_3)
      A0_3.happinessIncreaseTimer = nil
    end
    L1_3 = timer
    L1_3 = L1_3.performWithDelay
    L2_3 = INCREASE_HAPPINESS_TIME_DELTA
    L3_3 = L12_2
    L4_3 = 0
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    A0_3.happinessIncreaseTimer = L1_3
    L1_3 = L32_2
    L1_3()
  end

  L7_2.play = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.revertOffendedTimer
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = A0_3.revertOffendedTimer
      L1_3(L2_3)
      A0_3.revertOffendedTimer = nil
    end
    A0_3.isPlayReactionAnim = true
    L1_3 = A0_3.isOffended
    if L1_3 then
      L1_3 = A0_3.currentTimeline
      L2_3 = L1_3
      L1_3 = L1_3.stop
      L1_3(L2_3)
      L1_3 = L10_2
      L2_3 = HAPPINESS_CHANGE_STROKE_BELLY
      L1_3(L2_3)
      L1_3 = L83_2
      L2_3 = L42_2
      L1_3(L2_3)
    else
      L1_3 = A0_3.currentTimeline
      L2_3 = L1_3
      L1_3 = L1_3.stop
      L1_3(L2_3)
      L1_3 = L10_2
      L2_3 = HAPPINESS_CHANGE_STROKE_BELLY
      L1_3(L2_3)
      L1_3 = L42_2
      L1_3()
    end
  end

  L7_2.stopAndPlayStrokeBelly = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    L1_3 = L32_2
    L1_3()
  end

  L7_2.stopAndPlayBreathing = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isOffended
    if L1_3 then
      L1_3 = L81_2
      L1_3()
    else
      L2_3 = A0_3
      L1_3 = A0_3.allowPunch
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = A0_3.currentTimeline
        L2_3 = L1_3
        L1_3 = L1_3.stop
        L1_3(L2_3)
        L1_3 = L10_2
        L2_3 = HAPPINESS_CHANGE_PUNCH_FACE
        L1_3(L2_3)
        L1_3 = L38_2
        L1_3()
      end
    end
  end

  L7_2.stopAndPlayPunchFace = L109_2
  do local f = L7_2.stopAndPlayPunchFace; L7_2.stopAndPlayPunchFace = function(self, ...) local r = f(self, ...); if TOUCH_DEBUG then print("[animegg] stopAndPlayPunchFace -> " .. tostring(r) .. " offended=" .. tostring(self.isOffended) .. " tl=" .. tostring(self.currentTimeline and self.currentTimeline.name)) end; return r end end

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isOffended
    if L1_3 then
      L1_3 = L81_2
      L1_3()
    else
      L2_3 = A0_3
      L1_3 = A0_3.allowPunch
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = A0_3.currentTimeline
        L2_3 = L1_3
        L1_3 = L1_3.stop
        L1_3(L2_3)
        L1_3 = L10_2
        L2_3 = HAPPINESS_CHANGE_PUNCH_STOMACH
        L1_3(L2_3)
        L1_3 = L39_2
        L1_3()
      end
    end
  end

  L7_2.stopAndPlayPunchStomach = L109_2
  do local f = L7_2.stopAndPlayPunchStomach; L7_2.stopAndPlayPunchStomach = function(self, ...) local r = f(self, ...); if TOUCH_DEBUG then print("[animegg] stopAndPlayPunchStomach -> " .. tostring(r) .. " offended=" .. tostring(self.isOffended) .. " tl=" .. tostring(self.currentTimeline and self.currentTimeline.name)) end; return r end end

  function L109_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.isOffended
    if L2_3 then
      L2_3 = L81_2
      L2_3()
    else
      L3_3 = A0_3
      L2_3 = A0_3.allowPunch
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L2_3 = A0_3.currentTimeline
        L3_3 = L2_3
        L2_3 = L2_3.stop
        L2_3(L3_3)
        L2_3 = L10_2
        L3_3 = HAPPINESS_CHANGE_KICK_FOOT
        L2_3(L3_3)
        L2_3 = L40_2
        L3_3 = A1_3
        L2_3(L3_3)
      end
    end
  end

  L7_2.stopAndPlayKickFoot = L109_2
  do local f = L7_2.stopAndPlayKickFoot; L7_2.stopAndPlayKickFoot = function(self, ...) local r = f(self, ...); if TOUCH_DEBUG then print("[animegg] stopAndPlayKickFoot -> " .. tostring(r) .. " offended=" .. tostring(self.isOffended) .. " tl=" .. tostring(self.currentTimeline and self.currentTimeline.name)) end; return r end end

  function L109_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.isOffended
    if L2_3 then
      return
    end
    L2_3 = A0_3.currentTimeline
    L3_3 = L2_3
    L2_3 = L2_3.stop
    L2_3(L3_3)
    A0_3.isPlayReactionAnim = true
    L2_3 = L50_2
    L3_3 = A1_3
    L2_3(L3_3)
  end

  L7_2.stopAndPlayStartPressFlat = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isOffended
    if L1_3 then
      return
    end
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    L1_3 = L49_2
    L1_3()
  end

  L7_2.stopAndPlayPressFlat = L109_2

  function L109_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.isOffended
    if L2_3 then
      return
    end
    L2_3 = A0_3.currentTimeline
    L3_3 = L2_3
    L2_3 = L2_3.stop
    L2_3(L3_3)
    A0_3.isPlayReactionAnim = true
    L2_3 = L53_2
    L3_3 = A1_3
    L2_3(L3_3)
  end

  L7_2.stopAndPlayStartStretch = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isOffended
    if L1_3 then
      return
    end
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    L1_3 = L52_2
    L1_3()
  end

  L7_2.stopAndPlayStretch = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isOffended
    if L1_3 then
      return
    end
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    L1_3 = L55_2
    L1_3()
  end

  L7_2.stopAndPlayStretchLoop = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isOffended
    if L1_3 then
      return
    end
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    L1_3 = L56_2
    L1_3()
  end

  L7_2.stopAndPlayMakeThin = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isOffended
    if L1_3 then
      return
    end
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    L1_3 = L58_2
    L1_3()
  end

  L7_2.stopAndPlayMakeFat = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isOffended
    if L1_3 then
      return
    end
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    L1_3 = L10_2
    L2_3 = HAPPINESS_CHANGE_FALL_DOWN
    L1_3(L2_3)
    L1_3 = L27_2
    L1_3()
  end

  L7_2.stopAndPlayFallDown = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    L1_3 = L61_2
    L1_3()
  end

  L7_2.stopAndPlayFallOnScreen = L109_2

  function L109_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L4_3 = system
    L4_3 = L4_3.getTimer
    L4_3 = L4_3()
    L5_3 = A0_3.refusableAnimHistory
    L5_3 = L5_3[1]
    if not L5_3 then
      L6_3 = A0_3.currentTimeline
      L7_3 = L6_3
      L6_3 = L6_3.stop
      L6_3(L7_3)
      L6_3 = table
      L6_3 = L6_3.insert
      L7_3 = A0_3.refusableAnimHistory
      L8_3 = 1
      L9_3 = {}
      L9_3.name = A2_3
      L9_3.timestamp = L4_3
      L6_3(L7_3, L8_3, L9_3)
      A0_3.isPlayReactionAnim = true
      L6_3 = L10_2
      L7_3 = A3_3
      L6_3(L7_3)
      L6_3 = A1_3
      L6_3()
    else
      L6_3 = 0
      L7_3 = A0_3.refusableAnimHistory
      L7_3 = #L7_3
      L8_3 = 1
      L9_3 = -1
      for L10_3 = L7_3, L8_3, L9_3 do
        L11_3 = A0_3.refusableAnimHistory
        L11_3 = L11_3[L10_3]
        L12_3 = L11_3.timestamp
        L12_3 = L4_3 - L12_3
        L13_3 = REFUSE_MAX_TIME_DELTA
        if L12_3 > L13_3 then
          L12_3 = table
          L12_3 = L12_3.remove
          L13_3 = A0_3.refusableAnimHistory
          L14_3 = L10_3
          L12_3(L13_3, L14_3)
        else
          L12_3 = L11_3.name
          if L12_3 == A2_3 then
            L6_3 = L6_3 + 1
          end
        end
      end
      L7_3 = REFUSE_MAX_TIME_DELTA
      L7_3 = L6_3 / L7_3
      L8_3 = REFUSE_COUNT_PER_MAX_TIME_DELTA_MIN_RATIO
      if L7_3 >= L8_3 then
        L8_3 = A0_3.currentTimeline
        L9_3 = L8_3
        L8_3 = L8_3.stop
        L8_3(L9_3)
        A0_3.isPlayReactionAnim = true
        L8_3 = L106_2
        L8_3()
      else
        L8_3 = A0_3.currentTimeline
        L9_3 = L8_3
        L8_3 = L8_3.stop
        L8_3(L9_3)
        L8_3 = table
        L8_3 = L8_3.insert
        L9_3 = A0_3.refusableAnimHistory
        L10_3 = 1
        L11_3 = {}
        L11_3.name = A2_3
        L11_3.timestamp = L4_3
        L8_3(L9_3, L10_3, L11_3)
        A0_3.isPlayReactionAnim = true
        L8_3 = L10_2
        L9_3 = A3_3
        L8_3(L9_3)
        L8_3 = A1_3
        L8_3()
      end
    end
  end

  L7_2.playRefusable = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_3
    L1_3 = A0_3.playRefusable
    L3_3 = L34_2
    L4_3 = "kendama"
    L5_3 = HAPPINESS_CHANGE_KENDAMA
    L1_3(L2_3, L3_3, L4_3, L5_3)
  end

  L7_2.stopAndPlayKendama = L109_2

  function L109_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L3_3 = A0_3
    L2_3 = A0_3.playRefusable

    function L4_3()
      local L0_4, L1_4
      L0_4 = L67_2
      L1_4 = A1_3
      L0_4(L1_4)
    end

    L5_3 = "circle"
    L6_3 = HAPPINESS_CHANGE_CIRCLE
    L2_3(L3_3, L4_3, L5_3, L6_3)
  end

  L7_2.stopAndPlayCircle = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_3
    L1_3 = A0_3.playRefusable
    L3_3 = L77_2
    L4_3 = "tarzan"
    L5_3 = HAPPINESS_CHANGE_TARZAN
    L1_3(L2_3, L3_3, L4_3, L5_3)
  end

  L7_2.stopAndPlayTarzan = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_3
    L1_3 = A0_3.playRefusable
    L3_3 = L91_2
    L4_3 = "dance_fast"
    L5_3 = HAPPINESS_CHANGE_FAST_DANCE
    L1_3(L2_3, L3_3, L4_3, L5_3)
  end

  L7_2.stopAndPlayDanceFast = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_3
    L1_3 = A0_3.playRefusable
    L3_3 = L92_2
    L4_3 = "dance_slow"
    L5_3 = HAPPINESS_CHANGE_SLOW_DANCE
    L1_3(L2_3, L3_3, L4_3, L5_3)
  end

  L7_2.stopAndPlayDanceSlow = L109_2

  function L109_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L3_3 = A0_3
    L2_3 = A0_3.playRefusable

    function L4_3()
      local L0_4, L1_4
      L0_4 = L93_2
      L1_4 = A1_3
      L0_4(L1_4)
    end

    L5_3 = "handstand"
    L6_3 = HAPPINESS_CHANGE_CIRCLE
    L2_3(L3_3, L4_3, L5_3, L6_3)
  end

  L7_2.stopAndPlayHandstand = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    L1_3 = L62_2
    L1_3()
  end

  L7_2.stopAndPlayLeaveAfterFallOnScreen = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.currentTimeline
    L2_3 = A0_3.timelines
    L3_3 = HANG_DOWN_FALL_LOOP
    L2_3 = L2_3[L3_3]
    if L1_3 == L2_3 then
      L1_3 = L88_2
      L1_3()
    end
  end

  L7_2.stopAndPlayTouchHangFromScreen = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    A0_3.isHangFromScreen = true
    A0_3.isPlayReactionAnim = true
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    L1_3 = L84_2
    L1_3()
  end

  L7_2.stopAndPlayHangFromScreen = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    L1_3 = L85_2
    L1_3()
  end

  L7_2.stopAndPlayLeaveAfterHangFromScreen = L109_2

  function L109_2(A0_3)
    local L1_3
    L1_3 = L86_2
    L1_3()
  end

  L7_2.stopAndPlayHangFromScreenMoveLeft = L109_2

  function L109_2(A0_3)
    local L1_3
    L1_3 = L87_2
    L1_3()
  end

  L7_2.stopAndPlayHangFromScreenMoveRight = L109_2

  function L109_2(A0_3)
    local L1_3
    L1_3 = L64_2
    L1_3()
  end

  L7_2.stopAndPlayFallOnScreenMoveLeft = L109_2

  function L109_2(A0_3)
    local L1_3
    L1_3 = L65_2
    L1_3()
  end

  L7_2.stopAndPlayFallOnScreenMoveRight = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isOffended
    if L1_3 then
      L1_3 = L81_2
      L1_3()
    else
      L1_3 = A0_3.isEating
      if L1_3 then
        L1_3 = L98_2
        L1_3()
      else
        L1_3 = A0_3.isSleeping
        if L1_3 then
          L1_3 = L102_2
          L1_3()
        else
          L1_3 = A0_3.currentTimeline
          L2_3 = L1_3
          L1_3 = L1_3.stop
          L1_3(L2_3)
          A0_3.isPlayReactionAnim = true
          A0_3.isShaking = true
          L1_3 = L35_2
          L1_3()
        end
      end
    end
  end

  L7_2.stopAndPlayShaking = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    L1_3 = L10_2
    L2_3 = HAPPINESS_CHANGE_SHORT_SHAKE
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    A0_3.isShaking = false
    L1_3 = L37_2
    L1_3()
  end

  L7_2.stopAndPlayNausea = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    L1_3 = L10_2
    L2_3 = HAPPINESS_CHANGE_LONG_SHAKE
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    A0_3.isShaking = false
    L1_3 = L36_2
    L1_3()
  end

  L7_2.stopAndPlayDizzy = L109_2

  function L109_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.isOffended
    if L2_3 then
      return
    end
    L2_3 = L10_2
    L3_3 = HAPPINESS_CHANGE_TUMBLE
    L2_3(L3_3)
    if not A1_3 then
      A1_3 = false
    end
    L2_3 = L60_2
    L3_3 = A1_3
    L2_3(L3_3)
  end

  L7_2.stopAndPlayTumble = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    A0_3.isDragging = true
    L1_3 = L70_2
    L1_3()
  end

  L7_2.stopAndPlayStartDragFromHair = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    A0_3.isDragging = false
    L1_3 = L71_2
    L1_3()
  end

  L7_2.stopAndPlayStopDragFromHair = L109_2

  function L109_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = L10_2
    L4_3 = HAPPINESS_CHANGE_DRAG_THROW_OUT
    L3_3(L4_3)
    L3_3 = L72_2
    L4_3 = A1_3
    L5_3 = A2_3
    L3_3(L4_3, L5_3)
  end

  L7_2.stopAndPlayThrowDragFromHair = L109_2

  function L109_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = L10_2
    L4_3 = HAPPINESS_CHANGE_DRAG_THROW_OUT
    L3_3(L4_3)
    L3_3 = L75_2
    L4_3 = A1_3
    L5_3 = A2_3
    L3_3(L4_3, L5_3)
  end

  L7_2.stopAndPlayThrowDragFromShirt = L109_2

  function L109_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.currentTimeline
    L3_3 = L2_3
    L2_3 = L2_3.stop
    L2_3(L3_3)
    A0_3.isPlayReactionAnim = true
    A0_3.isDragging = true
    L2_3 = L73_2
    L3_3 = A1_3
    L2_3(L3_3)
  end

  L7_2.stopAndPlayStartDragFromShirt = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    A0_3.isDragging = false
    L1_3 = L74_2
    L1_3()
  end

  L7_2.stopAndPlayStopDragFromShirt = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isOffended
    if L1_3 then
      return
    end
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    L1_3 = L95_2
    L1_3()
  end

  L7_2.stopAndPlayRain = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    L1_3 = L76_2
    L1_3()
  end

  L7_2.stopAndPlayMoonDance = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.revertOffendedTimer
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = A0_3.revertOffendedTimer
      L1_3(L2_3)
      A0_3.revertOffendedTimer = nil
    end
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    L1_3 = L10_2
    L2_3 = HAPPINESS_CHANGE_KISS
    L1_3(L2_3)
    A0_3.isOffended = false
    A0_3.isPlayReactionAnim = true
    L1_3 = L94_2
    L1_3()
  end

  L7_2.stopAndPlayKiss = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isOffended
    if L1_3 then
      return
    end
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    L1_3 = L89_2
    L1_3()
  end

  L7_2.stopAndPlayTurnOffLight = L109_2
  do local f = L7_2.stopAndPlayTurnOffLight; L7_2.stopAndPlayTurnOffLight = function(self, ...) local r = f(self, ...); if TOUCH_DEBUG then print("[animegg] stopAndPlayTurnOffLight -> " .. tostring(r) .. " offended=" .. tostring(self.isOffended) .. " tl=" .. tostring(self.currentTimeline and self.currentTimeline.name)) end; return r end end

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isOffended
    if L1_3 then
      return
    end
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    L1_3 = L107_2
    L1_3()
  end

  L7_2.stopAndPlayStartFart = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    L1_3 = L108_2
    L1_3()
  end

  L7_2.stopAndPlayFart = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isOffended
    if L1_3 then
      return
    end
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    L1_3 = L10_2
    L2_3 = HAPPINESS_CHANGE_EAT_LUNCH
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    L1_3 = L97_2
    L1_3()
  end

  L7_2.stopAndPlayEat = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.currentTimeline
    L2_3 = A0_3.timelines
    L3_3 = EAT_LOOP1_FRONT
    L2_3 = L2_3[L3_3]
    local __lbl_21 = false
    if L1_3 ~= L2_3 then
      L1_3 = A0_3.currentTimeline
      L2_3 = A0_3.timelines
      L3_3 = EAT_LOOP2_FRONT
      L2_3 = L2_3[L3_3]
      if L1_3 ~= L2_3 then
        __lbl_21 = true
      end
    end
    if not __lbl_21 then
      L1_3 = A0_3.currentTimeline
      L2_3 = L1_3
      L1_3 = L1_3.stop
      L1_3(L2_3)
      L1_3 = L10_2
      L2_3 = HAPPINESS_CHANGE_EAT_BURP
      L1_3(L2_3)
      L1_3 = L98_2
      L1_3()
    end
  end

  L7_2.stopAndPlayEatBurp = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.isOffended
    if L1_3 then
      return
    end
    L1_3 = A0_3.currentTimeline
    L2_3 = L1_3
    L1_3 = L1_3.stop
    L1_3(L2_3)
    L1_3 = L10_2
    L2_3 = HAPPINESS_CHANGE_SLEEP_NIGHT
    L1_3(L2_3)
    A0_3.isPlayReactionAnim = true
    L1_3 = L100_2
    L1_3()
  end

  L7_2.stopAndPlaySleepNight = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.currentTimeline
    L2_3 = A0_3.timelines
    L3_3 = SLEEP_NIGHT_LOOP_FRONT
    L2_3 = L2_3[L3_3]
    if L1_3 == L2_3 then
      L1_3 = A0_3.currentTimeline
      L2_3 = L1_3
      L1_3 = L1_3.stop
      L1_3(L2_3)
      L1_3 = L102_2
      L1_3()
    end
  end

  L7_2.stopAndPlaySleepNightSnore = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.fingerprintImages
    L1_3 = #L1_3
    L2_3 = FINGERPRINT_CLEAN_THRESHOLD
    if L1_3 >= L2_3 then
      L3_3 = A0_3
      L2_3 = A0_3.allowCleanScreen
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L2_3 = A0_3.currentTimeline
        L3_3 = L2_3
        L2_3 = L2_3.stop
        L2_3(L3_3)
        L2_3 = L103_2
        L2_3()
      end
    end
  end

  L7_2.fingerprintAdded = L109_2

  function L109_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = A0_3.currentTimeline
    L4_3 = L3_3
    L3_3 = L3_3.moveTo
    L5_3 = A1_3
    L6_3 = A2_3
    L3_3(L4_3, L5_3, L6_3)
  end

  L7_2.moveTo = L109_2

  function L109_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.happiness
    L2_3 = A1_3 - L2_3
    L3_3 = L10_2
    L4_3 = L2_3
    L3_3(L4_3)
  end

  L7_2.setHappiness = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = A0_3.happinessIncreaseTimer
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = A0_3.happinessIncreaseTimer
      L1_3(L2_3)
      A0_3.happinessIncreaseTimer = nil
    end
    L1_3 = A0_3.revertOffendedTimer
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = A0_3.revertOffendedTimer
      L1_3(L2_3)
      A0_3.revertOffendedTimer = nil
    end
    L1_3 = pairs
    L2_3 = A0_3.timelines
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3, L5_3 in L1_3, L2_3, L3_3 do
      L7_3 = L5_3
      L6_3 = L5_3.destroy
      L6_3(L7_3)
      L6_3 = A0_3.timelines
      L6_3[L4_3] = nil
    end
    L1_3 = A0_3.fingerprintImages
    L1_3 = #L1_3
    L2_3 = 1
    L3_3 = -1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = A0_3.fingerprintImages
      L5_3 = L5_3[L4_3]
      L6_3 = L5_3
      L5_3 = L5_3.removeSelf
      L5_3(L6_3)
      L5_3 = A0_3.fingerprintImages
      L5_3[L4_3] = nil
      L5_3 = table
      L5_3 = L5_3.remove
      L6_3 = A0_3.fingerprintImages
      L7_3 = L4_3
      L5_3(L6_3, L7_3)
    end
    A0_3.configuration = nil
    A0_3.orientationController = nil
    A0_3.happiness = nil
    A0_3.happinessBar = nil
    A0_3.discoveryAccountant = nil
    A0_3.audioController = nil
    A0_3.timelines = nil
    A0_3.currentTimeline = nil
    A0_3.fingerprintImages = nil
    A0_3.refusableAnimHistory = nil
  end

  L7_2.destroy = L109_2

  function L109_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = L8_2
    L2_3 = "WARNING - memory low"
    L1_3(L2_3)
    L1_3 = pairs
    L2_3 = A0_3.timelines
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3, L5_3 in L1_3, L2_3, L3_3 do
      if L5_3 then
        L6_3 = A0_3.currentTimeline
        if L5_3 ~= L6_3 then
          L7_3 = L5_3
          L6_3 = L5_3.freeResources
          L6_3(L7_3)
        end
      end
    end
  end

  L7_2.memoryWarning = L109_2
  return L7_2
end

newAnimegg = L11_1
