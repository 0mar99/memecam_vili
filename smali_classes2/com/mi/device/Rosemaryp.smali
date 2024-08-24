.class public Lcom/mi/device/Rosemaryp;
.super Lcom/mi/device/Rosemary;
.source "Rosemaryp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mi/device/Rosemary;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0OO()Landroid/util/SparseArray;
    .locals 2
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

    const-string v0, "POCO"

    const-string v1, "M5s"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public OoooO0O()Ljava/lang/String;
    .locals 0

    const-string p0, "16x9"

    return-object p0
.end method

.method public o000O0o()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public o00O0ooo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OO00O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OOOO0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OoOo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0OOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0Oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
