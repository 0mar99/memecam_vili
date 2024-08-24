.class public Lcom/mi/device/Odin;
.super Lcom/mi/device/Common;
.source "Odin.java"


# static fields
.field public static final OooO0OO:[I

.field public static final OooO0Oo:[I

.field public static final OooO0o0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/mi/device/Odin;->OooO0OO:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/mi/device/Odin;->OooO0Oo:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lcom/mi/device/Odin;->OooO0o0:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x24
        -0x18
        -0x9
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1b
        -0xc
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        -0xc
        -0x18
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mi/device/Common;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public OooO00o(II)Z
    .locals 0

    const/16 p0, 0x8

    if-ne p1, p0, :cond_0

    const/16 p0, 0x3c

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public OooO00o(Z)[I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p0, Lcom/mi/device/Odin;->OooO0OO:[I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/mi/device/Odin;->OooO0Oo:[I

    :goto_0
    return-object p0
.end method

.method public OooO0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 0

    const-string p0, "1"

    return-object p0
.end method

.method public OooO0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooO0oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOOOo()Ljava/lang/String;
    .locals 0

    const-string p0, "notelemfnr:1;telesr:1"

    return-object p0
.end method

.method public OooOOo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOo00()Ljava/lang/String;
    .locals 0

    const-string p0, "true:4000x3000"

    return-object p0
.end method

.method public OooOoO()I
    .locals 0

    const/16 p0, 0x14a

    return p0
.end method

.method public OooOoOO()I
    .locals 0

    const/16 p0, 0x172

    return p0
.end method

.method public OooOooo()I
    .locals 0

    const/16 p0, 0xfa0

    return p0
.end method

.method public Oooo()Ljava/lang/String;
    .locals 0

    const-string p0, "v5"

    return-object p0
.end method

.method public Oooo00o()Ljava/lang/String;
    .locals 0

    const-string p0, "3.2"

    return-object p0
.end method

.method public Oooo0o()I
    .locals 0

    const p0, 0xc96a80

    return p0
.end method

.method public Oooo0oO()Ljava/lang/String;
    .locals 0

    const-string p0, "1.50_2622"

    return-object p0
.end method

.method public OoooO()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public OoooO0O()Ljava/lang/String;
    .locals 0

    const-string p0, "20x9"

    return-object p0
.end method

.method public OoooOO0()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OoooOOO()Ljava/lang/String;
    .locals 0

    const-string p0, "0.5:uw:0.5;1:wide:1.0;2:wide:1.0;5:ut:5.0;10:ut:5.0;1:front:1.0"

    return-object p0
.end method

.method public OoooOoO()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public OooooOO()[I
    .locals 0

    .line 1
    sget-object p0, Lcom/mi/device/Odin;->OooO0o0:[I

    return-object p0
.end method

.method public Oooooo()S
    .locals 0

    .line 1
    sget-object p0, Lcom/mi/device/SlowMotionEnum;->OooO0O0:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result p0

    return p0
.end method

.method public Ooooooo()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00000()F
    .locals 0

    const p0, 0x3f6f6e7f

    return p0
.end method

.method public o00000O0()I
    .locals 0

    const/16 p0, 0x13b

    return p0
.end method

.method public o00000OO()I
    .locals 0

    const p0, 0x1312d00

    return p0
.end method

.method public o0000O()Ljava/lang/String;
    .locals 0

    const-string p0, "1:8000x6000"

    return-object p0
.end method

.method public o0000O0()Ljava/lang/String;
    .locals 0

    const-string p0, "3:12032x9024"

    return-object p0
.end method

.method public o0000O00()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o0000OOO()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public o0000Ooo()F
    .locals 0

    const p0, 0x3fa66666    # 1.3f

    return p0
.end method

.method public o0000oo()S
    .locals 0

    .line 1
    sget-object p0, Lcom/mi/device/SlowMotionEnum;->OooO0o0:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result p0

    return p0
.end method

.method public o0000ooO()[Ljava/lang/String;
    .locals 1

    const-string p0, "5:20:30:40:50:60"

    const-string v0, "3:10:10:10:10"

    .line 1
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o000O()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000O0()I
    .locals 0

    const/16 p0, 0x1780

    return p0
.end method

.method public o000O00()Ljava/lang/String;
    .locals 0

    const-string p0, "capture_inner:0.5:1:2:5:10:120;capture_ruler:5:5:10:5:11;video_inner:0.5:1:2:5:10:15;video_ruler:5:10:10:5:10"

    return-object p0
.end method

.method public o000O0O()Ljava/lang/String;
    .locals 0

    const-string p0, "capture:0.5:1.0:5.0;video:0.5:1.0:5.0;pixel:0.5:1:2;supernight:0.5:1.0:5.0"

    return-object p0
.end method

.method public o000O0O0()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000O0Oo()I
    .locals 0

    const/16 p0, 0x1780

    return p0
.end method

.method public o000O0o()Ljava/lang/String;
    .locals 0

    const-string p0, "sat"

    return-object p0
.end method

.method public o000O0oo()Ljava/lang/String;
    .locals 0

    const-string p0, "3"

    return-object p0
.end method

.method public o000OO()Ljava/lang/String;
    .locals 0

    const-string p0, "1:8000x6000"

    return-object p0
.end method

.method public o000OO0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000Oo0()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o000Oo0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000OoOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000Ooo()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o000Ooo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000OooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000oOoO()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o000oo0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000ooO0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O000o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O00oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0O0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00O0O0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00O0OO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0OOO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00O0Oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0o00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0o0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0o0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0oOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOO00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0()F
    .locals 0

    const p0, 0x3ba3d70a    # 0.005f

    return p0
.end method

.method public o00Oo00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoO0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OoOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoOOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoOOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoOo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Ooo()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o00OooO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o00()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o000O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o000o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o00O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o00Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o00oO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o00oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0O00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0OO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0OOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0o00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0o0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o0o0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0oO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0oOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0oOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o0oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oO00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oO0O0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOOOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOOo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOo0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOoOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOoOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oo000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oo0OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oo0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oo0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oo0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooOo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooo()Ljava/lang/String;
    .locals 0

    const-string p0, "90,60"

    return-object p0
.end method

.method public o00ooo0O()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o00ooooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0000O()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o0O000Oo()I
    .locals 0

    const/16 p0, 0xa0

    return p0
.end method

.method public o0O000o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00O0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00OOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00Oo()Ljava/lang/String;
    .locals 0

    const-string p0, "macro:capture_intent:ultra_wide:pro"

    return-object p0
.end method

.method public o0O00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00o00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0O0oO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0O0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OOO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0OOo()Ljava/lang/String;
    .locals 0

    const-string p0, "wide"

    return-object p0
.end method

.method public o0O0OOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0Oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0Oo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OoO()Ljava/lang/String;
    .locals 0

    const-string p0, "ultra_wide:tele"

    return-object p0
.end method

.method public o0O0Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0Ooo0()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o0O0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oO0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oOo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0ooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0ooO0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0oooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO000o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OOO0o()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x780
        0x438
    .end array-data
.end method

.method public o0Oo0oo()F
    .locals 0

    const/high16 p0, 0x41200000    # 10.0f

    return p0
.end method

.method public o0OoO00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OoO0o()I
    .locals 0

    const/16 p0, 0x1780

    return p0
.end method

.method public o0OoOoOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OoOoOo()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public o0OooO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0o0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0oO0Ooo()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public o0oOOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0oOo0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0ooOOo()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public o0ooOoO()I
    .locals 0

    const/16 p0, 0x23

    return p0
.end method

.method public oo00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo0o0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo0o0Oo()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public oo0oOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo0ooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public ooOO()Ljava/lang/String;
    .locals 0

    const-string p0, "auto"

    return-object p0
.end method

.method public oooo00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
