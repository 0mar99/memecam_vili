.class public Lcom/mi/device/Opal;
.super Lcom/mi/device/Evergreen;
.source "Opal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mi/device/Evergreen;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0OO()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    const-string v1, "REDMI"

    const-string v2, "NOTE 11S 5G"

    .line 2
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public Oooo()Ljava/lang/String;
    .locals 0

    const-string p0, "v2"

    return-object p0
.end method

.method public o00000OO()I
    .locals 0

    const p0, 0x7270e0

    return p0
.end method

.method public o0000oOo()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0:2.0"

    return-object p0
.end method

.method public o000o00o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OO0oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00Ooo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o000O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oO0o()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public o00oo000()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O00Oo()Ljava/lang/String;
    .locals 0

    const-string p0, "macro:pro:ULTRA_WIDE:capture_intent"

    return-object p0
.end method

.method public o0O0oOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo0oOOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo0ooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
