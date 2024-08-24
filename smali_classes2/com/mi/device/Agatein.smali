.class public Lcom/mi/device/Agatein;
.super Lcom/mi/device/Agate;
.source "Agatein.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mi/device/Agate;-><init>()V

    return-void
.end method


# virtual methods
.method public Oooo0()[I
    .locals 0

    const/16 p0, 0xa

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x400000
        0x1e8480
        0x400100
        0x27ac40
        0x400200
        0x2dc6c0
        0x1000000
        0x0
        0xc00000
        0x0
    .end array-data
.end method

.method public o0000O0()Ljava/lang/String;
    .locals 0

    const-string p0, "3:12000x9000"

    return-object p0
.end method

.method public o00ooo0O()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method
