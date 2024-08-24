.class public Lcom/android/camera/fragment/beauty/BeautyValues;
.super Ljava/lang/Object;
.source "BeautyValues.java"


# instance fields
.field public mBeautyBodySlim:I

.field public mBeautyButtSlim:I

.field public mBeautyCheekBone:I

.field public mBeautyChin:I

.field public mBeautyComparation:I

.field public mBeautyEnlargeEye:I

.field public mBeautyHairLine:I

.field public mBeautyHeadNarrow:I

.field public mBeautyHeadSlim:I

.field public mBeautyJaw:I

.field public mBeautyLegSlim:I

.field public mBeautyLevel:Ljava/lang/String;

.field public mBeautyLips:I

.field public mBeautyMakeup:I

.field public mBeautyMakeup2Filter:I

.field public mBeautyMakeupLevel:I

.field public mBeautyMakeupType:I

.field public mBeautyModeType:I

.field public mBeautyNeck:I

.field public mBeautyNose:I

.field public mBeautyNoseTip:I

.field public mBeautyRisorius:I

.field public mBeautyShoulderSlim:I

.field public mBeautySkinColor:I

.field public mBeautySkinSmooth:I

.field public mBeautySlimFace:I

.field public mBeautySlimNose:I

.field public mBeautySmile:I

.field public mBeautySolid:I

.field public mBeautyTemple:I

.field public mBeautyWhiten:I

.field public mBeautyWholeBodySlim:I

.field public mMaleMakeupSwitch:I

.field public mNevusWipeSwitch:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/fragment/beauty/BeautyValues;F)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    .line 6
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    .line 7
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    .line 8
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    .line 9
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    .line 10
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    .line 11
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    .line 12
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    .line 13
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    .line 14
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    .line 15
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    .line 16
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    .line 17
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    .line 18
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    .line 19
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    .line 20
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    .line 21
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    .line 22
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    .line 23
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    .line 24
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    .line 25
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    .line 26
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    .line 27
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    .line 28
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    .line 29
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadNarrow:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadNarrow:I

    .line 30
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNoseTip:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNoseTip:I

    .line 31
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyTemple:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyTemple:I

    .line 32
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyCheekBone:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyCheekBone:I

    .line 33
    iget v0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyJaw:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyJaw:I

    .line 34
    iget p1, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getValueByType(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "pref_beauty_head_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v0, "pref_beauty_shoulder_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x19

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "COMPARE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x22

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v0, "pref_beautify_hairline_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v0, "pref_beautify_pupil_line_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v0, "pref_beautify_makeup_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v0, "pref_beautify_blusher_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v0, "pref_beautify_nose_tip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v0, "pref_beautify_skin_color_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v0, "pref_beautify_enlarge_eye_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v0, "pref_beautify_nose_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v0, "pref_beautify_skin_smooth_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v0, "pref_beautify_slim_face_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v0, "pref_beautify_makeups_type_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1d

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v0, "pref_beautify_jaw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v0, "pref_beautify_whiten_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1f

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v0, "pref_beautify_risorius_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v0, "pref_beautify_temple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "key_beauty_leg_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1a

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v0, "pref_beautify_chin_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v0, "pref_beautify_cheekbone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v0, "pref_beautify_lips_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v0, "pref_beautify_neck_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v0, "pref_beautify_makeup_male_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v0, "pref_beautify_makeups_level_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v0, "pref_beautify_slim_nose_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v0, "pref_beautify_nevus_wipe_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x21

    goto :goto_1

    :sswitch_1c
    const-string/jumbo v0, "pref_beautify_down_head_narrow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1d
    const-string/jumbo v0, "pref_beautify_smile_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto :goto_1

    :sswitch_1e
    const-string/jumbo v0, "pref_beauty_whole_body_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1b

    goto :goto_1

    :sswitch_1f
    const-string/jumbo v0, "pref_beauty_butt_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1c

    goto :goto_1

    :sswitch_20
    const-string/jumbo v0, "pref_beautify_jelly_lips_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto :goto_1

    :sswitch_21
    const-string/jumbo v0, "pref_beautify_solid_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto :goto_1

    :sswitch_22
    const-string/jumbo v0, "sub_filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x23

    goto :goto_1

    :sswitch_23
    const-string/jumbo v0, "pref_beauty_body_slim_ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v1

    .line 2
    :pswitch_0
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup2Filter:I

    return p0

    .line 3
    :pswitch_1
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyComparation:I

    return p0

    .line 4
    :pswitch_2
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mNevusWipeSwitch:I

    return p0

    .line 5
    :pswitch_3
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mMaleMakeupSwitch:I

    return p0

    .line 6
    :pswitch_4
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    return p0

    .line 7
    :pswitch_5
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    return p0

    .line 8
    :pswitch_6
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    return p0

    .line 9
    :pswitch_7
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    return p0

    .line 10
    :pswitch_8
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    return p0

    .line 11
    :pswitch_9
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    return p0

    .line 12
    :pswitch_a
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    return p0

    .line 13
    :pswitch_b
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    return p0

    .line 14
    :pswitch_c
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    return p0

    .line 15
    :pswitch_d
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    return p0

    .line 16
    :pswitch_e
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    return p0

    .line 17
    :pswitch_f
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    return p0

    .line 18
    :pswitch_10
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    return p0

    .line 19
    :pswitch_11
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    return p0

    .line 20
    :pswitch_12
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    return p0

    .line 21
    :pswitch_13
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    return p0

    .line 22
    :pswitch_14
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    return p0

    .line 23
    :pswitch_15
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    return p0

    .line 24
    :pswitch_16
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    return p0

    .line 25
    :pswitch_17
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    return p0

    .line 26
    :pswitch_18
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyJaw:I

    return p0

    .line 27
    :pswitch_19
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyCheekBone:I

    return p0

    .line 28
    :pswitch_1a
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyTemple:I

    return p0

    .line 29
    :pswitch_1b
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNoseTip:I

    return p0

    .line 30
    :pswitch_1c
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadNarrow:I

    return p0

    .line 31
    :pswitch_1d
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    return p0

    .line 32
    :pswitch_1e
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    return p0

    .line 33
    :pswitch_1f
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    return p0

    .line 34
    :pswitch_20
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x676e6ee1 -> :sswitch_23
        -0x660f7da9 -> :sswitch_22
        -0x5eed1fcd -> :sswitch_21
        -0x5e6b0daf -> :sswitch_20
        -0x5a8387f2 -> :sswitch_1f
        -0x4b3d8c29 -> :sswitch_1e
        -0x423823b0 -> :sswitch_1d
        -0x3bfb299f -> :sswitch_1c
        -0x39eeb0fa -> :sswitch_1b
        -0x3579d363 -> :sswitch_1a
        -0x32af50b5 -> :sswitch_19
        -0x1ff8aeac -> :sswitch_18
        -0x1403c3d1 -> :sswitch_17
        -0x12884130 -> :sswitch_16
        -0x11b7155a -> :sswitch_15
        -0x102a61a6 -> :sswitch_14
        -0x8bc7263 -> :sswitch_13
        -0x307ebcf -> :sswitch_12
        -0x25d6108 -> :sswitch_11
        0x2431a3 -> :sswitch_10
        0x2b95f4b5 -> :sswitch_f
        0x2e85dcbc -> :sswitch_e
        0x341866d3 -> :sswitch_d
        0x35532ea7 -> :sswitch_c
        0x36aaa8f8 -> :sswitch_b
        0x3ad8a2a3 -> :sswitch_a
        0x3e8271ec -> :sswitch_9
        0x3f0b1471 -> :sswitch_8
        0x4a977d13 -> :sswitch_7
        0x5514d1b5 -> :sswitch_6
        0x55d54f59 -> :sswitch_5
        0x6202ad75 -> :sswitch_4
        0x62f067e6 -> :sswitch_3
        0x6372c8c5 -> :sswitch_2
        0x65e369e1 -> :sswitch_1
        0x73f08a21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isBeautyBodyOn()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    if-gtz v0, :cond_1

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isBeautyLevelOn()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    const-string v0, "i:0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isBeautyModelOn()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    if-eqz v0, :cond_0

    if-nez v0, :cond_4

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    if-eqz v0, :cond_1

    if-nez v0, :cond_4

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    if-eqz v0, :cond_2

    if-nez v0, :cond_4

    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    if-gtz v0, :cond_4

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    if-lez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFaceBeautyOn()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isBeautyLevelOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isSmoothLevelOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isBeautyModelOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isFrontMakeUpsOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isBeautyBodyOn()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFrontMakeUpsOn()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSmoothLevelOn()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetAll()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyLevel()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetSmoothLevel()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyModelLegacy()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyModel()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyBody()V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetBeautyModeAndSwitch()V

    return-void
.end method

.method public resetBeautyBody()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    .line 6
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    return-void
.end method

.method public resetBeautyLevel()V
    .locals 1

    const-string v0, "i:0"

    .line 1
    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    return-void
.end method

.method public resetBeautyModeAndSwitch()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mMaleMakeupSwitch:I

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mNevusWipeSwitch:I

    return-void
.end method

.method public resetBeautyModel()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    .line 6
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    .line 7
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    .line 8
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    .line 9
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    .line 10
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    .line 11
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    .line 12
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    .line 13
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    .line 14
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    .line 15
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    .line 16
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadNarrow:I

    .line 17
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyCheekBone:I

    .line 18
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyJaw:I

    .line 19
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyTemple:I

    .line 20
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNoseTip:I

    return-void
.end method

.method public resetBeautyModelLegacy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    return-void
.end method

.method public resetSmoothLevel()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oo()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    aput-object v7, v1, v6

    iget v6, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    .line 3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    iget v5, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    iget v4, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "beauty level: %s | sc: %d | sf: %d | ss: %d | ee: %d "

    .line 4
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v7, 0x19

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    aput-object v8, v7, v6

    iget v6, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    .line 6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    iget v5, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    iget v4, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    iget v3, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xa

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xe

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xf

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x10

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x12

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x13

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x14

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x15

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x16

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x17

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x18

    iget p0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup2Filter:I

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v1

    const-string p0, "3d beauty level: %s | ss: %d |sf: %d | ee: %d | ns: %d | rs: %d | lp: %d | cn: %d | nk: %d | se: %d | sn: %d | hl: %d | solid: %d | whiten: %d | makeup: %d| headSlim: %d | bodySlim: %d | shoulderSlim: %d | legSlim: %d | wholeBodySlim: %d | buttSlim: %d | makeupType: %d | makeupLevel: %d | beautyMode: %d"

    .line 10
    invoke-static {v0, p0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
